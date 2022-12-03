local appName, JDT = ...
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceDBOptions = LibStub("AceDBOptions-3.0")
local SharedMedia = LibStub("LibSharedMedia-3.0") 
---@class MyAddon : AceAddon-3.0, AceConsole-3.0, AceConfig-3.0, AceGUI-3.0, AceConfigDialog-3.0
local DungeonAuraTools = LibStub("AceAddon-3.0"):NewAddon("DungeonAuraTools", "AceConsole-3.0", "AceEvent-3.0")
JDT.AddonVersion = GetAddOnMetadata(appName, "Version")
JDT.InternalWaVersion = 60 -- version of weakauras addon on creation might need to be updated eventually

JDT.FontMedias = JDT.FontMedias or {} 
for _,v in pairs(SharedMedia:List(SharedMedia.MediaType.FONT)) do
    JDT.FontMedias[v] = v
end


function DungeonAuraTools:OnInitialize()
	-- Called when the addon is loaded
    self:Print(JDT.getLocalisation("AccessOptionsMessage"))
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("CHAT_MSG_ADDON")




    local DatatoPersist = {
        profile = {
            data = JDT.SpellList
        }
    }
    JDT.db = LibStub("AceDB-3.0"):New("DungeonAuraTools",DatatoPersist, true) -- Generates Saved Variables with default Values (if they don't already exist)
    local OptionTable = {
        type = "group",
        args = {
            profile = AceDBOptions:GetOptionsTable(JDT.db),
            rest = JDT.options
    }}
    AceConfig:RegisterOptionsTable(appName,OptionTable) -- 
    AceConfigDialog:AddToBlizOptions(appName, appName)
    self:RegisterChatCommand("jdt", "SlashCommand")
	self:RegisterChatCommand("Jdt", "SlashCommand")
    self:RegisterChatCommand("DAT", "SlashCommand")
    self:RegisterChatCommand("Dat", "SlashCommand")
    self:RegisterChatCommand("dat", "SlashCommand")
    self:RegisterChatCommand("DungeonAuraTools", "SlashCommand")
  -- generates Data for Options Table
    function JDT.CreateOptionsFrame () 
        AceConfigDialog:Open(appName)
    end
    

    function JDT.CheckIfAuraUpdates () 
        local AuraCount = 0
      

        -- don't use before read only or spaten will haunt my dreams WeakAuras.GetData("DungeonAuras_MistOfPandaria")
        local AuraUpdatesCount = 0
        local AuraUpdatesTable = {}
        for ExpansionKey, ExpansionValue in pairs(JDT.db.profile.data) do
                    if not (WeakAuras.GetData("DungeonAuras_"..ExpansionKey)) then
                        if ExpansionKey ~= "Affixes" then
                            for DungeonKey,DungeonValue in pairs(ExpansionValue.Dungeons) do 
                                for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do  
                                        for TypeKey,TypeValue in pairs(BossNameValue.Auras) do
                                            for k,v in pairs(TypeValue) do 
                                                if v.enabled == true  then
                                                    AuraCount = AuraCount + 1 
                                                end
                                            end
                                        end
                                    end
                                end
                        else
                            for TypeKey,TypeValue in pairs(ExpansionValue.Auras) do
                                for k,v in pairs(TypeValue) do 
                                    if v.enabled == true then
                                        AuraCount = AuraCount + 1        
                                    end
                                end 
                            end
                        end 
                       
                                                    
                    else
                        local ExportTable = CopyTable(JDT.DataToExport)
                        ExportTable.d = CopyTable(JDT.Templates.DynamicGroup)
                        ExpansionValue.id = "DungeonAuras_"..ExpansionKey-- AuraName
                        ExpansionValue.uid  = "DungeonAuras_"..ExpansionKey.."UID" --AuraUniqueId
                        ExportTable.d.id = ExpansionValue.id
                        ExportTable.d.uid = ExpansionValue.uid 
                        if JDT.db.profile.GroupLimit then
                            ExportTable.d.limit = JDT.db.profile.GroupLimit
                        end
                        if JDT.db.profile.GroupGrow then
                            ExportTable.d.grow = JDT.db.profile.GroupGrow
                            if JDT.db.profile.GroupGrow == "GRID" then
                                ExportTable.d.gridType = JDT.db.profile.GridDirection
                                ExportTable.d.gridWidth = JDT.db.profile.GridSize
                                ExportTable.d.rowSpace = JDT.db.profile.GridRowSpacing
                                ExportTable.d.columnSpace = JDT.db.profile.GridColumnnSpacing
                            else
                                ExportTable.d.align = JDT.db.profile.AlignDirection
                                ExportTable.d.stagger = JDT.db.profile.GrowStagger
                                ExportTable.d.space = JDT.db.profile.GrowSpace
                            end
                        end
                        if JDT.db.profile.AnchorGroupsToAffixes and ExpansionKey ~= "Affixes" then
                            ExportTable.d.xOffset = 0
                            ExportTable.d.yOffset = 0
                            ExportTable.d.anchorFrameFrame = "WeakAuras:".."DungeonAuras_Affixes"
                            ExportTable.d.anchorFrameParent = false
                            ExportTable.d.anchorFrameType = "SELECTFRAME"
                            ExportTable.d.anchorPoint = "TOPRIGHT"
                        else
                        ExportTable.d.xOffset  = JDT.db.profile.xOffset
                        ExportTable.d.yOffset = JDT.db.profile.yOffset
                        ExportTable.d.url = JDT.ExpansionValues[ExpansionKey]
                        end
                        if ExpansionKey ~= "Affixes" then
                            for DungeonKey,DungeonValue in pairs(ExpansionValue.Dungeons) do 

                                for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do  

                                        for TypeKey,TypeValue in pairs(BossNameValue.Auras) do
                                            for k,v in pairs(TypeValue) do 
                                                if not v.triggerData then -- check if aura was moved to a different grouptype
                                                AuraUpdatesCount = AuraUpdatesCount +1 
                                                JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[TypeKey][k] = nil
                                                self:Print("Removed Aura "..k.." from "..BossNameKey.." in "..DungeonKey.." in "..ExpansionKey.. "please Reload to fix Potential Import Problems")                         
                               
                                                else  
                                                        local AuraToCheck = JDT.buildAura(ExportTable,DungeonValue,BossNameValue,TypeKey,v,ExpansionValue,ExpansionKey)  
                                                        local InstalledAura = WeakAuras.GetData(AuraToCheck.id)
                                                    if v.enabled == true then 
                                                        if AuraToCheck and InstalledAura then 
                                                            if AuraToCheck.preferToUpdate ~= InstalledAura.preferToUpdate then -- adjust this value if needed (no idea what this value actually does though)
                                                            AuraToCheck.preferToUpdate = InstalledAura.preferToUpdate
                                                            end
                                                            if AuraToCheck.version ~= InstalledAura.version then -- adjust this value if needed 
                                                                AuraToCheck.version = InstalledAura.version
                                                            end
                                                            if AuraToCheck.url ~= InstalledAura.url then -- adjust this value if needed 
                                                                AuraToCheck.url = InstalledAura.url
                                                            end
                                                            if AuraToCheck.semver ~= InstalledAura.semver then -- adjust this value if needed 
                                                                AuraToCheck.semver = InstalledAura.semver
                                                            end
                                                            if AuraToCheck.internalVersion ~= InstalledAura.internalVersion then -- Warn if there is a version mismatch
                                                                self:Print(JDT.getLocalisation("internalVersionMismatch"))
                                                            end
                                                        end
                                                        if not InstalledAura or tCompare(AuraToCheck, InstalledAura , 10) ~= true then
                                                            
                                                            if JDT.db.profile.DebugMode == true then
                                                                print(AuraToCheck.id)
                                                                    local function findOutDifferenceBetweenTwoTables(table1, table2)
                                                                        local difference = {}
                                                                        if table1 then
                                                                            for k, v in pairs(table1) do
                                                                                if not table2 or table2[k] == nil then
                                                                                    difference[k] = v
                                                                                elseif type(v) == "table" and type(table2[k]) == "table" then
                                                                                    local sub_diff = findOutDifferenceBetweenTwoTables(v, table2[k])
                                                                                    if next(sub_diff) ~= nil then
                                                                                        difference[k] = sub_diff
                                                                                    end
                                                                                elseif v ~= table2[k] then
                                                                                    difference[k] = v
                                                                                end
                                                                            end
                                                                        end
                                                                        local difference2 = {}
                                                                        if table2 then
                                                                            for k, v in pairs(table2) do
                                                                                if table1[k] == nil then
                                                                                    difference2[k] = v
                                                                                elseif type(v) == "table" and type(table1[k]) == "table" then
                                                                                    local sub_diff = findOutDifferenceBetweenTwoTables(v, table1[k])
                                                                                    if next(sub_diff) ~= nil then
                                                                                        difference2[k] = sub_diff
                                                                                    end
                                                                                elseif v ~= table1[k] then
                                                                                    difference2[k] = v
                                                                                end
                                                                            end
                                                                        end
                                                                        return difference,difference2
                                                                    end
                                                                    --[[
                                                                    local CompareData ={}
                                                                    CompareData.AuraToCheck = AuraToCheck
                                                                    CompareData.InstalledAura = InstalledAura
                                                                
                                                                    ViragDevTool_AddData(AuraToCheck, "AuraToCheck")
                                                                    ViragDevTool_AddData(InstalledAura, "InstalledAura")
                                                                    ViragDevTool_AddData(difference, "difference1")
                                                                    ViragDevTool_AddData(difference2, "difference2")
                                                                    JDT.db.profile.testing = CompareData 
                                                                    ]]
                                                                    local difference,difference2 = findOutDifferenceBetweenTwoTables(AuraToCheck, InstalledAura)
                                                                    
                                                                    DevTools_Dump(difference)
                                                                    DevTools_Dump(difference2)
                                                            end
                                                            AuraUpdatesCount = AuraUpdatesCount +1 
                                                            AuraUpdatesTable[ExpansionKey] = true
                                                        end
                                                    elseif v.enabled == false and InstalledAura then 
                                                        AuraUpdatesCount = AuraUpdatesCount +1 
                                                        AuraUpdatesTable[ExpansionKey] = true
                                                    end
                                            end
                                      
                                    end
                                end
                            end
                        end
                        
                        else
                            for TypeKey,TypeValue in pairs(ExpansionValue.Auras) do
                                for k,v in pairs(TypeValue) do 
                                    local AuraToCheck = JDT.buildAura(ExportTable,{groupName= ExpansionValue.groupName},{additionalName = ""},TypeKey,v,ExpansionValue,ExpansionKey)
                                    local InstalledAura = WeakAuras.GetData(AuraToCheck.id)
                                    if v.enabled == true then
                                        
                                        if AuraToCheck and InstalledAura then 
                                            if AuraToCheck.preferToUpdate ~= InstalledAura.preferToUpdate then -- adjust this value if needed (no idea what this value actually does though)
                                            AuraToCheck.preferToUpdate = InstalledAura.preferToUpdate
                                            end
                                            if AuraToCheck.version ~= InstalledAura.version then -- adjust this value if needed 
                                                AuraToCheck.version = InstalledAura.version
                                            end
                                            if AuraToCheck.url ~= InstalledAura.url then -- adjust this value if needed 
                                                AuraToCheck.url = InstalledAura.url
                                            end
                                            if AuraToCheck.semver ~= InstalledAura.semver then -- adjust this value if needed 
                                                AuraToCheck.semver = InstalledAura.semver
                                            end
                                        end
                                        if not InstalledAura or tCompare(AuraToCheck, InstalledAura , 10) ~= true then             
                                            --print(AuraToCheck.id)
                                            AuraUpdatesCount = AuraUpdatesCount +1  
                                            AuraUpdatesTable[ExpansionKey] = true
                                        end  
                                    elseif v.enabled == false and InstalledAura then 
                                        AuraUpdatesCount = AuraUpdatesCount +1 
                                        AuraUpdatesTable[ExpansionKey] = true     
                                    end
                                    
                                end 
                            end
                        end 
                    end

        end
        if AuraCount  > 0 then
            self:Print(AuraCount.." "..JDT.getLocalisation("NewAurasAddedMessage"))
        end
        if AuraUpdatesCount  > 0 then
            JDT.exportCompanion(AuraUpdatesTable)
            self:Print(AuraUpdatesCount.." "..JDT.getLocalisation("AurasUpdatesMessage"))

        end
        

    end
end




function DungeonAuraTools:OnEnable()
	-- Called when the addon is enabled
end

function DungeonAuraTools:OnDisable()
	-- Called when the addon is disabled
end

local VersionCheckPrefix = "DAT_VERSION"
local function sendVersion ()
			if IsInRaid() then
				C_ChatInfo.SendAddonMessage(VersionCheckPrefix, JDT.AddonVersion, (not IsInRaid(LE_PARTY_CATEGORY_HOME) and IsInRaid(LE_PARTY_CATEGORY_INSTANCE)) and "INSTANCE_CHAT" or "RAID")
			elseif IsInGroup() then
				C_ChatInfo.SendAddonMessage(VersionCheckPrefix, JDT.AddonVersion, (not IsInGroup(LE_PARTY_CATEGORY_HOME) and IsInGroup(LE_PARTY_CATEGORY_INSTANCE)) and "INSTANCE_CHAT" or "PARTY")
			elseif IsInGuild() then
				C_ChatInfo.SendAddonMessage(VersionCheckPrefix, JDT.AddonVersion, "GUILD")
			end
end
function DungeonAuraTools:SlashCommand(msg) -- called when slash command is used
    if msg == "export" then
        JDT.exportAuras()
    else
    JDT.CreateOptionsFrame() 
    end
end

function DungeonAuraTools:PLAYER_ENTERING_WORLD(event, isLogin, isReload)
    if isLogin == true or isReload == true then
    JDT.createOptionsData() 
    JDT.CheckIfAuraUpdates()
    end
    C_ChatInfo.RegisterAddonMessagePrefix(VersionCheckPrefix)
    local name,realm = UnitFullName("player")
    JDT.PlayerName = name.."-"..realm
    sendVersion ()
end
function DungeonAuraTools:CHAT_MSG_ADDON(event, prefix, version , channel, sender, target, zoneChannelID, localID, name, instanceID)
    if prefix == VersionCheckPrefix and sender == JDT.PlayerName then
        if version and version > JDT.AddonVersion then
            self:Print(JDT.getLocalisation("VersionCheckMessage"))
        end
    end 
end