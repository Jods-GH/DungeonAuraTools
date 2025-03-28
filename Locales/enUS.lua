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
LocalisationData["VersionCheckMessage"] = "A new Version is available Download it via Curseforge, WagoAddons, WoWInterface or directly on Github"
LocalisationData["VersionDetectedMessage"] = "Version Detected:"
LocalisationData["OwnVersionMessage"] = "Installed Version:"
LocalisationData["AccessOptionsMessage"] = "Access the options via /dat"
LocalisationData["PlaySound"] = "Play Sound"
LocalisationData["PlaySoundDescription"] = "Toggles whether WeakAuras should play sounds"
LocalisationData["ShowTimer"] = "Show Timer"
LocalisationData["ShowTimerDescription"] = "Toggles whether WeakAuras should display Timers (incase you don't use omnicc/Elvui Cooldown text)"
LocalisationData["xOffset"] = "xOffset"
LocalisationData["xOffsetDescription"] = "Sets the horizontal offset of the Weakaura groups according to screen size"
LocalisationData["yOffset"] = "yOffset"
LocalisationData["yOffsetDescription"] = "Sets the vertical offset of the Weakaura groups according to screen size"
LocalisationData["NewAurasAddedMessage"] = "Enabled Auras that havn't been Exported detected. Please export them via /Dat export"
LocalisationData["AurasUpdatesMessage"] = " Auras that have Updates detected. They have been send to Weakauras please import them by Opening the WeakAura option"
LocalisationData["AnchorGroupsToAffixes"] = "Anchor to Affix"
LocalisationData["AnchorGroupsToAffixesDescription"] = "Enables the Anchoring of the Expansion Groups to the Affix Group so you don't have to move them individually"
LocalisationData["GroupLimit"] = "Group Limit"
LocalisationData["GroupGrowDescription"] = "Sets the Grow type of the groups"
LocalisationData["GroupGrow"] = "Group Grow"
LocalisationData["GroupLimitDescription"] = "Sets the groups maximum amount of Auras shown at any given moment"
LocalisationData["FontOption"] = "Font Option"
LocalisationData["FontOptionDescription"] = "Sets the font of all the text elements"
LocalisationData["CooldownTextFontSizeDescription"] = "Sets the size of the Cooldown text"
LocalisationData["CooldownTextFontSize"] = "Cooldown text size"
LocalisationData["TextFontSize"] = "Text size"
LocalisationData["TextFontSizeDescription"] = "Sets the size of all the texts"
LocalisationData["HideCooldownText"] = "Hide CD"
LocalisationData["HideCooldownTextDescription"] = "Hides blizzard cooldown numbers and CD displayed by ELVUI or OmniCC"
LocalisationData["GroupOptions"] = "Group options"
LocalisationData["AuraOptions"] = "Aura options"
LocalisationData["IconWidth"] = "Icon width"
LocalisationData["IconWidthDescription"] = "Sets the width of the Icon"
LocalisationData["IconHeight"] = "Icon height"
LocalisationData["IconHeightDescription"] = "Sets the height of the Icon"
LocalisationData["ExpansionOptions"] = "Expansion Options"
LocalisationData["DebugMode"] = "Debug Mode"
LocalisationData["DebugModeDescription"] = "Enable Debug Mode only use if you get asked to for Debug purposes"
LocalisationData["DebugWarning"] = "WARNING you are about to enable Debug Mode this will cause a lot of spam in your chat. Only use if you get specifically asked to enable or use it to debug yourself"
LocalisationData["internalVersionMismatch"] = "Warning Internal Wa Version does not match Please alert the Author"
LocalisationData["SoundTypeDescription"] = "Toggles all Soundfiles of the given type of being played by any Aura"
LocalisationData["SoundOptions"] = "Sound Options"
LocalisationData["ToggleAnchor"] = "Toggle Anchor"
LocalisationData["ToggleAnchorDescription"] = "Toggle the display of an Anchor preview for generated auras"
LocalisationData["ExportOnDungeonEntry"] = "Export on Dungeon Entry"
LocalisationData["ExportOnDungeonEntryDescription"] = "Exports Dungeon Auras whenever you enter a Dungeon"
LocalisationData["AuraType"] = "Aura Type"
LocalisationData["AuraTypeDescription"] = "The type of Aura that should be used for this Spell e.G. Icon or Bar"
LocalisationData["SoundOption"] = "Sound Option"
LocalisationData["SoundOptionDescription"] = "Sets the Sound of all the auras using this sound queue"
LocalisationData["SoundToggle"] = "Toggle Sound type"
LocalisationData["SoundToggleDescription"] = "Toggle the Sound of a given Type"
LocalisationData["SeasonToggleDescription"] = "Toggles the Export of a Season Group"
LocalisationData["zoom"] = "Zoom"
LocalisationData["zoomDescription"] = "Sets the Zoom on all auras. Can be used to 'skin' auras but i would recommend using icon packs like 'Clean icons - Mechagnome edition' or Masque instead"
LocalisationData["SoundChannel"] = "Sound Channel"
LocalisationData["SoundChannelDescription"] = "Sets the Sound Channel of all the auras"
    --[[ 
    LocalisationData[""] = ""
    LocalisationData[""] = ""
]]


-- Grows
LocalisationData["GrowDown"] = "Down"
LocalisationData["GrowCircle"] = "Clockwise"
LocalisationData["GrowCounterCircle"] = "Counter Clockwise"
LocalisationData["GrowGrid"] = "Grid"
LocalisationData["GrowHorizontal"] = "Horizonal Centered"
LocalisationData["GrowLeft"] = "Left"
LocalisationData["GrowRight"] = "Right"
LocalisationData["GrowUp"] = "Up"
LocalisationData["GrowVertical"] = "Vertical Centered"
LocalisationData["GridDirection"] = "Grid Direction"
LocalisationData["GridSize"] = "Grid Size"
LocalisationData["GridDownLeft"] = "Down then Left"
LocalisationData["GridDownRight"] = "Down then Right"
LocalisationData["GridLeftDown"] = "Left then Down"
LocalisationData["GridLeftUp"] = "Left then Up"
LocalisationData["GridRightDown"] = "Right then Down"
LocalisationData["GridRightUp"] = "Right then Up"
LocalisationData["GridUpLeft"] = "Up then Left"
LocalisationData["GridUpRight"] = "Up then Right"
LocalisationData["GridLeftVertical"] = "Left then vertical centered"
LocalisationData["GridRightVertical"] = "Right then vertical centered"
LocalisationData["GridUpHorizontal"] = "Up then horizonal centered"
LocalisationData["GridDownHorizontal"] = "Down then horizonal centered"
LocalisationData["GridVerticalHorizontal"] = "vertical centered then horizonal centered"
LocalisationData["GridVerticalLeft"] = "vertical entered then left"
LocalisationData["GridVerticalRight"] = "vertical entered then right"
LocalisationData["GridHorizontalVertical"] = "horizonal centered then vertical centered"
LocalisationData["GridHorizontalUp"] = "horizonal centered then up"
LocalisationData["GridHorizontalDown"] = "horizonal centered then down"

LocalisationData["AlignRight"] = "Right"
LocalisationData["AlignLeft"] = "Left"
LocalisationData["AlignCenter"] = "Center"
LocalisationData["AlignBottom"] = "bottom"
LocalisationData["AlignTop"] = "top"
LocalisationData["alignDirection"] = "Align Direction"
LocalisationData["GrowStagger"] = "Stagger"
LocalisationData["GrowStaggerDescription"] = "Sets the stagger of the groups grow meaning the offset each Icon has from the original"
LocalisationData["GrowSpace"] = "Spacing"
LocalisationData["GrowSpaceDescription"] = "Space between Icons"
LocalisationData["GridSizeDescription"] = "Maximum amount of Icons before going into the next part of the Grid"
LocalisationData["GridRowSpacing"] = "Row spacing"
LocalisationData["GridRowSpacingDescription"] = "The space between each Row"
LocalisationData["GridColumnnSpacing"] = "Column spacing"
LocalisationData["GridColumnnSpacingDescription"] = "The space between each Column"
LocalisationData["GrowOptions"] = "Grow Options"
LocalisationData["SpecificGrowOptions"] = "grow specific options"



    --[[ 
    LocalisationData[""] = ""
    LocalisationData[""] = ""
]]

-- Aura Types
LocalisationData["SpinToWin"] = "Spin AoEs"
LocalisationData["PlayerGroupDebuffSpread"] = "Spreads"
LocalisationData["CastIntoPlayerGroupDebuffSpread"] = "Spreads after Cast"
LocalisationData["ShieldInc"] = "Shields"
LocalisationData["EnergyTrackSoonCast"] = "Boss Energy Tracker"
LocalisationData["CastIntoBuff"] = "Buffs"
LocalisationData["CastIntoCollect"] = "Collects"
LocalisationData["CollectBuff"] = "Collect Buffs"
LocalisationData["RunOut"] = "Whirlwind AoEs"
LocalisationData["Dance"] = "Dance"
LocalisationData["DanceOrSoakIfDebuff"] = "Dance with Soak mechanic"
LocalisationData["DanceWithNextTick"] = "Dance with next tick mechanic"
LocalisationData["CastIntoCastSuccessDance"] = "Dance"
LocalisationData["BreakShieldIntoInterrupt"] = "Interupt after Shieldbreak"
LocalisationData["ChainToKill"] = "Chain that roots until killed"
LocalisationData["UnavoidableAoe"] = "Unavoidable AoE Damage"
LocalisationData["BossCastIntoStack"] = "Stack Mechanic"
LocalisationData["VoidSoak"] = "Void Soaks"
LocalisationData["InterruptableTargetedCast"] = "Targeted Cast (Interuptable)"
LocalisationData["TargetedCast"] = "Targeted Cast (not Interuptable)"
LocalisationData["DmgBuff"] = "Damage Buffs"
LocalisationData["DmgBuffButItsAdebuff"] = "Damage Buffs"
LocalisationData["HasteBuff"] = "Haste Buffs"
LocalisationData["InterruptableSuppresion"] = "Suppression (Interuptable)"
LocalisationData["InterruptableKickStomp"] = "Aoe Stomp that kicks (Interuptable)"
LocalisationData["RoomSplit"] = "Splitting the Room" 
LocalisationData["KickOrDie"] = "Important Interupt (will kill you if missed)" 
LocalisationData["LaserCombatlogSuccess"] = "Laser Mechanic"
LocalisationData["MinusDmgTakenCCable"] = "Damage reduction channel (CCable)"
LocalisationData["MinusDmgTakenPurgeable"] = "Damage reduction channel (Purgeable)"
LocalisationData["CarryingDeBuff"] = "Debuff that needs to be Carried"
LocalisationData["KillAddChanneling"] = "Add that needs to be killed"
LocalisationData["KillAddAlive"] = "Add that needs to be killed"
LocalisationData["CastIntoKillAddAlive"] = "Add that needs to be killed"
LocalisationData["ShockWave"] = "Shockwave mechanics"
LocalisationData["AddSummonCombatlog"] = "Summoning Adds"
LocalisationData["AddSummonCast"] = "Summoning Adds"
LocalisationData["CollapsingStar"] = "Orb Soak"
LocalisationData["InteruptableVolley"] = "Volley AoE (Interuptable)"
LocalisationData["BuffCast"] = "Casts that leave a Buff on the mob"
LocalisationData["LaserCast"] = "Laser cast"
LocalisationData["InteruptableMobCastIntoPlayerDebuffSlow"] = "Cast that leaves a Debuff that slows (Interuptable)"
LocalisationData["LaserCastCombatLogStart"] = "Laser mechanic"
LocalisationData["CastIntoRoot"] = "Casts that leave a Root"
LocalisationData["PulseCastIntoDot"] = "Aoe Pulse that leaves a Dot"
LocalisationData["CastIntoAtackspeedSlow"] = "Cast that leaves an Atackspeed Slow"
LocalisationData["DashIntoDebuff"] = "Dash that results in a Debuff"
LocalisationData["InteruptableBombCastIntoSpread"] = "Cast that results in an Aoe Bomb"
LocalisationData["BuffSlow"] = "Buffs that slow the Caster"
LocalisationData["KnockCast"] = "Cast that Knocks away"
LocalisationData["TargetedKnockCast"] = "Cast that Knocks the target away"
LocalisationData["GoMeleeCast"] = "Cast that requires you to be in Melee"
LocalisationData["GlyphTp"] = "Teleport that leaves behind a Void"
LocalisationData["RageBuffCast"] = "Cast that results in a Enrage Buff"
LocalisationData["StunableReflectCast"] = "Reflect cast (Stunnable)"
LocalisationData["MinesCast"] = "Cast that results in Mines on the ground"
LocalisationData["InteruptableMobCastIntoPlayerDebuffDmgTaken"] = "Cast that results in increased dmg taken (Interuptable)"
LocalisationData["BigStackingAoeWithCD"] = "Big Aoe with increased dmg taken"
LocalisationData["CastIntoLink"] = "Linked with another Player mechanic"
LocalisationData["CastIntoLinkAppliedCheck"] = "Linked with another Player mechanic"
LocalisationData["VoidCast"] = "Void on the Ground"
LocalisationData["StunableHealCast"] = "Cast that Heals (Stunable)"
LocalisationData["TargetedCastIntoDot"] = "Targeted cast that leaves a dot"
LocalisationData["SpreadCast"] = "Spread Mechanic"
LocalisationData["DodgeCast"] = "Dodge Mechanic"
LocalisationData["CageCast"] = "Mechanic that frees Stuff (CCable)"
LocalisationData["InteruptShout"] = "Aoe that Interupts the Player if casting"
LocalisationData["InteruptableBigHealCast"] = "Important Heal (Interuptable)"
LocalisationData["InteruptableBigAoeCast"] = "Important Aoe (Interuptable)"
LocalisationData["TargetedCastIntoDmgTakenDebuff"] = "Targeted cast that leaves a Debuff that increases dmg Taken"
LocalisationData["StackCast"] = "Mechanic that requires you to Stack"
LocalisationData["IncreasedDmgTakenChannel"] = "Phase while the Boss takes increased Damage"
LocalisationData["CastIntoHideDebuff"] = "Cast that requires the targeted player to Hide"
LocalisationData["LinesCastIntoCombatLogSuccess"] = "Lines Mechanic"
LocalisationData["TankBusterCastWithDebuffCheck"] = "Tank Buster (only active for Tanks and Healers)"
LocalisationData["WaveCast"] = "Wave Mechanic"
LocalisationData["DragCast"] = "Drag Mechanic"
LocalisationData["AvoidCombatLogSuccess"] = "Avoid Mechanic"
LocalisationData["CastWithSafeBuff"] = "Hide Mechanic"
LocalisationData["TargetedCastWithTargetAnounce"] = "Targeted Cast"
LocalisationData["ArmorBuff"] = "Armor Buff"
LocalisationData["KillAddDebuff"] = "Add to be Killed"
LocalisationData["StayAwayCast"] = "Mechanic requiring you to stay away from the boss"
LocalisationData["StayAwayCastIntoSpellAuraApplied"] = "Mechanic requiring you to stay away from the boss"
LocalisationData["CastIntoChaseWithBuffEffect"] = "Kite Mechanic"
LocalisationData["ExplodingCast"] = "Explosion Mechanic"
LocalisationData["InteruptableCastIntoPlayerGroupDebuffSpreadWithAnouncement"] = "Spread Mechanic"
LocalisationData["InteruptableCastIntoRoot"] = "Cast that roots (Interuptable)"
LocalisationData["ArmorDeBuff"] = "Armor Debuff"
LocalisationData["InteruptableAoeCast"] = "AoE Cast (Interuptable)"
LocalisationData["LosCast"] = "Line of Sight mechanic"
LocalisationData["InteruptableCCImmunityCast"] = "Cc-Immunity cast (Interuptable)"
LocalisationData["InteruptableHealCast"] = "Heal Cast (Interuptable)"
LocalisationData["SquirrelCast"] = "Mechanic that summons a Squirrel (CC-able)"
LocalisationData["TrapSoak"] = "Mechanic that requires the player to soak a Trap"
LocalisationData["TrapSpawn"] = "Mechanic that spawns a trap"
LocalisationData["CastIntoDebuffSpread"] = "Spreads after Cast"
LocalisationData["InteruptableBubblelCast"] = "Cast that spawns Bubbles (Interuptable)"
LocalisationData["SoakWithDebuff"] = "Debuff that enables/requires you to soak stuff"
LocalisationData["CastIntoPlayerGroupDropVoid"] = "Drop Void Mechanic"
LocalisationData["SoakCastSafeWithDebuff"] = "Soak Void Mechanic"
LocalisationData["InteruptableTargetedCastIntoDmgTakenDebuff"] = "Targeted cast that leaves a Debuff that increases dmg Taken (Interuptable)"
LocalisationData["InteruptableCastIntoBuff"] = "Buffs"
LocalisationData["HealthDeBuff"] = "Health Debuff"
LocalisationData["ManaDrain"] = "Cast that drains Mana (Interuptable)"
LocalisationData["SummonAxeCast"] = "Cast that summons a spinning axe"
LocalisationData["CastIntoAddStackingCasts"] = "Adds to kill"
LocalisationData["DmgTakenDebuff"] = "increased Damage Taken debuff"
LocalisationData["SpreadOrClearBlockWithdebuff"] = "Clear block mechanic"
LocalisationData["CastIntoKeepMovingWithDebuff"] = "keep moving mechanic"
LocalisationData["KeepMovingWithDebuff"] = "keep moving mechanic"
LocalisationData["InteruptableFreezeCast"] = "Freeze cast (Interuptable)"
LocalisationData["DontMoveCastWithDebuff"] = "Don't move mechanic"
LocalisationData["OrbSoak"] = "Orb soaking mechanic"
LocalisationData["SoakVoidWithDebuff"] = "Soak void if you have debuffs"
LocalisationData["InteruptableCastIntoMagicDot"] = "Cast that leaves a magic debuff (Interuptable)"
LocalisationData["InteruptableCastIntoCurseDot"] = "Cast that leaves a Curse debuff (Interuptable)"
LocalisationData["HealCast"] = "Heal cast"
LocalisationData["SlowDot"] = "Slowing Dot"
LocalisationData["LaserDebuff"] = "Laser Mechanic"
LocalisationData["TeleportCast"] = "Teleport"
LocalisationData["BeamCast"] = "Beam"
LocalisationData["InteruptableAoeStun"] = "AoE Stuns (Interuptable)"
LocalisationData["InteruptableAoeFear"] = "AoE Fears (Interuptable)"
LocalisationData["SpreadDebuff"] = "Spreads"
LocalisationData["LookAwayCast"] = "Mechanic requiring you to look away"
LocalisationData["SummoningCast"] = "Summonning adds (Interuptable)"
LocalisationData["InterruptableDrainCast"] = "Draining (Interuptable)"
LocalisationData["IncreasedDmgTakenBuff"] = "Debuff that increases Damage taken"
LocalisationData["VoidCastWithSuccess"] = "Void on the Ground"
LocalisationData["CarryingBuff"] = "Player carrying Buffs"
LocalisationData["BreathMonsterYell"] = "Breath mechanic"
LocalisationData["CastIntoSpreadifDebuffed"] = "Spread mechanic"
LocalisationData["InteruptableStunCast"] = "Stun cast (Interuptable)"
LocalisationData["FeastCast"] = "Feast mechanic"
LocalisationData["CastIntoStopAtackingShield"] = "Stop Atacking mechanic"
LocalisationData["SpellCastStartIntoPlayerGroupDebuffSpread"] = "Spreads after cast"
LocalisationData["NoCastVoid"] = "Void that requires you not to cast"
LocalisationData["ShatteringStrike"] = "Ground Slam"
LocalisationData["BuffOrDeathCast"] = "Cast that either buffs the Unit or kills it"
LocalisationData["CastIntoJumpWithDebuff"] = "Mechanic that requires the player to jump"
LocalisationData["AddSummonWithBuffStacks"] = "Add Summon"
LocalisationData["OutrangeCast"] = "OutrangeCast"
LocalisationData["CastPlaceMirrorIfTargetedIntoBleed"] = "Mechanic requireing you to place a Boss mirror"
LocalisationData["CastIntoVoidsWithAdds"] = "Add spawn"
LocalisationData["InteruptableCastIntoHealthDeBuff"] = "Health debuff"
LocalisationData["CastIntoAoeDebuffWithNextTick"] = "Ticking Aoe"
LocalisationData["ImportantBellCast"] = "Bell cast"
LocalisationData["ExplodingCombatlogStart"] = "on death Explosion"
LocalisationData["StunableStormCastIntoBuff"] = "AoE mechanic (stunable)"
LocalisationData["LosCastIntoDot"] = "Debuff mechanic (LoSable)"
LocalisationData["CastOnlyTargetDisplay"] = "Targeted cast mechanic"
LocalisationData["InteruptableBewitchCastIntoDebuff"] = "Bewitch mechanic (Interuptable)"
LocalisationData["FrontalIntoDot"] = "Frontal that leaves a dot"
LocalisationData["SpinCastIntoBleed"] = "Spin mechanic that leaves a bleed"
LocalisationData["CastIntoAtackspeedSlowMagic"] = "Atack speed slow (magic despell)"
LocalisationData["CastIntoCastStartDance"] = "Dance Mechanic"
LocalisationData["SpellcastSucceededAvoid"] = "Avoid Mechanic"
LocalisationData["InteruptableKillAddWithStackingBuff"] = "Dmg stacking add cast (Interuptable)"
LocalisationData["SpellcastSucceededAdds"] = "Add spawn"
LocalisationData["PhaseChangeCast"] = "Phase Change"
LocalisationData["CastIntoChase"] = "Chase mechanic"
LocalisationData["TargetedCastIntoHealingReducedDebuff"] = "Reduced healing debuff"
LocalisationData["RunOutUnitSpellcastSucceeded"] = "Whirlwind AoEs"
LocalisationData["StunDot"] = "Dot that stuns"
LocalisationData["SlowDebuffHighStacksWarning"] = "Slow debuff"
LocalisationData["CastIntoBreakShield"] = "Break shield mechanic"
LocalisationData["WindCastIntoCastSuccess"] = "Wind mechanic"
LocalisationData["SlowDebuff"] = "Slow debuff"
LocalisationData["SpellcastSucceededDance"] = "Dance Mechanic"
LocalisationData["ChannelDmgWithNextTick"] = "Ticking dmg channel"
LocalisationData["SucceeddedintoCastDance"] = "Dance Mechanic"
LocalisationData["TankBusterCast"] = "Tank Buster"
LocalisationData["InteruptableSleepCastIntoDebuff"] = "Sleep Mechanic (Interuptable)"
LocalisationData["HealDebuff"] = "Heal Debuff"
LocalisationData["RageBuff"] = "Enrage Buff"
LocalisationData["CastIntoCursethatRoots"] = "Root Cast (Curse despell)"
LocalisationData["InteruptableCastIntoReclaimSoul"] = "Reclaim sould mechanic"
LocalisationData["ChargeIntoBleed"] = "Charge that leaves a bleed"
LocalisationData["CastIntoDot"] = "Cast that leaves a dot"
LocalisationData["BewitchCastIntoCurse"] = "Cast that Bewitches (Curse despellable)"
LocalisationData["InteruptCastIntoMagicDot"] = "Interuptable cast that leaves a dot (magic despellable)"
LocalisationData["ShieldCast"] = "Shield Cast"
LocalisationData["SpreadCastIntoCastSuccessAvoid"] = "Spread cast that leaves a void"
LocalisationData["SpreadCastNoTargetAnounce"] = "Spread Casts"
LocalisationData["CastWithSafeDeBuffDuringCast"] = "Hide Mechanic"
LocalisationData["WashAway"] = "Ticked splash mechanic"
LocalisationData["UnavoidableAoeBigAoeIfAdd"] = "Aoe that get's increased if add is alive"
LocalisationData["BlightshardSkitter"] = "Blightshard Skitter spawn mechanic"
LocalisationData["CrystallineGround"] = "Crystalline Ground mechanic"
LocalisationData["CastIntoCastSuccessSpawn"] = "Cast that Spawns something"
LocalisationData["MagmaSkulptors"] = "Kill add mechanic with chase"
LocalisationData["RunAwayIfTargeted"] = "Run Away (if targeted) mechanic"
LocalisationData["KillAddOrBossEating"] = "Kill add Mechanic (boss will consume the add and get buffed if you don't)"
LocalisationData["CCCast"] = "Cast that CCs"
LocalisationData["StunDebuffWithStacksAsProgress"] = "Debuff that Stuns at a certain amount of stacks"
LocalisationData["FrontalWithAoE"] = "Frontal that also does AoE"
LocalisationData["TransformCast"] = "Cast that transforms the caster"
LocalisationData["InterruptableCast"] = "Cast (Interuptable)"
LocalisationData["PurgableImuneCast"] = "Cast that makes a mob imune (Purgable)"
LocalisationData["InteruptableVolleyIntoMagicDot"] = "Volley tha leaves a magic debuff behind (Interuptable)"
LocalisationData["InteruptableVolleyIntoCurseDmgReduce"] = "AoE cast that leaves a dmg reducing debuff (Interuptable, Decursable)"
LocalisationData["SummonTotemCastIntoStun"] = "Cast that summons a Totem which stuns after x Seconds"
LocalisationData["CastStartNoSoak"] = "Void mechanic to not Soak"
LocalisationData["CastStartSoak"] = "Void mechanic to Soak"
LocalisationData["CastIntoKillAddDebuff"] = "Cast that spawns an add which you have to kill"
LocalisationData["MobSuicide"] = "Mob cast that kills them after completion"
LocalisationData["CastIntoDontJumpWithDebuff"] = "Mob cast that applies a debuff that requires you to not jump"
LocalisationData["CastIntoRemoveShield"] = "Cast that leaves a shield which has to be removed"
LocalisationData["FreeCast"] = "Cast that frees another add from something"
LocalisationData["SummonTotemCastIntoKillWhileChanneling"] = "Cast that summons a totem which needs to be killed"
LocalisationData["SummonTotemCastIntoKillWhileAlive"] = "Cast that summons a totem which needs to be killed"
LocalisationData["DmgReductionShoutIntoDebuff"] = "Aoe Shout that reduces dmg done when being hit"
LocalisationData["InteruptableVolleyIntoDiseaseDot"] = "Volley that leaves a disease debuff behind (Interuptable)"
LocalisationData["InteruptableVolleyIntoPoisonDot"] = "Volley that leaves a poison debuff behind (Interuptable)"
LocalisationData["KillDebuffWithStacksAsProgress"] = "Debuff that Kills at a certain amount of stacks"
LocalisationData["StunCast"] = "Stun cast"
LocalisationData["StormCastIntoEnrageBuff"] = "AoE mechanic (deragable)"
LocalisationData["CastIntoAtackspeedSlowDisease"] = "Atack speed slow (Disease despell)"
LocalisationData["HasteDeBuff"] = "Debuff that reduces Haste"
LocalisationData["HealZoneCast"] = "Cast that leaves a Zone which heals"
LocalisationData["LooktoAddCast"] = "Cast that requires you to look at the Add"
LocalisationData["RunOutDebuffOrRooted"] = "Debuff that requires you to run far enough away or be Rooted"
LocalisationData["InteruptableVolleyIntoDmgReduce"] = "AoE cast that leaves a dmg reducing debuff (Interuptable)"
LocalisationData["StunableVolleyIntoDmgReduce"] = "AoE cast that leaves a dmg reducing debuff (Stunable)"
LocalisationData["Afflicted"] = "AoE cast that leaves a haste reducing debuff (Dispellable by all Types)"
LocalisationData["NoSoakDebuff"] = "Soak mechanic that requires you to not soak if a debuff is present"
LocalisationData["ChainCastIntoSoakChainOrWaitWithDebuffIntoBurn"] = "Mechanic that requires you to break a chain or wait with a debuff"
LocalisationData["CastIntoDanceWhileDebuffed"] = "Cast that requires you to dance while debuffed"
LocalisationData["HasteBuffButItsADebuff"] = "Haste Buff that is a debuff"
LocalisationData["VolleyIntoDebuff"] = "Volley that leaves a debuff behind"
LocalisationData["VolleyIntoDot"] = "Volley that leaves a dot behind"
LocalisationData["UnavoidableAoeBigAoeIfDebuff"] = "Aoe mechanic that deals increased damage if the player has a debuff"
LocalisationData["TargetedCastWithSafeDeBuffDuringCast"] = "Hide Mechanic"
LocalisationData["FirstHitAuraApplied"] = "Aura that tells you when the first hit will happen"
LocalisationData["ImportantMoveBuff"] = "Aura that requires you to move"
LocalisationData["FriendlyChainCastIntoChainDebuffIntoPostChainDebuff"] = "Chain cast that you need to avoid if it's on your Group Member"
LocalisationData["RunOutWithTargetDebuff"] = "Debuff that requires you to run out"
LocalisationData["SpellcastSucceededSoak"] = "Soak that needs to happen after cast is finished"
LocalisationData["SpeedBuffButItsADebuff"] = "Speed Buff"
LocalisationData["DmgReductionBuffButItsADebuff"] = "Dmg reduction buff"
LocalisationData["FrontalSoakWithDebuff"] = "Frontal that removes a debuff"
LocalisationData["CastIntoTransferableDebuffThatControls"] = "Debuff that requires special maintenance and Controls the player if it expires"
LocalisationData["SoakCast"] = "Cast that requires you to Soak"
LocalisationData["RestlessSoul"] = "Cast that spawns adds that need to be killed before they reach the boss"
LocalisationData["CastSuccessDashWithCountdownIfDebuffed"] = "Dash mechanic with a countdown"
LocalisationData["InterruptableCastWithStackBuff"] = "Cast that stacks a buff (Interruptable)"
LocalisationData["SoakableTargetedDebuffWithCantSoakDebuff"] = "Soak Mechanic"
LocalisationData["PlayerGroupDebuff"] = "Debuff Mechanic"
LocalisationData["TargetableVoidCast"] = "Avoid Mechanic"
LocalisationData["CastStartAvoid"] = "Avoid Mechanic"
LocalisationData["UnavoidableAoeBigAoeIfBuffMissing"] = "UnavoidableAoe that does increased dmg when ur missing a buff"
LocalisationData["VulnerableAfterUnitDied"] = "Vulnerable after a unit has died"
LocalisationData["StunableAuraCastIntoBuff"] = "Cast that results in a protection aura (stunable)"
LocalisationData["CastIntoFrontalWhileBuffed"] = "Frontal"
LocalisationData["CastIntoAoeBuff"] = "AoE mechanic"
LocalisationData["CastIntoSpinToWinWhileBuffed"] = "Spin to win mechanic"
LocalisationData["CastIntoTankBusterWhileBuffIsActive"] = "Tank Buster mechanic"
LocalisationData["SwarmDebuffAddNeedsToBeKilledWhileActive"] = "Swarm mechanic that needs to be killed"
LocalisationData["ToppableDot"] = "Dot that can be removed by Healing above a certain % Health"
LocalisationData["InteruptableTargetedCastIntoHealingReducedMagicDebuff"] = "Cast that results in a Heal reduced debuff (Interruptable, Magic despellable)"
LocalisationData["Fixate"] = "Fixate mechanic"
LocalisationData["StayCloseCast"] = "Cast that requires you to stay close"
LocalisationData["SwitchCast"] = "Cast that requires you to switch your target"
LocalisationData["TargetedCastIntoToppableDot"] = "Cast that leaves a Dot that can be removed by Healing above a certain % Health"
LocalisationData["CastIntoTrapSpawnSuccess"] = "Mechanic that spawns a trap"
LocalisationData["MinusDmgTakenBuff"] = "Damage reduction buff"
LocalisationData["HpCompare"] = "Compares the HP of multiple Units"
LocalisationData["InteruptableCastIntoCurseHex"] = "Cast that hexes a player (Interuptable, curse despellable)"
LocalisationData["InteruptableCastIntoMinusDmgTakenPurgeable"] = "Damage reduction (Interuptable,Purgeable)"
LocalisationData["BuffCastWithStackWarning"] = "Cast that buffs the mob"
LocalisationData["AoeFear"] = "Aoe Fear"
LocalisationData["KillAddAliveWithDebuff"] = "Add that needs to be killed"
LocalisationData["CastIntoCastDance"] = "Dance Mechanic"
LocalisationData["VoidCastIntoDot"] = "Avoidable cast that leaves a dot"
LocalisationData["InteruptableCastIntoCurseDmgTakenIncrease"] = "Cast that leaves a dmg taken increase (Interuptable, curse despellable)"
LocalisationData["CastIntoBreakSupressAdd"] = "Add spawns that supresses a player while alive"
LocalisationData["AvoidBigAoeIfAdd"] = "Avoid mechanic that does big AoE dmg if an add is still alive"
LocalisationData["DotHighStacksWarning"] = "A dot mechanic that has warning on high stacks"
LocalisationData["CastWithDebuffTargetAnounce"] = "Debuff mechanic"
LocalisationData["SpreadCastWithTargetChangeTracker"] = "Spread mechanic"
LocalisationData["CastStartAoeWithStackingBuff"] = "Periodic damage that increases based on stacks"
LocalisationData["BreakShieldWithProgressIfNotDebuffed"] = "Break shield mechanic"
LocalisationData["CastSuccessDanceWithoutDebuff"] = "Dance Mechanic"
LocalisationData["CastIntoTimeLeftDebuffAnnounce"] = "Time left anouncement"
LocalisationData["AbsorbDebuffWithProgress"] = "Debuff that Absorbs Healing"
LocalisationData["TargetedCastIntoHpReducedDebuff"] = "Cast that leaves a debuff that reduces max HP"
LocalisationData["CastIntoExplodingOnExpireBuff"] = "Cast that leaves a debuff that explodes on expiration (Interuptable, Purgeable)"
LocalisationData["InterruptableCastIntoSilence"] = "Cast that silences a player (Interuptable, Magic despellable)"
LocalisationData["CastIntoKiteEnemyBuffed"] = "Kite mechanic"
LocalisationData["CastIntoKiteEnemyWhenBuffed"] = "Kite mechanic"
LocalisationData["FrontalWithStart"] = "Frontal mechanic"
LocalisationData["VoidCastWithDoubleSuccess"] = "Avoid mechanic"
LocalisationData["DisposeSpellAura"] = "Dispose mechanic"
LocalisationData["DisposeUnitDied"] = "Dispose mechanic"
LocalisationData["DisposeSuccessWithStacks"] = "Dispose mechanic"
LocalisationData["DisposeApplied"] = "Dispose mechanic"
LocalisationData["DisposeSuccessRemove"] = "Dispose mechanic"
LocalisationData["DisposeSpellAuraAppliedRemoved"] = "Dispose mechanic"
LocalisationData["PvPCast"] = "Cast that forces you to PvP"
LocalisationData["DmgDebuff"] = "Debuff that reduces dmg done"
LocalisationData["ActivatingCast"] = "Cast that activates something"
LocalisationData["UnavoidableAoeBigAoeIfBuffed"] = "Aoe mechanic that deals increased damage something has a buff"
LocalisationData["DisposeSpellDamage"] = "Dispose mechanic"
LocalisationData["TargetedStunCast"] = "Targeted cast that stuns"
--[[ 
    LocalisationData[""] = ""
    LocalisationData[""] = ""
]]

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
LocalisationData["Kill adds"] = "Kill Adds"
LocalisationData["next add"] = "Next Add"
LocalisationData["Consoles"] = "Consoles"
LocalisationData["Breath"] = "Breath"
LocalisationData["Hooking"] = "Hooking"
LocalisationData["Adds"] = "Adds"
LocalisationData["Add"] = "Add"
LocalisationData["Volley"] = "Volley"
LocalisationData["Grenade"] = "Grenade"
LocalisationData["Pulse"] = "Pulse"
LocalisationData["Slowed"] = "Slowed"
LocalisationData["Slow"] = "Slow"
LocalisationData["Rooting"] = "Rooting"
LocalisationData["Rooted"] = "Rooted"
LocalisationData["-50% AS"] = "-50% AS"
LocalisationData["Dash"] = "Dashing"
LocalisationData["Charge"] = "Charge"
LocalisationData["Bomb"] = "Bomb"
LocalisationData["Tp+Glyph"] = "Tp+Glyph"
LocalisationData["Buff+Slow"] = "Buff+Slow"
LocalisationData["Knock"] = "Knock"
LocalisationData["Go Melee"] = "Go Melee"
LocalisationData["Reflecting"] = "Reflecting"
LocalisationData["+inc dmg inc"] = "+inc dmg inc"
LocalisationData["+inc dmg"] = "+inc dmg"
LocalisationData["Raging"] = "Raging"
LocalisationData["Link"] = "Link"
LocalisationData["Mines"] = "Mines"
LocalisationData["Cage"] = "Cage"
LocalisationData["Heal"] = "Heal"
LocalisationData["Avoid"] = "Avoid"
LocalisationData["Big Aoe"] = "Big Aoe"
LocalisationData["CD"] = "CD"
LocalisationData["Dodge"] = "Dodge"
LocalisationData["Stop Cast"] = "Stop Cast"
LocalisationData["Big Heal"] = "Big Heal"
LocalisationData["Pulsar"] = "Pulsar"
LocalisationData["Drop off"] = "Drop off"
LocalisationData["Hide inc"] = "Hide inc"
LocalisationData["Hide"] = "Hide"
LocalisationData["Dragging"] = "Dragging"
LocalisationData["Wave"] = "Wave"
LocalisationData["Burn"] = "Burn"
LocalisationData["Lines"] = "Lines"
LocalisationData["Tank Buster"] = "Tank Buster"
LocalisationData["on You"] = "on You"
LocalisationData["Armor"] = "Armor"
LocalisationData["Save"] = "Save"
LocalisationData["Stay Away"] = "Stay Away"
LocalisationData["Chasing"] = "Chasing"
LocalisationData["Exploding"] = "Exploding"
LocalisationData["CC imune"] = "CC imune"
LocalisationData["Jump"] = "Jump"
LocalisationData["Healing"] = "Healing"
LocalisationData["LoS"] = "LoS"
LocalisationData["Squirrel"] = "Squirrel"
LocalisationData["Bubble"] = "Bubble"
LocalisationData["Soak Trap"] = "Soak Trap"
LocalisationData["Trap inc"] = "Trap inc"
LocalisationData["Soak Void"] = "Soak Void"
LocalisationData["Drop inc"] = "Drop inc"
LocalisationData["Drop Void"] = "Drop Void"
LocalisationData["-Health"] = "-Health"
LocalisationData["Axe"] = "Axe"
LocalisationData["Mana Drain"] = "Mana Drain"
LocalisationData["Spawning"] = "Spawning"
LocalisationData["Clear Block"] = "Clear Block"
LocalisationData["Freezing"] = "Freezing"
LocalisationData["keep moving"] = "keep moving"
LocalisationData["Move"] = "Move"
LocalisationData["Don't Move"] = "Don't Move"
LocalisationData["Soak Orbs"] = "Soak Orbs"
LocalisationData["Slow dot"] = "Slow dot"
LocalisationData["Dot inc"] = "Dot inc"
LocalisationData["Teleporting"] = "Teleporting"
LocalisationData["Beam"] = "Beam"
LocalisationData["Summoning"] = "Summoning"
LocalisationData["AoE Stun"] = "AoE Stun"
LocalisationData["AoE Fear"] = "AoE Fear"
LocalisationData["Look Away"] = "Look Away"
LocalisationData["Draining"] = "Draining"
LocalisationData["Stun"] = "Stun"
LocalisationData["Feasting"] = "Feasting"
LocalisationData["Stop inc"] = "Stop inc"
LocalisationData["Stop Atack"] = "Stop Atack"
LocalisationData["No cast inc"] = "No cast inc"
LocalisationData["No ability"] = "No ability"
LocalisationData["Jump inc"] = "Jump inc"
LocalisationData["Buff/Death"] = "Buff/Death"
LocalisationData["Bell"] = "Bell"
LocalisationData["dot"] = "dot"
LocalisationData["place Mirror"] = "place Mirror"
LocalisationData["Outrange"] = "Outrange"
LocalisationData["Void+Adds"] = "Void+Adds"
LocalisationData["next Tick"] = "next Tick"
LocalisationData["AoE inc"] = "AoE inc"
LocalisationData["Bewitched"] = "Bewitched"
LocalisationData["Bewitch"] = "Bewitch"
LocalisationData["-AS"] = "-AS"
LocalisationData["Phase"] = "Phase"
LocalisationData["InteruptableBigDotCast"] = "Big dot Cast (interuptable)"
LocalisationData["Big Dot"] = "Big Dot"
LocalisationData["Stun inc"] = "Stun inc"
LocalisationData["Wind inc"] = "Wind inc"
LocalisationData["Wind"] = "Wind"
LocalisationData["Dance inc"] = "Dance inc"
LocalisationData["despawning"] = "despawning"
LocalisationData["Sleep inc"] = "Sleep inc"
LocalisationData["Slept"] = "Slept"
LocalisationData["Clear"] = "Clear"
LocalisationData["Root inc"] = "Root inc"
LocalisationData["Slow inc"] = "Slow inc"
LocalisationData["Claim Soul"] = "Claim Soul"
LocalisationData["Shield"] = "Shield"
LocalisationData["splash inc"] = "splash inc"
LocalisationData["Run Away"] = "Run Away"
LocalisationData["Front"] = "Front"
LocalisationData["ccing"] = "CCing"
LocalisationData["Transform"] = "Transform"
LocalisationData["Can't die"] = "Can't die"
LocalisationData["Totem inc"] = "Totem inc"
LocalisationData["Don't Soak"] = "Don't Soak"
LocalisationData["no Jump inc"] = "no Jump inc"
LocalisationData["don't Jump"] = "don't Jump"
LocalisationData["Suiciding"] = "Suiciding"
LocalisationData["Remove shield"] = "Remove shield"
LocalisationData["Freeing"] = "Freeing"
LocalisationData["kill totem"] = "kill totem"
LocalisationData["Look at Add"] = "Look at Add"
LocalisationData["death inc"] = "death inc"
LocalisationData["- Haste"] = "- Haste"
LocalisationData["Healzone"] = "Healzone"
LocalisationData["- haste"] = "- haste"
LocalisationData["Despell/Heal"] = "Despell/Heal"
LocalisationData["Break Chain"] = "Break Chain"
LocalisationData["First Hit"] = "First Hit"
LocalisationData["Can't Chain"] = "Can't Chain"
LocalisationData["Avoid inc"] = "Avoid inc"
LocalisationData["- dmg taken"] = "- dmg taken"
LocalisationData["+ Speed"] = "+ Speed"
LocalisationData["Debuff inc"] = "Debuff inc"
LocalisationData["Control inc"] = "Control inc"
LocalisationData["Transfer"] = "Transfer"
LocalisationData["can't Soak"] = "can't Soak"
LocalisationData["swarm inc"] = "swarm inc"
LocalisationData["Vulnerable"] = "Vulnerable"
LocalisationData["protected"] = "protected"
LocalisationData["Aura inc"] = "Aura inc"
LocalisationData["Tank Buster inc"] = "Tank Buster inc"
LocalisationData["Spin inc"] = "Spin inc"
LocalisationData["Frontal inc"] = "Frontal inc"
LocalisationData["fixated"] = "fixated"
LocalisationData["Heal up"] = "Heal up"
LocalisationData["Stack inc"] = "Stack inc"
LocalisationData["Stay Close"] = "Stay Close"
LocalisationData["Switch"] = "Switch"
LocalisationData["ahead"] = "Ahead"
LocalisationData["behind"] = "Behind"
LocalisationData["Hexed"] = "Hexed"
LocalisationData["Hex inc"] = "Hex inc"
LocalisationData["- dmg inc"] = "- dmg inc"
LocalisationData["inc"] = "inc"
LocalisationData["time left"] = "time left"
LocalisationData["Absorb"] = "Absorb"
LocalisationData["- hp"] = "- hp"
LocalisationData["next Dance"] = "next Dance"
LocalisationData["Debuffed"] = "Debuffed"
LocalisationData["Silence inc"] = "Silence inc"
LocalisationData["Silenced"] = "Silenced"
LocalisationData["CC/Purge"] = "CC/Purge"
LocalisationData["kite"] = "Kite"
LocalisationData["Useless"] = "Useless"
LocalisationData["PvP"] = "PvP"
LocalisationData["FrontAndBack"] = "Front+Back"
LocalisationData["Remaining"] = "Remaining"
LocalisationData["Activating"] = "Activating"

--[[
LocalisationData[""] = ""
LocalisationData[""] = ""
]]

JDT.localisation = LocalisationData
end