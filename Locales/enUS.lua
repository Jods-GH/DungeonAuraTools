local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
local LocalisationData = AceLocale:NewLocale(appName, "enUS",true)

if LocalisationData then

LocalisationData["Enable"] = "Enable"
LocalisationData["EnableDescription"] = "enables / disables the Addon"
LocalisationData["GeneralOptions"] = "General Options"
LocalisationData["SpellOptions"] = "Spell Options"
LocalisationData["Debuffs"] = "Debuffs"
LocalisationData["Aoe"] = "Aoe"

-- LocalisationData[""] =



JDT.localisation = LocalisationData
end