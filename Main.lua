local appName, JDT = ...
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceDBOptions = LibStub("AceDBOptions-3.0")
local SharedMedia = LibStub("LibSharedMedia-3.0") 
---@class MyAddon : AceAddon-3.0, AceConsole-3.0, AceConfig-3.0, AceGUI-3.0, AceConfigDialog-3.0
local DungeonAuraTools = LibStub("AceAddon-3.0"):NewAddon("DungeonAuraTools", "AceConsole-3.0", "AceEvent-3.0")
JDT.AddonVersion = GetAddOnMetadata(appName, "Version")
JDT.InternalWaVersion = 65 -- version of weakauras addon on creation might need to be updated eventually

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
    if prefix == VersionCheckPrefix and sender == JDT.PlayerName then
        if version and version > JDT.AddonVersion then
            self:Print(JDT.getLocalisation("VersionCheckMessage"))
        end
    end 
end