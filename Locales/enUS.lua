local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
---@class MyAddonLocale
local LocalisationData = AceLocale:NewLocale(appName, "enUS",true)

if LocalisationData then

LocalisationData["Enable"] = "Enable"
LocalisationData["EnableDescription"] = "enables / disables the Addon"
LocalisationData["GeneralOptions"] = "General Options"
LocalisationData["SpellOptions"] = "Spell Options"

-- Aura Types
LocalisationData["SpinToWin"] = "Spin AoEs"
LocalisationData["PlayerGroupDebuffSpread"] = "Spreads"
LocalisationData["CastIntoPlayerGroupDebuffSpread"] = "Spreads after Cast"
LocalisationData["ShieldInc"] = "Shields"
LocalisationData["EnergyTrackSoonCast"] = "Boss Energy Tracker"
LocalisationData["BossCastIntoBuff"] = "Boss Buffs"
LocalisationData["BossCastIntoCollect"] = "Collects"
LocalisationData["CollectBuff"] = "Collect Buffs"
LocalisationData["RunOut"] = " Whirlwind AoEs"
LocalisationData["Dance"] = "Dance"
LocalisationData["BreakShieldIntoInterrupt"] = "Interupt after Shieldbreak"
LocalisationData["DanceOrSoakIfDebuff"] = "Dance with Soak mechanic"
LocalisationData["ChainToKill"] = "Chain that roots until killed"

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
LocalisationData["Spread inc"] = "Spread Inc"
LocalisationData["Spread"] = "Spread"
LocalisationData["Buffing"] = "Buffing"
LocalisationData["Buffed"] = "Buffed"
LocalisationData["Collect inc"] = "Collect inc"
LocalisationData["Collect"] = "Collect"
LocalisationData["on"] = "On"
LocalisationData["Run Out"] = "Run Out"
LocalisationData["Break shield"] = "Break Shield"
LocalisationData["Interrupt"] = "Interrupt"
LocalisationData["Soak"] = "Soak"
LocalisationData["Chain inc"] = "Chain inc"
LocalisationData["kill Chain"] = "kill Chain"

-- LocalisationData[""] =



JDT.localisation = LocalisationData
end