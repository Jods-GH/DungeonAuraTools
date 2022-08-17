local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
local LocalisationData = AceLocale:NewLocale(appName, "deDE")

if LocalisationData then

LocalisationData["Enable"] = "Aktivieren"
LocalisationData["EnableDescription"] = "Aktiviert / Deaktiviert das Addon"
LocalisationData["GeneralOptions"] = "Allgemeine Optionen"
LocalisationData["SpellOptions"] = "Zauber Configuration"
LocalisationData["Debuffs"] = "Debuffs"
LocalisationData["Aoe"] = "Aoe"

-- LocalisationData[""] =



JDT.localisation = LocalisationData
end