local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
local LocalisationData = AceLocale:NewLocale(appName, "enUS",true)

if LocalisationData then

LocalisationData["Enable"] = "Enable"
LocalisationData["EnableDescription"] = "enables / disables the Addon"
LocalisationData["GeneralOptions"] = "General Options"
LocalisationData["SpellOptions"] = "Spell Options"

-- Aura Types
LocalisationData["SpinToWin"] = "Spins"
LocalisationData["PlayerGroupDebuffSpread"] = "Spreads"
LocalisationData["ShieldInc"] = "Shield inc"
LocalisationData["EnergyTrackSoonCast"] = "Boss Energy Tracker"

-- Dungeon Data
LocalisationData["Tazavesh"] = "Tazavesh, the Veiled Market"
LocalisationData["Tazavesh.boss1"] = "Zo'phex the Sentinel"
LocalisationData["Tazavesh.boss2"] = "The Grand Menagerie"

-- LocalisationData[""] =



JDT.localisation = LocalisationData
end