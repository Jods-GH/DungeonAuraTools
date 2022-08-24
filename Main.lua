local appName, JDT = ...
local AceGUI = LibStub("AceGUI-3.0")
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceDBOptions = LibStub("AceDBOptions-3.0")
---@class MyAddon : AceAddon-3.0, AceConsole-3.0
local DungeonAuraTools = LibStub("AceAddon-3.0"):NewAddon("DungeonAuraTools", "AceConsole-3.0")

function DungeonAuraTools:OnInitialize()
	-- Called when the addon is loaded
	self:Print("Access the options via /jdt")

    local DatatoPersist = {
        profile = JDT.SpellList
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
    self:RegisterChatCommand("DungeonAuraTools", "SlashCommand")

    JDT.createOptionsData()   -- generates Data for Options Table

    function JDT.CreateOptionsFrame () 
        AceConfigDialog:Open(appName)
    end
end

function DungeonAuraTools:OnEnable()
	-- Called when the addon is enabled
end

function DungeonAuraTools:OnDisable()
	-- Called when the addon is disabled
end


function DungeonAuraTools:SlashCommand(msg) -- called when slash command is used
    JDT.CreateOptionsFrame() 
end