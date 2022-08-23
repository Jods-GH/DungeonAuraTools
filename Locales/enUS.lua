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
LocalisationData["ShieldInc"] = "Shields"
LocalisationData["EnergyTrackSoonCast"] = "Boss Energy Tracker"
LocalisationData["BossCastIntoBuff"] = "Boss Buffs"
LocalisationData["BossCastIntoCollect"] = "Collects"
LocalisationData["CollectBuff"] = "Collect Buffs"

-- Dungeon Data
LocalisationData["Tazavesh"] = "Tazavesh, the Veiled Market"
LocalisationData["Tazavesh.boss1"] = "Zo'phex the Sentinel"
LocalisationData["Tazavesh.boss2"] = "The Grand Menagerie"


-- TextBelowAura Data
LocalisationData["Soon"] = "Soon"
LocalisationData["Dot"] = "Dot"
LocalisationData["Frontal"] = "Frontal"
LocalisationData["Spin"] = "Spin"
LocalisationData["Shield inc"] = "Shield inc"
LocalisationData["Spread"] = "Spread"
LocalisationData["Buffing"] = "Buffing"
LocalisationData["Buffed"] = "Buffed"
LocalisationData["Collect inc"] = "Collect inc"
LocalisationData["Collect"] = "Collect"
LocalisationData["on"] = "On"


-- LocalisationData[""] =



JDT.localisation = LocalisationData
end