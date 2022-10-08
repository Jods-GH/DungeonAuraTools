local appName, JDT = ...
local AceGUI = LibStub("AceGUI-3.0")
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceDBOptions = LibStub("AceDBOptions-3.0")
---@class MyAddon : AceAddon-3.0, AceConsole-3.0, AceConfig-3.0, AceGUI-3.0, AceConfigDialog-3.0
local DungeonAuraTools = LibStub("AceAddon-3.0"):NewAddon("DungeonAuraTools", "AceConsole-3.0", "AceEvent-3.0")
JDT.AddonVersion = GetAddOnMetadata(appName, "Version")

function DungeonAuraTools:OnInitialize()
	-- Called when the addon is loaded
	self:Print(JDT.getLocalisation("AccessOptionsMessage"))
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("CHAT_MSG_ADDON")

    local DatatoPersist = {
        profile = {
            ShowTimer = true,
            PlaySound = true,
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
        for ExpansionKey, ExpansionValue in pairs(JDT.db.profile.data) do
            for DungeonKey,DungeonValue in pairs(ExpansionValue.Dungeons) do 
                for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do  
                        for TypeKey,TypeValue in pairs(BossNameValue.Auras) do
                            for k,v in pairs(TypeValue) do 
                                if v.enabled == true and not v.uID then
                                    self:Print(JDT.getLocalisation("NewAurasAddedMessage"))
                                end
                        end
                    end
                end
            end
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