local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
local LocalisationData = AceLocale:NewLocale(appName, "deDE")

if LocalisationData then


-- LocalisationData[""] =



JDT.localisation = LocalisationData
end