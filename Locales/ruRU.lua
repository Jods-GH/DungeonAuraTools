local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
local L = AceLocale:NewLocale(appName, "ruRU")

if L then


-- LocalisationData[""] =
--@localization(locale="ruRU", format="lua_additive_table", handle-subnamespaces="concat")@


JDT.localisation = L
end