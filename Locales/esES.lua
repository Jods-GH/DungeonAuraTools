local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
local L = AceLocale:NewLocale(appName, "esES")

if L then


-- LocalisationData[""] =
--@localization(locale="esES", format="lua_additive_table", handle-subnamespaces="concat")@


JDT.localisation = L
end