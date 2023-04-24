local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
local L = AceLocale:NewLocale(appName, "zhCN")

if L then


-- LocalisationData[""] =
--@localization(locale="zhCN", format="lua_additive_table", handle-subnamespaces="concat")@


JDT.localisation = L
end