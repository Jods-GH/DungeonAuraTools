local appName, JDT = ...
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceDBOptions = LibStub("AceDBOptions-3.0")
local SharedMedia = LibStub("LibSharedMedia-3.0") 
---@class MyAddon : AceAddon-3.0, AceConsole-3.0, AceConfig-3.0, AceGUI-3.0, AceConfigDialog-3.0
local DungeonAuraTools = LibStub("AceAddon-3.0"):NewAddon("DungeonAuraTools", "AceConsole-3.0", "AceEvent-3.0")
JDT.AddonVersion = C_AddOns.GetAddOnMetadata(appName, "Version")
JDT.InternalWaVersion = 66 -- version of weakauras addon on creation might need to be updated eventually

JDT.FontMedias = JDT.FontMedias or {} 
for _,v in pairs(SharedMedia:List(SharedMedia.MediaType.FONT)) do
    JDT.FontMedias[v] = v
end


function DungeonAuraTools:OnInitialize()
	-- Called when the addon is loaded
    self:Print(JDT.getLocalisation("AccessOptionsMessage"))
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("CHAT_MSG_ADDON")
    self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    JDT.self = self
    JDT.db = LibStub("AceDB-3.0"):New("DungeonAuraTools",JDT.OptionDefaults, true) -- Generates Saved Variables with default Values (if they don't already exist)

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
    JDT.db.profile.ToggleAnchor = false -- sets the anchor to hidden on startup
end


function DungeonAuraTools:OnEnable()
	-- Called when the addon is enabled
end

function DungeonAuraTools:OnDisable()
	-- Called when the addon is disabled
end

function JDT_AddonCompartmentFunction()
    DungeonAuraTools:SlashCommand("AddonCompartmentFrame")
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
    elseif msg == "version" then
        print(JDT.AddonVersion)
    elseif msg == "InternalVersion" then
        print(JDT.InternalWaVersion)    
    else
        JDT.CreateOptionsFrame() 
    end
end

function DungeonAuraTools:PLAYER_ENTERING_WORLD(event, isLogin, isReload)
    if isLogin == true or isReload == true then
        if isLogin == true and not IsInInstance() then
            JDT.CheckIfAuraUpdates(self)
        end
        JDT.createOptionsData() 
        C_ChatInfo.RegisterAddonMessagePrefix(VersionCheckPrefix)
        local name,realm = UnitFullName("player")
        JDT.PlayerName = name.."-"..realm
        sendVersion()
    end
    
end
function DungeonAuraTools:CHAT_MSG_ADDON(event, prefix, version , channel, sender, target, zoneChannelID, localID, name, instanceID)
    if prefix == VersionCheckPrefix and sender ~= JDT.PlayerName then
        if version and version > JDT.AddonVersion then
            self:Print(JDT.getLocalisation("VersionCheckMessage"))
            self:Print(JDT.getLocalisation("VersionDetectedMessage").." "..version)
            self:Print(JDT.getLocalisation("OwnVersionMessage").." "..JDT.AddonVersion)
        end
    end 
end

local mapidToZone = {}
for expansion in pairs(JDT.SpellList) do
    if expansion ~= "Affixes" then
        for dungeon in pairs(JDT.SpellList[expansion].Dungeons) do
            mapidToZone[JDT.SpellList[expansion].Dungeons[dungeon].zoneId] = {
                    expansion = expansion,
                    dungeon = dungeon,
                }
        end
    end
end
---Creates auras for a provided Dungeon
---@param ExpansionKey string
---@param DungeonKey string
---@return table
local CreateAurasForDungeon = function(ExpansionKey,DungeonKey)
    local ExportTable = JDT.CreateGroupToExport(DungeonKey,JDT.db.profile.data[ExpansionKey])
    for  BossNameKey, BossNameValue in pairs(JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses) do  
        for TypeKey,TypeValue in pairs(BossNameValue.Auras) do -- iterate through all selected spells and generate table accordingly
            for k,v in pairs(TypeValue) do 
                if v.enabled == true then
                    JDT.buildAura(ExportTable,JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey],BossNameValue,TypeKey,v,JDT.db.profile.data[ExpansionKey],ExpansionKey)       
                end
            end
        end
    end
    table.sort(ExportTable.c, JDT.sortExportAuraChildren)
    return ExportTable
end

function DungeonAuraTools:ZONE_CHANGED_NEW_AREA(event)
    if JDT.db.profile.ExportOnDungeonEntry then
        local mapid = C_Map.GetBestMapForUnit("player")
        if mapid then
            local mapGroupId = C_Map.GetMapGroupID(mapid)
            if mapGroupId and mapidToZone["g"..mapGroupId] and not WeakAuras.GetData("DungeonAuras_"..mapidToZone["g"..mapGroupId].dungeon) then
                    WeakAuras.Import(CreateAurasForDungeon(mapidToZone["g"..mapGroupId].expansion,mapidToZone["g"..mapGroupId].dungeon)) 
                -- ViragDevTool_AddData(JDT.SpellList[mapidToZone["g"..mapGroupId].expansion].Dungeons[mapidToZone["g"..mapGroupId].dungeon])
            elseif mapidToZone[mapid] and not WeakAuras.GetData("DungeonAuras_"..mapidToZone[mapid].dungeon) then    
                WeakAuras.Import(CreateAurasForDungeon(mapidToZone[mapid].expansion,mapidToZone[mapid].dungeon))
                -- ViragDevTool_AddData(JDT.SpellList[mapidToZone[mapid].expansion].Dungeons[mapidToZone[mapid].dungeon])
            end
        end
    end
end