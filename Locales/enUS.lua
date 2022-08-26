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
LocalisationData["DanceOrSoakIfDebuff"] = "Dance with Soak mechanic"
LocalisationData["CastIntoCastSuccessDance"] = "Dance"
LocalisationData["BreakShieldIntoInterrupt"] = "Interupt after Shieldbreak"
LocalisationData["ChainToKill"] = "Chain that roots until killed"
LocalisationData["UnavoidableAoe"] = "Unavoidable AoE Damage"
LocalisationData["BossCastIntoStack"] = "Stack Mechanic"
LocalisationData["VoidSoak"] = "Void Soaks"
LocalisationData["InterruptableTargetedCast"] = "Targeted Cast (Interuptable)"
LocalisationData["TargetedCast"] = "Targeted Cast (not Interuptable)"
LocalisationData["DmgBuff"] = "Damage Buffs"
LocalisationData["HasteBuff"] = "Haste Buffs"
LocalisationData["InterruptableSuppresion"] = "Suppression (Interuptable)"
LocalisationData["InterruptableKickStomp"] = "Aoe Stomp that kicks (Interuptable)"
LocalisationData["RoomSplit"] = "Splitting the Room" 
LocalisationData["KickOrDie"] = "Important Interupt (will kill you if missed)" 

-- Dungeon Data
LocalisationData["Tazavesh"] = "Tazavesh, the Veiled Market"
LocalisationData["Tazavesh.boss1"] = "Zo'phex the Sentinel"
LocalisationData["Tazavesh.boss2"] = "The Grand Menagerie"
LocalisationData["Tazavesh.boss3"]= "Mailroom Mayhem" 
LocalisationData["Tazavesh.boss4"]= "Myza's Oasis" 
LocalisationData["Tazavesh.boss5"]= "So'azmi" 


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
LocalisationData["AoE"] = "AoE"
LocalisationData["Stack"] = "Stack"
LocalisationData["Soak Void"] = "Soak Void"
LocalisationData["Dispose"] = "Dispose"
LocalisationData["+ Haste"] = "+ Haste"
LocalisationData["+ dmg"] = "+ dmg"
LocalisationData["targeted"] = "targeted"
LocalisationData["Suppress"] = "Suppress"
LocalisationData["AoE+Kick"] = "AoE+Kick"
LocalisationData["Splitting"] = "Splitting"

--[[ 
    LocalisationData[""] = ""
]]

JDT.localisation = LocalisationData
end