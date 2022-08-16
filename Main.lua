local appName, JDT = ...
local AceGUI = LibStub("AceGUI-3.0")
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceDBOptions = LibStub("AceDBOptions-3.0")

JodsDungeonTools = LibStub("AceAddon-3.0"):NewAddon("JodsDungeonTools", "AceConsole-3.0")

function JodsDungeonTools:OnInitialize()
	-- Called when the addon is loaded
	self:Print("Access the options via /jdt")

    local DatatoPersist = {
        profile = JDT.SpellList
    }
    JDT.db = LibStub("AceDB-3.0"):New("JodsDungeonTools",DatatoPersist, true)
    local OptionTable = {
        type = "group",
        args = {
            profile = AceDBOptions:GetOptionsTable(JDT.db),
            rest = JDT.options
    }}
    AceConfig:RegisterOptionsTable(appName,OptionTable)
    AceConfigDialog:AddToBlizOptions(appName, appName)
    self:RegisterChatCommand("jdt", "SlashCommand")
	self:RegisterChatCommand("Jdt", "SlashCommand")
    self:RegisterChatCommand("JodsDungeonTools", "SlashCommand")

    JDT.createOptionsData()   

    function JDT.CreateOptionsFrame () 
        AceConfigDialog:Open(appName)
    end
end

function JodsDungeonTools:OnEnable()
	-- Called when the addon is enabled
end

function JodsDungeonTools:OnDisable()
	-- Called when the addon is disabled
end


function JodsDungeonTools:SlashCommand(msg) -- called when slash command is used
    JDT.CreateOptionsFrame() 
end