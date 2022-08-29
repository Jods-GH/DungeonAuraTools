local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
---@class MyAddonLocale
local LocalisationData = AceLocale:NewLocale(appName, "enUS",true)

if LocalisationData then

-- Options
LocalisationData["Enable"] = "Enable"
LocalisationData["EnableDescription"] = "enables / disables the Addon"
LocalisationData["GeneralOptions"] = "General Options"
LocalisationData["SpellOptions"] = "Spell Options"
LocalisationData["Toggles all Auras for"] = "Toggles all Auras for" 
LocalisationData["Warning will overwrite all currently selected values."] = "Warning will overwrite all currently selected values."

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
LocalisationData["LaserCombatlogSuccess"] = "Laser Mechanic"
LocalisationData["MinusDmgTakenCCable"] = "Damage reduction channel (CCable)"
LocalisationData["CarryingDeBuff"] = "Debuff that needs to be Carried"
LocalisationData["KillAddChanneling"] = "Add that needs to be killed"
LocalisationData["ShockWave"] = "Shockwave mechanics"
LocalisationData["AddSummonCombatlog"] = "Summoning Adds"
LocalisationData["AddSummonCast"] = "Summoning Adds"
LocalisationData["CollapsingStar"] = "Orb Soak"
LocalisationData["InteruptableVolley"] = "Volley AoE (Interuptable)"

-- Dungeon Data
LocalisationData["Tazavesh"] = "Tazavesh, the Veiled Market"
LocalisationData["Tazavesh.boss1"] = "Zo'phex the Sentinel"
LocalisationData["Tazavesh.boss2"] = "The Grand Menagerie"
LocalisationData["Tazavesh.boss3"]= "Mailroom Mayhem" 
LocalisationData["Tazavesh.boss4"]= "Myza's Oasis" 
LocalisationData["Tazavesh.boss5"]= "So'azmi" 
LocalisationData["Tazavesh.boss6"]= "Hylbrande"
LocalisationData["Tazavesh.boss7"]= "Timecap'n Hooktail" 
LocalisationData["Tazavesh.boss8"] = "So'leah"


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
LocalisationData["Carrying"] = "Carrying"
LocalisationData["Shockwave"] = "Shockwave"
LocalisationData["Orbs"] = "Orbs"
LocalisationData["Laser"] = "Laser"
LocalisationData["- dmg"] = "- Dmg"
LocalisationData["Kill add"] = "Kill Add"
LocalisationData["Consoles"] = "Consoles"
LocalisationData["Breath"] = "Breath"
LocalisationData["Hooking"] = "Hooking"
LocalisationData["Adds"] = "Adds"
LocalisationData["Volley"] = "Volley"


--[[ 
    LocalisationData[""] = ""
]]

JDT.localisation = LocalisationData
end