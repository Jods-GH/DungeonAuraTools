local _, JDT = ...

JDT.GroupTypes = JDT.GroupTypes  or {}

JDT.GroupTypes.Frontal = "Frontal"
JDT.GroupTypes.Dot = "Dot"
JDT.GroupTypes.SpinToWin = "SpinToWin"
JDT.GroupTypes.ShieldInc = "ShieldInc"
JDT.GroupTypes.PlayerGroupDebuffSpread = "PlayerGroupDebuffSpread"
JDT.GroupTypes.EnergyTrackSoonCast = "EnergyTrackSoonCast"
JDT.GroupTypes.CastIntoBuff = "CastIntoBuff"
JDT.GroupTypes.CastIntoCollect = "CastIntoCollect"
JDT.GroupTypes.CollectBuff = "CollectBuff"
JDT.GroupTypes.RunOut = "RunOut"
JDT.GroupTypes.Dance = "Dance"
JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread = "CastIntoPlayerGroupDebuffSpread"
JDT.GroupTypes.BreakShieldIntoInterrupt = "BreakShieldIntoInterrupt"
JDT.GroupTypes.DanceOrSoakIfDebuff = "DanceOrSoakIfDebuff"
JDT.GroupTypes.ChainToKill = "ChainToKill"
JDT.GroupTypes.UnavoidableAoe = "UnavoidableAoe"
JDT.GroupTypes.BossCastIntoStack = "BossCastIntoStack"
JDT.GroupTypes.VoidSoak = "VoidSoak"
JDT.GroupTypes.Dispose = "Dispose"
JDT.GroupTypes.HasteBuff = "HasteBuff"
JDT.GroupTypes.InterruptableTargetedCast = "InterruptableTargetedCast"
JDT.GroupTypes.TargetedCast = "TargetedCast"
JDT.GroupTypes.InterruptableSuppresion = "InterruptableSuppresion"
JDT.GroupTypes.InterruptableKickStomp = "InterruptableKickStomp"
JDT.GroupTypes.RoomSplit = "RoomSplit"
JDT.GroupTypes.CastIntoCastSuccessDance = "CastIntoCastSuccessDance"
JDT.GroupTypes.KickOrDie = "KickOrDie"
JDT.GroupTypes.CarryingDeBuff = "CarryingDeBuff"
JDT.GroupTypes.ShockWave = "ShockWave"
JDT.GroupTypes.Orbs = "Orbs"
JDT.GroupTypes.LaserCombatlogSuccess = "LaserCombatlogSuccess"
JDT.GroupTypes.MinusDmgTakenCCable = "MinusDmgTakenCCable"
JDT.GroupTypes.KillAddChanneling = "KillAddChanneling"
JDT.GroupTypes.Consoles = "Consoles"
JDT.GroupTypes.Breath = "Breath"
JDT.GroupTypes.Hooking = "Hooking"
JDT.GroupTypes.AddSummonCombatlog = "AddSummonCombatlog"
JDT.GroupTypes.AddSummonCast = "AddSummonCast"
JDT.GroupTypes.InteruptableVolley = "InteruptableVolley"
JDT.GroupTypes.CollapsingStar = "CollapsingStar"
JDT.GroupTypes.Grenade = "Grenade"
JDT.GroupTypes.BuffCast = "BuffCast"
JDT.GroupTypes.Pulse = "Pulse"
JDT.GroupTypes.InterruptableSlow = "InterruptableSlow"
JDT.GroupTypes.SlowDebuff = "SlowDebuff"
JDT.GroupTypes.LaserCast = "LaserCast"
JDT.GroupTypes.LaserCastCombatLogStart = "LaserCastCombatLogStart"
JDT.GroupTypes.InteruptableMobCastIntoPlayerDebuffSlow = "InteruptableMobCastIntoPlayerDebuffSlow"
JDT.GroupTypes.PulseCastIntoDot = "PulseCastIntoDot"
JDT.GroupTypes.CastIntoRoot = "CastIntoRoot"
JDT.GroupTypes.CastIntoAtackspeedSlow = "CastIntoAtackspeedSlow"
JDT.GroupTypes.Charge = "Charge"
JDT.GroupTypes.DashIntoDebuff = "DashIntoDebuff"
JDT.GroupTypes.InteruptableBombCastIntoSpread = "InteruptableBombCastIntoSpread"
JDT.GroupTypes.GlyphTp = "GlyphTp"
JDT.GroupTypes.BuffSlow = "BuffSlow"
JDT.GroupTypes.KnockCast = "KnockCast"
JDT.GroupTypes.GoMeleeCast = "GoMeleeCast"
JDT.GroupTypes.StunableReflectCast = "StunableReflectCast"
JDT.GroupTypes.InteruptableMobCastIntoPlayerDebuffDmgTaken = "InteruptableMobCastIntoPlayerDebuffDmgTaken"
JDT.GroupTypes.RageBuffCast = "RageBuffCast"
JDT.GroupTypes.CastIntoLink  = "CastIntoLink"
JDT.GroupTypes.MinesCast = "MinesCast"
JDT.GroupTypes.CageCast = "CageCast"
JDT.GroupTypes.SpreadCast = "SpreadCast"
JDT.GroupTypes.TargetedCastIntoDot = "TargetedCastIntoDot"
JDT.GroupTypes.StunableHealCast = "StunableHealCast"
JDT.GroupTypes.VoidCast = "VoidCast"
JDT.GroupTypes.BigStackingAoeWithCD = "BigStackingAoeWithCD"
JDT.GroupTypes.DodgeCast = "DodgeCast"
JDT.GroupTypes.InteruptShout = "InteruptShout"
JDT.GroupTypes.Pulsar = "Pulsar"
JDT.GroupTypes.InteruptableBigHealCast = "InteruptableBigHealCast"
JDT.GroupTypes.InteruptableBigAoeCast = "InteruptableBigAoeCast"
JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff = "TargetedCastIntoDmgTakenDebuff"
JDT.GroupTypes.StackCast = "StackCast"
JDT.GroupTypes.CastIntoHideDebuff = "CastIntoHideDebuff"
JDT.GroupTypes.DragCast = "DragCast"
JDT.GroupTypes.WaveCast = "WaveCast"
JDT.GroupTypes.IncreasedDmgTakenChannel = "IncreasedDmgTakenChannel"
JDT.GroupTypes.LinesCastIntoCombatLogSuccess = "LinesCastIntoCombatLogSuccess"
JDT.GroupTypes.TankBusterCastWithDebuffCheck = "TankBusterCastWithDebuffCheck"
JDT.GroupTypes.ArmorBuff = "ArmorBuff"
JDT.GroupTypes.TargetedCastWithTargetAnounce = "TargetedCastWithTargetAnounce"
JDT.GroupTypes.AvoidCombatLogSuccess = "AvoidCombatLogSuccess"
JDT.GroupTypes.CastWithSafeBuff = "CastWithSafeBuff"
JDT.GroupTypes.KillAddDebuff = "KillAddDebuff"
JDT.GroupTypes.StayAwayCast = "StayAwayCast"
JDT.GroupTypes.StayAwayCastIntoSpellAuraApplied = "StayAwayCastIntoSpellAuraApplied"
JDT.GroupTypes.CastIntoChaseWithBuffEffect = "CastIntoChaseWithBuffEffect"
JDT.GroupTypes.ExplodingCast = "ExplodingCast"
JDT.GroupTypes.InteruptableCastIntoPlayerGroupDebuffSpreadWithAnouncement = "InteruptableCastIntoPlayerGroupDebuffSpreadWithAnouncement"
JDT.GroupTypes.InteruptableAoeCast = "InteruptableAoeCast"
JDT.GroupTypes.ArmorDeBuff = "ArmorDeBuff"
JDT.GroupTypes.InteruptableCastIntoRoot = "InteruptableCastIntoRoot"
JDT.GroupTypes.InteruptableCCImmunityCast = "InteruptableCCImmunityCast"
JDT.GroupTypes.Jump = "Jump"
JDT.GroupTypes.LosCast = "LosCast"
JDT.GroupTypes.SquirrelCast = "SquirrelCast"
JDT.GroupTypes.InteruptableHealCast = "InteruptableHealCast"
JDT.GroupTypes.SoakWithDebuff = "SoakWithDebuff"
JDT.GroupTypes.CastIntoDebuffSpread = "CastIntoDebuffSpread"
JDT.GroupTypes.InteruptableBubblelCast = "InteruptableBubblelCast"
JDT.GroupTypes.TrapSoak = "TrapSoak"
JDT.GroupTypes.TrapSpawn = "TrapSpawn"
JDT.GroupTypes.SoakCastSafeWithDebuff = "SoakCastSafeWithDebuff"
JDT.GroupTypes.CastIntoPlayerGroupDropVoid = "CastIntoPlayerGroupDropVoid"
JDT.GroupTypes.InteruptableTargetedCastIntoDmgTakenDebuff = "InteruptableTargetedCastIntoDmgTakenDebuff"
JDT.GroupTypes.InteruptableCastIntoBuff = "InteruptableCastIntoBuff"
JDT.GroupTypes.HealthDeBuff = "HealthDeBuff"
JDT.GroupTypes.DmgBuff = "DmgBuff"
JDT.GroupTypes.SummonAxeCast = "SummonAxeCast"
JDT.GroupTypes.ManaDrain = "ManaDrain"
JDT.GroupTypes.CastIntoAddStackingCasts = "CastIntoAddStackingCasts"
JDT.GroupTypes.SpreadOrClearBlockWithdebuff = "SpreadOrClearBlockWithdebuff"
JDT.GroupTypes.InteruptableFreezeCast = "InteruptableFreezeCast"
JDT.GroupTypes.CastIntoKeepMovingWithDebuff  = "CastIntoKeepMovingWithDebuff"
JDT.GroupTypes.DontMoveCastWithDebuff = "DontMoveCastWithDebuff"
JDT.GroupTypes.DmgTakenDebuff = "DmgTakenDebuff"
JDT.GroupTypes.SoakVoidWithDebuff = "SoakVoidWithDebuff"
JDT.GroupTypes.OrbSoak = "OrbSoak"
JDT.GroupTypes.TeleportCast = "TeleportCast"
JDT.GroupTypes.InteruptableCastIntoMagicDot = "InteruptableCastIntoMagicDot"
JDT.GroupTypes.LaserDebuff = "LaserDebuff"
JDT.GroupTypes.SlowDot = "SlowDot"
JDT.GroupTypes.BeamCast = "BeamCast"
JDT.GroupTypes.InteruptableAoeStun = "InteruptableAoeStun"
JDT.GroupTypes.SummoningCast = "SummoningCast"
JDT.GroupTypes.LookAwayCast = "LookAwayCast"
JDT.GroupTypes.SpreadDebuff = "SpreadDebuff"
JDT.GroupTypes.InterruptableDrainCast = "InterruptableDrainCast"
JDT.GroupTypes.InteruptableAoeFear = "InteruptableAoeFear"
JDT.GroupTypes.IncreasedDmgTakenBuff = "IncreasedDmgTakenBuff"
JDT.GroupTypes.VoidCastWithSuccess = "VoidCastWithSuccess"
JDT.GroupTypes.CarryingBuff = "CarryingBuff"
JDT.GroupTypes.BreathMonsterYell = "BreathMonsterYell"
JDT.GroupTypes.InteruptableStunCast = "InteruptableStunCast"
JDT.GroupTypes.CastIntoSpreadifDebuffed = "CastIntoSpreadifDebuffed"
JDT.GroupTypes.FeastCast = "FeastCast"
JDT.GroupTypes.CastIntoStopAtackingShield = "CastIntoStopAtackingShield"
JDT.GroupTypes.SpellCastStartIntoPlayerGroupDebuffSpread = "SpellCastStartIntoPlayerGroupDebuffSpread"
JDT.GroupTypes.NoCastVoid = "NoCastVoid"
JDT.GroupTypes.ShatteringStrike = "ShatteringStrike"
JDT.GroupTypes.AddSummonWithBuffStacks = "AddSummonWithBuffStacks"
JDT.GroupTypes.CastIntoJumpWithDebuff = "CastIntoJumpWithDebuff"
JDT.GroupTypes.BuffOrDeathCast = "BuffOrDeathCast"
JDT.GroupTypes.CastIntoAoeDebuffWithNextTick = "CastIntoAoeDebuffWithNextTick"
JDT.GroupTypes.CastIntoVoidsWithAdds = "CastIntoVoidsWithAdds"
JDT.GroupTypes.InteruptableCastIntoHealthDeBuff = "InteruptableCastIntoHealthDeBuff"
JDT.GroupTypes.OutrangeCast = "OutrangeCast"
JDT.GroupTypes.CastPlaceMirrorIfTargetedIntoBleed = "CastPlaceMirrorIfTargetedIntoBleed"
JDT.GroupTypes.ImportantBellCast = "ImportantBellCast"
JDT.GroupTypes.ExplodingCombatlogStart = "ExplodingCombatlogStart"
JDT.GroupTypes.StunableStormCastIntoBuff = "StunableStormCastIntoBuff"
JDT.GroupTypes.InteruptableBewitchCastIntoDebuff = "InteruptableBewitchCastIntoDebuff"
JDT.GroupTypes.LosCastIntoDot = "LosCastIntoDot"
JDT.GroupTypes.SpinCastIntoBleed = "SpinCastIntoBleed"
JDT.GroupTypes.CastOnlyTargetDisplay = "CastOnlyTargetDisplay"
JDT.GroupTypes.FrontalIntoDot = "FrontalIntoDot"
JDT.GroupTypes.CastIntoAtackspeedSlowMagic = "CastIntoAtackspeedSlowMagic"
JDT.GroupTypes.CastIntoCastStartDance = "CastIntoCastStartDance"
JDT.GroupTypes.SpellcastSucceededAvoid = "SpellcastSucceededAvoid"
JDT.GroupTypes.SpellcastSucceededAdds = "SpellcastSucceededAdds"
JDT.GroupTypes.InteruptableKillAddWithStackingBuff = "InteruptableKillAddWithStackingBuff"
JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff = "TargetedCastIntoHealingReducedDebuff"
JDT.GroupTypes.PhaseChangeCast  = "PhaseChangeCast"
JDT.GroupTypes.CastIntoChase = "CastIntoChase"
JDT.GroupTypes.InteruptableBigDotCast = "InteruptableBigDotCast"
JDT.GroupTypes.RunOutUnitSpellcastSucceeded = "RunOutUnitSpellcastSucceeded"
JDT.GroupTypes.SlowDebuffHighStacksWarning = "SlowDebuffHighStacksWarning"
JDT.GroupTypes.StunDot = "StunDot"
JDT.GroupTypes.CastIntoBreakShield = "CastIntoBreakShield"
JDT.GroupTypes.WindCastIntoCastSuccess = "WindCastIntoCastSuccess"
JDT.GroupTypes.SpellcastSucceededDance = "SpellcastSucceededDance"
JDT.GroupTypes.SucceeddedintoCastDance = "SucceeddedintoCastDance"
JDT.GroupTypes.TankBusterCast = "TankBusterCast"
JDT.GroupTypes.ChannelDmgWithNextTick = "ChannelDmgWithNextTick"
JDT.GroupTypes.Trader = "Trader"
JDT.GroupTypes.Spiteful = "Spiteful"
JDT.GroupTypes.InteruptableSleepCastIntoDebuff = "InteruptableSleepCastIntoDebuff"
JDT.GroupTypes.Thundering = "Thundering"
JDT.GroupTypes.ChargeIntoBleed = "ChargeIntoBleed"
JDT.GroupTypes.RageBuff = "RageBuff"
JDT.GroupTypes.CastIntoCursethatRoots = "CastIntoCursethatRoots"
JDT.GroupTypes.HealDebuff = "HealDebuff"
JDT.GroupTypes.InteruptableCastIntoReclaimSoul = "InteruptableCastIntoReclaimSoul"
JDT.GroupTypes.HealBuff = "HealBuff"
JDT.GroupTypes.BewitchCastIntoCurse = "BewitchCastIntoCurse"
JDT.GroupTypes.CastIntoDot = "CastIntoDot"
JDT.GroupTypes.InteruptCastIntoMagicDot = "InteruptCastIntoMagicDot"
JDT.GroupTypes.DmgBuffButItsAdebuff = "DmgBuffButItsAdebuff"
JDT.GroupTypes.ShieldCast = "ShieldCast"
JDT.GroupTypes.SpreadCastIntoCastSuccessAvoid = "SpreadCastIntoCastSuccessAvoid"
JDT.GroupTypes.SpreadCastNoTargetAnounce = "SpreadCastNoTargetAnounce"
JDT.GroupTypes.CastWithSafeDeBuffDuringCast = "CastWithSafeDeBuffDuringCast"
JDT.GroupTypes.WashAway = "WashAway"
JDT.GroupTypes.CrystallineGround = "CrystallineGround"
JDT.GroupTypes.BlightshardSkitter = "BlightshardSkitter"
JDT.GroupTypes.UnavoidableAoeBigAoeIfAdd = "UnavoidableAoeBigAoeIfAdd"
JDT.GroupTypes.KillAddOrBossEating = "KillAddOrBossEating"
JDT.GroupTypes.RunAwayIfTargeted = "RunAwayIfTargeted"
JDT.GroupTypes.MagmaSkulptors =  "MagmaSkulptors"
JDT.GroupTypes.CastIntoCastSuccessSpawn  = "CastIntoCastSuccessSpawn"
JDT.GroupTypes.FrontalWithAoE = "FrontalWithAoE"
JDT.GroupTypes.CCCast = "CCCast"
JDT.GroupTypes.StunDebuffWithStacksAsProgress = "StunDebuffWithStacksAsProgress"
JDT.GroupTypes.TransformCast = "TransformCast"
JDT.GroupTypes.InterruptableCast = "InterruptableCast"
JDT.GroupTypes.PurgableImuneCast = "PurgableImuneCast"
JDT.GroupTypes.InteruptableVolleyIntoMagicDot = "InteruptableVolleyIntoMagicDot"
JDT.GroupTypes.InteruptableVolleyIntoCurseDmgReduce = "InteruptableVolleyIntoCurseDmgReduce"
JDT.GroupTypes.SummonTotemCastIntoStun = "SummonTotemCastIntoStun"
JDT.GroupTypes.CastStartNoSoak = "CastStartNoSoak"
JDT.GroupTypes.CastStartSoak = "CastStartSoak"
JDT.GroupTypes.CastIntoKillAddDebuff = "CastIntoKillAddDebuff"
JDT.GroupTypes.CastIntoDontJumpWithDebuff = "CastIntoDontJumpWithDebuff"
JDT.GroupTypes.MobSuicide = "MobSuicide"
JDT.GroupTypes.CastIntoRemoveShield = "CastIntoRemoveShield"
JDT.GroupTypes.SummonTotemCastIntoKillWhileChanneling = "SummonTotemCastIntoKillWhileChanneling"
JDT.GroupTypes.FreeCast = "FreeCast"
JDT.GroupTypes.SummonTotemCastIntoKillWhileAlive = "SummonTotemCastIntoKillWhileAlive"
JDT.GroupTypes.LooktoAddCast = "LooktoAddCast"
JDT.GroupTypes.KillAddAlive = "KillAddAlive"
JDT.GroupTypes.DmgReductionShoutIntoDebuff = "DmgReductionShoutIntoDebuff" 
JDT.GroupTypes.KillDebuffWithStacksAsProgress = "KillDebuffWithStacksAsProgress"
JDT.GroupTypes.InteruptableVolleyIntoDiseaseDot = "InteruptableVolleyIntoDiseaseDot"
JDT.GroupTypes.CastIntoAtackspeedSlowDisease = "CastIntoAtackspeedSlowDisease"
JDT.GroupTypes.StormCastIntoEnrageBuff = "StormCastIntoEnrageBuff"
JDT.GroupTypes.StunCast = "StunCast"
JDT.GroupTypes.HasteDeBuff = "HasteDeBuff"
JDT.GroupTypes.HealZoneCast = "HealZoneCast"
JDT.GroupTypes.MinusDmgTakenPurgeable = "MinusDmgTakenPurgeable"
JDT.GroupTypes.RunOutDebuffOrRooted = "RunOutDebuffOrRooted"
JDT.GroupTypes.InteruptableVolleyIntoDmgReduce = "InteruptableVolleyIntoDmgReduce"
JDT.GroupTypes.Afflicted = "Afflicted"
JDT.GroupTypes.NoSoakDebuff =  "NoSoakDebuff"
JDT.GroupTypes.ChainCastIntoSoakChainOrWaitWithDebuffIntoBurn = "ChainCastIntoSoakChainOrWaitWithDebuffIntoBurn"
JDT.GroupTypes.CastIntoDanceWhileDebuffed = "CastIntoDanceWhileDebuffed"
JDT.GroupTypes.HasteBuffButItsADebuff = "HasteBuffButItsADebuff"
JDT.GroupTypes.VolleyIntoDisease = "VolleyIntoDisease"


setmetatable(JDT.GroupTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})




JDT.Templates.GroupTypes = JDT.Templates.GroupTypes or {}

JDT.Templates.GroupTypes.Dot = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dot"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.HealDebuff = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = "-"..JDT.getLocalisation("Healing"),
            isactive = true,
        },  
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.HealBuff = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = "-"..JDT.getLocalisation("Healing"),
            isactive = true,
        },  
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.SlowDot = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Slowed"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.StunDot = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Stun inc"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.SpreadDebuff = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}




JDT.Templates.GroupTypes.Frontal = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Frontal"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.frontal,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.FrontalWithAoE = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Front").." + ".. JDT.getLocalisation("AoE"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.frontal,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.FrontalIntoDot = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Frontal"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Dot"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.frontal,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.CCCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("ccing"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.SpinToWin= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spin"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.ShieldInc =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Shield inc"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soon,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.ShieldCast =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Shield"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soon,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.PlayerGroupDebuffSpread =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("on").." %3.unit",
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
    }
), 
}

JDT.Templates.GroupTypes.EnergyTrackSoonCast=  {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.tsu,
            customPreset = "EnergyTrackSoonCast"

        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [3] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitResource,
            percentpower = "90"
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Soon"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soon,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1]  and not (t[2] or t[3]) \n end",
}

JDT.Templates.GroupTypes.CastIntoBuff = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Buffing"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Buffed"),  
            isactive = false,
        },    
    },
    doSound = JDT.SoundTypes.highEnergy,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.InteruptableCastIntoBuff = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Buffing"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Buffed"),  
            isactive = false,
        },    
    },
    doSound = JDT.SoundTypes.highEnergy,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.border_visible",
                        value = false
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.CastIntoCollect = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Collect inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Collect"),  
            isactive = false,
        },    
    },
    doSound = JDT.SoundTypes.collect,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.CollectBuff = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Collect"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("on").. " %2.unit",  
            isactive = false,
        },    
    },
    glowtype = "Ants",
    doSound = JDT.SoundTypes.collect,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
        {
            condition={
                type = "Or",
                checks = {
                    {
                        type = "NumberCheck",
                        trigger= 1,
                        op = "<",
                        variable = "expirationTime",
                        value = "3",
                    },
                    {
                        type = "NumberCheck",
                        trigger= 2,
                        op = "<",
                        variable = "expirationTime",
                        value = "3",
                    },
                },
            },
            changes = {
                {
                    property = "sub.5.glow",
                    value = true
                },
            },
        },
    }
), 
}

JDT.Templates.GroupTypes.RunOut = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Run Out"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.RunOutDebuffOrRooted = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Run Out"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.root,
    doSound = JDT.SoundTypes.breakshield,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.RunOutUnitSpellcastSucceeded = {
    AuraType = "AuraIcon",
    triggers = {
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitSpellcastSucceeded, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Run Out"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.Charge = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Charge"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.ChargeIntoBleed = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Charge"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Dot"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    type = JDT.AuraTypes.bleed,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.border_visible",
                        value = false
                    },
                
                },
        },
    }),
}
JDT.Templates.GroupTypes.Jump = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Jump"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.Dance= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dance"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.dance,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.CastIntoCastSuccessDance= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dance"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.dance,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.CastIntoDanceWhileDebuffed= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dance"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.dance,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.SucceeddedintoCastDance= {
    AuraType = "AuraIcon",
    triggers = {
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitSpellcastSucceeded, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dance inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Dance"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.dance,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
    }
), 
}
JDT.Templates.GroupTypes.CastIntoCastStartDance= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_START",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dance"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.dance,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.CastIntoDebuffSpread =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
    }
), 
}

JDT.Templates.GroupTypes.CastIntoPlayerGroupDebuffSpread =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("on").." %3.unit",
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
        {
            condition={
                type = "And",
                checks = {
                    {
                        type = "simplecheck",
                        trigger= 2,
                        value = false,
                    },
                    {
                        type = "simplecheck",
                        trigger= 3,
                        value = true,
                    },
                },
            },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.5.text_visible",
                    value = true
                },
            },
        },
    }
), 
}
JDT.Templates.GroupTypes.InteruptableCastIntoPlayerGroupDebuffSpreadWithAnouncement =  {

    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("on").." %3.unit",
            isactive = false,
        }, 
    },
    type = JDT.AuraTypes.interrupt,
    doSound = JDT.SoundTypes.spread,
    useDebuffClass = true,
    debuffClassDefaultValue = false,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
                {
                    property= "sub.6.text_visible",
                    value = false
                },
                {
                    property= "sub.8.text_visible",
                    value = true
                },
                {
                    property = "sub.7.border_color",
                    value = JDT.Templates.Borders.magic,
                },
                {
                    property = "chat",
                    value = {
                        message_type = "YELL",
                        message = "{rt7} I'm smol leave me alone {rt7}",
                    },
                }
            },
        },
        {
            condition={
               type = "simplecheck",
               trigger= 3,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.5.text_visible",
                    value = true
                },
                {
                    property= "sub.6.text_visible",
                    value = false
                },
                {
                    property= "sub.8.text_visible",
                    value = true
                },
                {
                    property = "sub.7.border_color",
                    value = JDT.Templates.Borders.magic,
                },
            },
        },
    }
), 
}
JDT.Templates.GroupTypes.SpellCastStartIntoPlayerGroupDebuffSpread =  {
    AuraType = "AuraIcon",
    triggers = {
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_START",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("on").." %3.unit",
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
        {
            condition={
               type = "simplecheck",
               trigger= 3,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.5.text_visible",
                    value = true
                },
            },
        },
    }
), 
}
JDT.Templates.GroupTypes.BreakShieldIntoInterrupt = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Break shield"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Interrupt"),  
            isactive = true,
        }, 

    },
    useTooltip = 2,
    type = JDT.AuraTypes.interrupt,
    doSound = JDT.SoundTypes.highEnergy,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                    type = "simplecheck",
                    trigger= 2,
                    value = true,
                    
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true,
                    },
                    {
                        property = "sub.4.text_visible",
                        value = false,
                    },
                    {
                        property = "sub.6.text_visible",
                        value = false,
                    },
                    {
                        property = "sub.7.border_visible",
                        value = false,
                    },
                },
        }
    }
), 
}
JDT.Templates.GroupTypes.CastIntoBreakShield = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Break shield"),
            isactive =  true,
        }, 
        {   
            value = JDT.getLocalisation("Shield inc"),
            isactive = false,
        }, 

    },
    useTooltip = 1,
    doSound = JDT.SoundTypes.breakshield,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
                {
                    {
                       condition={
                          type = "simplecheck",
                          trigger= 1,
                          value = true,
                           },
                           changes = {
                            {
                                property = "sub.3.text_visible",
                                value = false,
                            },
                            {
                                property = "sub.4.text_visible",
                                value = true,
                            },
                           },
                   },
               }
), 
 
}

JDT.Templates.GroupTypes.CastIntoRemoveShield = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Remove shield"),
            isactive =  true,
        }, 
        {   
            value = JDT.getLocalisation("Shield inc"),
            isactive = false,
        }, 

    },
    showStacks = 1,
    doSound = JDT.SoundTypes.breakshield,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
                {
                    {
                       condition={
                          type = "simplecheck",
                          trigger= 1,
                          value = true,
                           },
                           changes = {
                            {
                                property = "sub.3.text_visible",
                                value = false,
                            },
                            {
                                property = "sub.4.text_visible",
                                value = true,
                            },
                           },
                   },
               }
), 
 
}

JDT.Templates.GroupTypes.DanceOrSoakIfDebuff = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Dance"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Soak"),  
            isactive = false,
        }, 

    },
    glowtype = "Ants",
    doSound = JDT.SoundTypes.dance,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1] \n end",
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
                {
                    {
                       condition={
                          type = "simplecheck",
                          trigger= 1,
                          value = false,
                           },
                           changes = {
                            {
                                property = "sub.3.text_visible",
                                value = false,
                            },
                            {
                                property = "sub.4.text_visible",
                                value = true,
                            },
                            {
                                property = "sub.5.glow",
                                value = true,
                            },
                           },
                   },
               }
), 
}
JDT.Templates.GroupTypes.SoakCastSafeWithDebuff = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Soak Void"),  
            isactive = true,
        }, 

    },
    glowtype = "ActionButton",
    showGlow = true,
    doSound = JDT.SoundTypes.dance,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = 'function(t) \n  if t[1] and t[2] then \nlocal t1,t2 = WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)[UnitGUID("boss1")], WeakAuras.GetTriggerStateForTrigger(aura_env.id, 2)[""] \n if t1 and t2 then \n return t1.expirationTime > t2.expirationTime \n end \n elseif t[1] then \n return true \n end \n end',
   
}

JDT.Templates.GroupTypes.ChainToKill = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        [3] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        [4] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitHealth,
        },

    },
    text = {
        {   
            value = JDT.getLocalisation("Chain inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("kill Chain"),  
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("on").." %3.unit",
            isactive = false,
        }, 

    },
    useHealth = 4,
    doSound = JDT.SoundTypes.switch,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
                {
                    {
                       condition={
                          type = "simplecheck",
                          trigger= 2,
                          value = true,
                           },
                           changes = {
                            {
                                property = "sub.3.text_visible",
                                value = false,
                            },
                            {
                                property = "sub.4.text_visible",
                                value = true,
                            },
                           },
                   },
                   {
                    condition={
                        type = "And",
                        checks = {
                            {
                                type = "simplecheck",
                                trigger= 2,
                                value = false,
                            },
                            {
                                type = "simplecheck",
                                trigger= 3,
                                value = true,
                            },
                        },
                    },
                    changes = {
                            {
                                property = "sub.3.text_visible",
                                value = false,
                            },
                            {
                                property = "sub.5.text_visible",
                                value = true,
                            },
                    },
                },
    }
), 
}

JDT.Templates.GroupTypes.UnavoidableAoe = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.selfcd,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.UnavoidableAoeBigAoeIfAdd = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitHealth,
            
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Big Aoe"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.selfcd,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1]\n end",
    glowtype = "Ants",
    showGlow = false,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
                {
                    {
                       condition={
                          type = "simplecheck",
                          trigger= 2,
                          value = true,
                           },
                           changes = {
                            {
                                property = "sub.3.text_visible",
                                value = false,
                            },
                            {
                                property = "sub.4.text_visible",
                                value = true,
                            },
                            {
                                property = "sub.5.glow",
                                value = true,
                            },
                           },
                   },
                  
    }
), 
}


JDT.Templates.GroupTypes.BossCastIntoStack = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        [3] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Soak"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Stack"),  
            isactive = false,
        },    
        {   
            value = JDT.getLocalisation("on").." %3.unit",  
            isactive = false,
        },   
    },
    glowtype = "Ants",
    showGlow = true,
    doSound = JDT.SoundTypes.stack,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
               condition={
                  type = "simplecheck",
                  trigger= 2,
                  value = true,
                   },
                   changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false,
                    },
                    {
                        property = "sub.4.text_visible",
                        value = true,
                    },
                   },
           },
           {
            condition={
                type = "And",
                checks = {
                    {
                        type = "simplecheck",
                        trigger= 2,
                        value = false,
                    },
                    {
                        type = "simplecheck",
                        trigger= 3,
                        value = true,
                    },
                },
            },
            changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false,
                    },
                    {
                        property = "sub.5.text_visible",
                        value = true,
                    },
            },
        },
}
), 
} 

JDT.Templates.GroupTypes.VoidSoak= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Soak Void"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soak,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.CastStartNoSoak= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_START",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Don't Soak"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.NoSoakDebuff= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Don't Soak"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.CastStartSoak= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_START",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Soak"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soak,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}


JDT.Templates.GroupTypes.OrbSoak= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Soak Orbs"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soak,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.SoakWithDebuff= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Soak"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soak,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.SoakVoidWithDebuff= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Soak Void"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soak,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.Dispose=  {
    AuraType = "AuraIcon",
    triggers = {
        [1] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.tsu,
            customPreset = "TazaveshDispose"
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dispose"),
            isactive = true,
        }, 
    },
    glowtype = "Ants",
    doSound = JDT.SoundTypes.dance,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
               condition={
                type = "NumberCheck",
                trigger= 2,
                op = "<",
                variable = "expirationTime",
                value = "5",
                   },
                   changes = {
                    {
                        property = "sub.4.glow",
                        value = true,
                    },
                    {
                        property = "sub.4.glowType",
                        value = "buttonOverlay",
                    },
                   },
           },
           {
            condition={
                type = "And",
                checks = {
                    {
                        type = "NumberCheck",
                        trigger= 2,
                        op = ">",
                        variable = "expirationTime",
                        value = "5",
                    },
                    {
                        type = "NumberCheck",
                        trigger= 2,
                        op = "<",
                        variable = "expirationTime",
                        value = "10",
                    },
                },
            },
            changes = {
                {
                    property = "sub.4.glow",
                    value = true
                },
            },
        },
}
), 
}

JDT.Templates.GroupTypes.HasteBuff = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("+ Haste"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.HasteBuffButItsADebuff = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("+ Haste"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.HasteDeBuff = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("- Haste"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}


JDT.Templates.GroupTypes.SlowDebuff = {
    AuraType = "AuraIcon",
    type = "snare",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Slowed"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.SlowDebuffHighStacksWarning = {
    AuraType = "AuraIcon",
    type = "snare",
    showStacks = 1,
    glowtype = "Ants",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Slowed"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "NumberCheck",
                   trigger= 1,
                   op = ">=",
                   variable = "stacks",
                   value = "5",
                    },
                    changes = {
            
                        {
                            property= "sub.4.glow",
                            value = true
                        },
                    },
            },
            {
                condition={
                   type = "NumberCheck",
                   trigger= 1,
                   op = ">=",
                   variable = "stacks",
                   value = "8",
                    },
                    changes = {
            
                        {
                            property = "sub.4.glowType",
                            value = "buttonOverlay",
                        },
                    },
            },
    })
}

JDT.Templates.GroupTypes.InterruptableTargetedCast= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
            target = JDT.Templates.Triggers.UnitTypes.player,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("targeted"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.targeted,
    type = JDT.AuraTypes.interrupt,
}

JDT.Templates.GroupTypes.InterruptableCast= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("targeted"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
}

JDT.Templates.GroupTypes.TargetedCast= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
            target = JDT.Templates.Triggers.UnitTypes.player,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("targeted"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.targeted,
}
JDT.Templates.GroupTypes.TargetedCastWithTargetAnounce= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("on You"),
            isactive = false,
        }, 
        {   
            value = "%1.destUnit",
            isactive = true,
        }, 
       
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.targeted,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            
            {
                condition={
                   type = "NumberCheck",
                   trigger= 1,
                   op = "==",
                   variable = "destUnit",
                   value = "player",
                    },
                    changes = {
                        {
                            property = "sub.3.text_visible",
                            value = true
                        },
                        {
                            property= "sub.4.text_visible",
                            value = false
                        },
                    },
            },
    })
}
JDT.Templates.GroupTypes.TargetedCastIntoDot= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
            target = JDT.Templates.Triggers.UnitTypes.player,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("targeted"),
            isactive = false,
        },
        {   
            value = JDT.getLocalisation("Dot"),
            isactive = true,
        },  
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.targeted,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.border_visible",
                        value = false
                    },
                    {
                        property= "sub.6.text_visible",
                        value = false
                    },
                },
        },
    })
}
JDT.Templates.GroupTypes.CastIntoDot= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dot inc"),
            isactive = false,
        },
        {   
            value = JDT.getLocalisation("Dot"),
            isactive = true,
        },  
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.debuff,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.border_visible",
                        value = false
                    },
                    {
                        property= "sub.6.text_visible",
                        value = false
                    },
                },
        },
    })
}
JDT.Templates.GroupTypes.TargetedCastIntoDmgTakenDebuff= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
            target = JDT.Templates.Triggers.UnitTypes.player,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("targeted"),
            isactive = false,
        },
        {   
            value = JDT.getLocalisation("+inc dmg"),
            isactive = true,
        },  
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.targeted,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                },
        },
    })
}
JDT.Templates.GroupTypes.TargetedCastIntoHealingReducedDebuff= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
            target = JDT.Templates.Triggers.UnitTypes.player,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("targeted"),
            isactive = false,
        },
        {   
            value = "-"..JDT.getLocalisation("Healing"),
            isactive = true,
        },  
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.targeted,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                },
        },
    })
}
JDT.Templates.GroupTypes.InteruptableTargetedCastIntoDmgTakenDebuff= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
            target = JDT.Templates.Triggers.UnitTypes.player,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("targeted"),
            isactive = false,
        },
        {   
            value = JDT.getLocalisation("+inc dmg"),
            isactive = true,
        },  
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.targeted,
    type = JDT.AuraTypes.interrupt,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.text_visible",
                        value = false
                    },
                    {
                        property= "sub.7.border_visible",
                        value = false
                    },
                },
        },
    })
}
JDT.Templates.GroupTypes.DmgTakenDebuff= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("+inc dmg"),
            isactive = true,
        },  
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.InterruptableSuppresion= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Suppress"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
}
JDT.Templates.GroupTypes.InterruptableKickStomp= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE+Kick"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
}

JDT.Templates.GroupTypes.RoomSplit = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Splitting"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soon,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.KickOrDie =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Interrupt"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    glowtype = "ActionButton",
    showGlow = true,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.CarryingDeBuff =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Drop off"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.CarryingBuff =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Carrying"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.Afflicted= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Despell/Heal"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("- haste"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.dispell,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.ShockWave = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Shockwave"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.frontal,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.Orbs = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Orbs"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.orb,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.LaserCombatlogSuccess = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Laser"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.LaserCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Laser"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.beam,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.LaserDebuff = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Laser"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.move,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.LaserCastCombatLogStart = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_START",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Laser"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.beam,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.BeamCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Beam"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.beam,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.MinusDmgTakenCCable = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("- dmg"),
            isactive = true,
        }, 
    },
    type = "stun",
    doSound = JDT.SoundTypes.cc,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.MinusDmgTakenPurgeable = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("- dmg"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.purge,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.DmgReductionShoutIntoDebuff = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("- dmg"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.KillAddChanneling= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.add,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.KillAddOrBossEating= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitHealth,
            
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Kill adds"),
            isactive = true,
        }, 
    },
    useHealth = 2,
    doSound = JDT.SoundTypes.add,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t)\n return t[2] and not t[1] \n end",
    glowtype = "Ants",
    showGlow = true,
}
JDT.Templates.GroupTypes.KillAddAlive= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitHealth,
            
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = true,
        }, 
    },
    useHealth = 1,
    doSound = JDT.SoundTypes.add,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.KillAddDebuff= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.add,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.CastIntoKillAddDebuff= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.add,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.Consoles= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Consoles"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.Breath= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Breath"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.avoid,
    glowtype = "ActionButton",
    showGlow = true,
}
JDT.Templates.GroupTypes.Hooking= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Hooking"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.move,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.AddSummonCombatlog= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_SUMMON",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Adds"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.adds,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.AddSummonCast= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Adds"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.adds,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.SummoningCast= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Summoning"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.adds,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.SummonTotemCastIntoStun= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Totem inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Stun inc"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.adds,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                 
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.SummonTotemCastIntoKillWhileChanneling= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Totem inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("kill totem"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.adds,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                 
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.SummonTotemCastIntoKillWhileAlive= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitHealth, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Totem inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("kill totem"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.adds,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                 
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.InteruptableVolley= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Volley"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.InteruptableVolleyIntoMagicDot= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Volley"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("dot"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = 
        {
            {
                type = JDT.AuraTypes.interrupt,
                visible = true,
            },
            {
                type = JDT.AuraTypes.magic,
                visible = false,
            },
        },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.6.text_visible",
                        value = false
                    },
                    {
                        property= "sub.7.border_visible",
                        value = false
                    },
                    {
                        property= "sub.8.text_visible",
                        value = true
                    },
                    {
                        property= "sub.9.border_visible",
                        value = true
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.InteruptableVolleyIntoDiseaseDot= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Volley"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("dot"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = 
        {
            {
                type = JDT.AuraTypes.interrupt,
                visible = true,
            },
            {
                type = JDT.AuraTypes.disease,
                visible = false,
            },
        },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.6.text_visible",
                        value = false
                    },
                    {
                        property= "sub.7.border_visible",
                        value = false
                    },
                    {
                        property= "sub.8.text_visible",
                        value = true
                    },
                    {
                        property= "sub.9.border_visible",
                        value = true
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.InteruptableVolleyIntoCurseDmgReduce= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Volley"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("+inc dmg"),
            isactive = false,
        }, 
    },
    showStacks = "2",
    doSound = JDT.SoundTypes.interrupt,
    type = 
        {
            {
                type = JDT.AuraTypes.interrupt,
                visible = true,
            },
            {
                type = JDT.AuraTypes.curse,
                visible = false,
            },
        },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.6.text_visible",
                        value = false
                    },
                    {
                        property= "sub.7.border_visible",
                        value = false
                    },
                    {
                        property= "sub.8.text_visible",
                        value = true
                    },
                    {
                        property= "sub.9.border_visible",
                        value = true
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.InteruptableVolleyIntoDmgReduce= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Volley"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("- dmg"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.6.text_visible",
                        value = false
                    },
                    {
                        property= "sub.7.border_visible",
                        value = false
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.VolleyIntoDisease= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Volley"),
            isactive = true,
        }, 
        
    },
    doSound = JDT.SoundTypes.debuff,
    type = JDT.AuraTypes.disease,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.CollapsingStar= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.tsu,
            customPreset = "CollapsingStar"
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Soak"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soak,
    useCount = true,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.Grenade= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Grenade"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.BuffCast= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Buffing"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.highEnergy,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.Pulse= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Pulse"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.aoe,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InterruptableSlow= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Slow"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
}

JDT.Templates.GroupTypes.InteruptableMobCastIntoPlayerDebuffSlow = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Slow"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Slowed"),  
            isactive = false,
        },    
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.border_visible",
                        value = false
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.PulseCastIntoDot = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Pulse"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Dot"),  
            isactive = false,
        },    
    },
    doSound = JDT.SoundTypes.aoe,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.CastIntoRoot = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Rooting"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Rooted"),  
            isactive = false,
        },    
    },
    type = JDT.AuraTypes.root,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.InteruptableCastIntoRoot = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Rooting"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Rooted"),  
            isactive = false,
        },    
    },
    type = 
        {
            {
                type = "interrupt",
                visible = true,
            },
            {
                type = "root",
                visible = false,
            },
        },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property = "sub.6.border_visible",
                        value = false,
                    },
                    {
                        property= "sub.7.text_visible",
                        value = true
                    },
                    {
                        property = "sub.8.border_visible",
                        value = true,
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.CastIntoCursethatRoots = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Slow inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Root inc"),  
            isactive = false,
        },    
    },
    type = JDT.AuraTypes.curse,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.InteruptableCastIntoMagicDot = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Dot inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Dot"),  
            isactive = false,
        },    
    },
    type = 
        {
            {
                type = "interrupt",
                visible = true,
            },
            {
                type = "magic",
                visible = false,
            },
        },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property = "sub.6.border_visible",
                        value = false,
                    },
                    {
                        property= "sub.7.text_visible",
                        value = true
                    },
                    {
                        property = "sub.8.border_visible",
                        value = true,
                    },
                },
        },
    }
), 
}


JDT.Templates.GroupTypes.CastIntoAtackspeedSlow = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("-50% AS"),
            isactive = true,
        },  
    },
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    useDebuffClass = true,
    debuffClassDefaultValue = false,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.4.text_visible",
                        value = false,
                    },
                    {
                        property = "sub.5.border_color",
                        value = JDT.Templates.Borders.curse,
                    },
                    {
                        property = "sub.6.text_visible",
                        value = true,
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.CastIntoAtackspeedSlowMagic = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("-AS"),
            isactive = true,
        },  
    },
    type = 
    {
        {
            type = "interrupt",
            visible = true,
        },
        {
            type = "magic",
            visible = false,
        },
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.border_visible",
                        value = false
                    },
                    {
                        property= "sub.6.text_visible",
                        value = true
                    },
                    {
                        property= "sub.7.border_visible",
                        value = true
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.CastIntoAtackspeedSlowDisease = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("-AS"),
            isactive = true,
        },  
    },
    type = 
    {
        {
            type = "interrupt",
            visible = true,
        },
        {
            type = "disease",
            visible = false,
        },
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.border_visible",
                        value = false
                    },
                    {
                        property= "sub.6.text_visible",
                        value = true
                    },
                    {
                        property= "sub.7.border_visible",
                        value = true
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.DashIntoDebuff = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Dash"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Dot"),  
            isactive = true,
        },    
    },
    type = JDT.AuraTypes.bleed,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.border_visible",
                        value = false
                    },
                },
        },
    }
), 
}


JDT.Templates.GroupTypes.InteruptableBombCastIntoSpread =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Bomb"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("on").." %3.unit",
            isactive = false,
        }, 
    },
    type = JDT.AuraTypes.interrupt,
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
                {
                    property= "sub.6.text_visible",
                    value = false
                },
                {
                    property= "sub.7.border_visible",
                    value = false
                },
            },
        },
        {
            condition={
               type = "simplecheck",
               trigger= 3,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.5.text_visible",
                    value = true
                },
                {
                    property= "sub.6.text_visible",
                    value = false
                },
                {
                    property= "sub.7.border_visible",
                    value = false
                },
            },
        },
    }
), 
}

JDT.Templates.GroupTypes.GlyphTp = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Tp+Glyph"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.BuffSlow = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Buff+Slow"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.highEnergy,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.KnockCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Knock"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.knock,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.GoMeleeCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
            target = JDT.Templates.Triggers.UnitTypes.player,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Go Melee"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.move,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}


JDT.Templates.GroupTypes.StunableReflectCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Reflecting"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.cc,
    type = JDT.AuraTypes.stun,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.InteruptableMobCastIntoPlayerDebuffDmgTaken = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("targeted"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("+inc dmg"),  
            isactive = true,
        },    
    },
    doSound = JDT.SoundTypes.targeted,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.border_visible",
                        value = false
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.RageBuffCast= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Raging"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.enrage,
    doSound = JDT.SoundTypes.highEnergy,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.RageBuff = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Raging"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.enrage,
    doSound = JDT.SoundTypes.highEnergy,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.CastIntoLink = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Link").." %2.unitCaster",  
            isactive = false,
        },    
    },
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.MinesCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Mines"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.CageCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Cage"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.adds,
    type = JDT.AuraTypes.stun,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.SpreadCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = true,
        }, 
        {   
            value = "%1.destUnit",
            isactive = false,
        }, 
        
    },
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "NumberCheck",
               trigger= 1,
               op = "~=",
               variable = "destUnit",
               value = "player",
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
    }
),
}

JDT.Templates.GroupTypes.SpreadCastNoTargetAnounce = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = true,
        }, 
        
    },
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}


JDT.Templates.GroupTypes.SpreadCastIntoCastSuccessAvoid = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = true,
        }, 
        {   
            value = "%1.destUnit",
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Avoid"),
            isactive = false,
        }, 
        
    },
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "NumberCheck",
               trigger= 1,
               op = "~=",
               variable = "destUnit",
               value = "player",
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
        },
        {
            condition={
                type = "simplecheck",
                trigger= 1,
                value = false,
                linked = true,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = true
                    },
                },
        },
    }
),
}
JDT.Templates.GroupTypes.HealZoneCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Healzone"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.StunableHealCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Heal"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.cc,
    type = JDT.AuraTypes.stun,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InteruptableBigHealCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, voidc
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Big Heal"),
            isactive = true,
        }, 
    },
    glowtype = "ActionButton",
    showGlow  = true,
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InteruptableHealCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Healing"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.VoidCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Avoid"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InteruptCastIntoMagicDot = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Interrupt"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Dot"),  
            isactive = false,
        },    
    },
    type = 
        {
            {
                type = "interrupt",
                visible = true,
            },
            {
                type = "magic",
                visible = false,
            },
        },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.6.text_visible",
                        value = false
                    },
                    {
                        property = "sub.7.border_visible",
                        value = false,
                    },
                    {
                        property= "sub.8.text_visible",
                        value = true
                    },
                    {
                        property = "sub.9.border_visible",
                        value = true,
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.BigStackingAoeWithCD = {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        [2] =  {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
        [3] ={
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Big Aoe"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("CD"),  
            isactive = false,
        },    
    },
    doSound = JDT.SoundTypes.targeted,
    showStacks = "3",
    glowtype = "Ants",
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1] or t[2] \n end",
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                    type = "And",
                    checks = {
                        {
                            type = "NumberCheck",
                            trigger= 3,
                            op = ">",
                            variable = "stacks",
                            value = "1",
                        },
                        {
                            type = "simplecheck",
                            trigger= 1,
                            value = true,
                        },
                    },
            },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false,
                    },
                    {
                        property = "sub.4.text_visible",
                        value = true,
                    },
                    {
                        property = "sub.5.glow",
                        value = true,
                    },
                    {
						property = "sub.5.glowType",
                        value = "buttonOverlay",
                    },
                },
        },
        {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
                linked = true,
                changes = {
                    {
                        property = "sub.5.glow",
                        value = true,
                    },
                },
        },
        {
            condition={
                type = "And",
                checks = {
                    {
                        type = "simplecheck",
                        trigger= 1,
                        value = false,
                    },
                    {
                        type = "simplecheck",
                        trigger= 2,
                        value = true,
                    },
                },
        },
            linked = true,
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false,
                },
                {
                    property = "sub.4.text_visible",
                    value = true,
                },
            },
    },
    }
), 
}
JDT.Templates.GroupTypes.DodgeCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dodge"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.dodge,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InteruptShout = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Stop Cast"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.stopcast,
    glowtype = "ActionButton",
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1] \n end",
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                    type = "CustomCheck",
                    subtype = "CastInteruptable"
            },
                changes = {
                    {
                        property = "sub.4.glow",
                        value = true,
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.Pulsar = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitHealth, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Pulsar"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = true,
        }, 
    },
    useHealth = 3,
    doSound = JDT.SoundTypes.add,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1] or t[2]\n end",
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = true,
                    },
                    changes = {
                        {
                            property = "sub.2.text_visible",
                            value = true,
                        },
                        {
                            property= "sub.3.text_visible",
                            value = false
                        },
                        {
                            property= "sub.4.text_visible",
                            value = false
                        },
                    },
            },
    }
), 
}
JDT.Templates.GroupTypes.InteruptableBigAoeCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Big Aoe"),
            isactive = true,
        }, 
    },
    glowtype = "ActionButton",
    showGlow  = true,
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InteruptableAoeCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InteruptableAoeStun= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE Stun"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InteruptableAoeFear= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE Fear"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.StackCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Stack"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.stack,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.CastIntoHideDebuff =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Hide inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Hide"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("on").." %3.unit",
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.hide,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
        {
            condition={
               type = "simplecheck",
               trigger= 3,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.5.text_visible",
                    value = true
                },
            },
        },
    }
), 
}
JDT.Templates.GroupTypes.DragCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Dragging"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.move,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.WaveCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Wave"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.move,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.IncreasedDmgTakenChannel = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Burn"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.bloodlust,
}
JDT.Templates.GroupTypes.IncreasedDmgTakenBuff = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Burn"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.bloodlust,
}
JDT.Templates.GroupTypes.LinesCastIntoCombatLogSuccess = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Lines"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.beam,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.TankBusterCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Tank Buster"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.TankBusterCastWithDebuffCheck = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Tank Buster"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    glowtype = "Ants",
    useGlowColor = true,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
        {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
                linked = true,
                changes = {
                    {
                        property = "sub.4.glow",
                        value = true,
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.DmgBuff = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Buffed"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.DmgBuffButItsAdebuff = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Buffed"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.ArmorBuff = {
    AuraType = "AuraIcon",
    showStacks = 1,
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Armor"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.ArmorDeBuff = {
    AuraType = "AuraIcon",
    showStacks = 1,
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = "- "..JDT.getLocalisation("Armor"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.HealthDeBuff = {
    AuraType = "AuraIcon",
    showStacks = 1,
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = "- "..JDT.getLocalisation("-Health"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.AvoidCombatLogSuccess = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Avoid"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.CastWithSafeBuff =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Hide"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Save"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.hide,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
        
    }
), 
}

JDT.Templates.GroupTypes.CastWithSafeDeBuffDuringCast =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Hide"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Save"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.hide,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
        
    }
), 
}


JDT.Templates.GroupTypes.StayAwayCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Stay Away"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.move,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.StayAwayCastIntoSpellAuraApplied= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_AURA_APPLIED",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Stay Away"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.move,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.CastIntoChase =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Chasing"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("on You"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.add,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
        {
            condition={
               type = "simplecheck",
               trigger= 3,
               value = true,
                },
            linked = true,
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.5.text_visible",
                    value = true
                },
            },
        },
        
    }
), 
}
JDT.Templates.GroupTypes.CastIntoChaseWithBuffEffect =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Chasing"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("on You"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.add,
    glowtype = "Ants",
    showGlow = true,
    useGlowColor = true,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1] or t[2] or t[3]\n end",
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
        {
            condition={
               type = "simplecheck",
               trigger= 3,
               value = true,
                },
            linked = true,
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.5.text_visible",
                    value = true
                },
            },
        },
        {
            condition={
               type = "simplecheck",
               trigger= 4,
               value = true,
                },
            changes = {
                {
                    property = "sub.6.glowType",
                    value = "buttonOverlay",
                },
            },
        },
        
    }
), 
}
JDT.Templates.GroupTypes.ExplodingCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Exploding"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.ExplodingCombatlogStart = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_START",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Exploding"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.InteruptableCCImmunityCast= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("CC imune"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
}
JDT.Templates.GroupTypes.LosCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("LoS"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.hide,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.LosCastIntoDot = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("LoS"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Dot"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.hide,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = false,
                    },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.SquirrelCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Squirrel"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.stun,
    doSound = JDT.SoundTypes.hide,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InteruptableBubblelCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Bubble"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.TrapSoak= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Soak Trap"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.soak,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.TrapSpawn= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Trap inc"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.CastIntoPlayerGroupDropVoid =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Drop inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Drop Void"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("on").." %3.unit",
            isactive = false,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
            },
        },
        {
            condition={
               type = "simplecheck",
               trigger= 3,
               value = true,
                },
            linked = true,
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.5.text_visible",
                    value = true
                },
            },
        },
    }
), 
}
JDT.Templates.GroupTypes.SummonAxeCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Axe"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.ManaDrain= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Mana Drain"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    glowtype = "ActionButton",
    showGlow = true,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.CastIntoAddStackingCasts =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spawning"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    showStacks = 3,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = true
                },
                {
                    property= "sub.4.text_visible",
                    value = false
                },
                {
                    property= "sub.5.text_visible",
                    value = false
                },
            },
        },
    }
), 
}

JDT.Templates.GroupTypes.SpreadOrClearBlockWithdebuff =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Clear Block"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1] \n end",
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                    type = "And",
                    checks = {
                        {
                               type = "NumberCheck",
                               trigger= 1,
                               op = "~=",
                               variable = "destUnit",
                               value = "player",
                        },
                        {
                            type = "simplecheck",
                            trigger= 2,
                            value = true,
                        },
                    },
                },
                changes = {
                        {
                            property = "sub.3.text_visible",
                            value = false,
                        },
                        {
                            property = "sub.4.text_visible",
                            value = true,
                        },
                },
            },
            {
                condition={
                   type = "simplecheck",
                   trigger= 2,
                   value = true,
                    },
                changes = {
                    {
                        property = "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.border_visible",
                        value = false
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.InteruptableFreezeCast= {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Freezing"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
}
JDT.Templates.GroupTypes.CastIntoKeepMovingWithDebuff =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("keep moving"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Move"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    showStacks = 2,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 2,
                   value = false,
                    },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.DontMoveCastWithDebuff =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Don't Move"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("on").." %3.unit",
            isactive = false,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                    type = "And",
                    checks = {
                        {
                            type = "simplecheck",
                            trigger= 1,
                            value = false,
                        },
                        {
                            type = "simplecheck",
                            trigger= 2,
                            value = false,
                        },
                        {
                            type = "simplecheck",
                            trigger= 3,
                            value = true,
                        },
                    },
                },
                changes = {
                        {
                            property = "sub.3.text_visible",
                            value = false,
                        },
                        {
                            property = "sub.4.text_visible",
                            value = true,
                        },
                },
            },
    }
), 
}
JDT.Templates.GroupTypes.TeleportCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Teleporting"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.LookAwayCast= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Look Away"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.turn,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.LooktoAddCast= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Look at Add"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.turn,
    glowtype = "ActionButton",
    showGlow = true,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.InterruptableDrainCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Draining"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.interrupt,
    doSound = JDT.SoundTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.VoidCastWithSuccess = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Avoid"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.BreathMonsterYell = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.monsterYell, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Breath"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.InteruptableStunCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Stun inc"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.StunCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Stun inc"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.cc,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.CastIntoSpreadifDebuffed =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },

    },
    text = {
        {   
            value = JDT.getLocalisation("Spread inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Spread"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
             
             },
      
        }
    }
), 
}

JDT.Templates.GroupTypes.FeastCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Feasting"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.CastIntoStopAtackingShield = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Stop inc"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Stop Atack"),
            isactive = true,
        }, 
    },
    useTooltip = 2,
    doSound = JDT.SoundTypes.stopcast,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = true,
                    },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.NoCastVoid = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("No cast inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("No ability"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.stopcast,
    glowtype = "ActionButton",
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 2,
               value = true,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
                {
                    property= "sub.5.glow",
                    value = true
                },
             
             },
      
        }
    }
), 
}
JDT.Templates.GroupTypes.ShatteringStrike= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.tsu,
            customPreset = "ShatteringStrike"
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Run Out"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("CD"),
            isactive = false,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
             
             },
      
        }
    }
), 
}


JDT.Templates.GroupTypes.AddSummonWithBuffStacks = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Summoning"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.adds,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
    showStacks = 2,
    additionalStackText = "/5",
}

JDT.Templates.GroupTypes.CastIntoJumpWithDebuff =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Jump inc"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Jump"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    showStacks = 2,
    doSound = JDT.SoundTypes.move,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 2,
                   value = false,
                    },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.CastIntoDontJumpWithDebuff =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("no Jump inc"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("don't Jump"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 2,
                   value = false,
                    },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.BuffOrDeathCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Buff/Death"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.highEnergy,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.CastIntoAoeDebuffWithNextTick =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
            
        },
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_DAMAGE",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
        
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE inc"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("next Tick"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    showStacks = 3,
    doSound = JDT.SoundTypes.aoe,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = true,
                    },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = true
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.ChannelDmgWithNextTick =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
            
        },
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_DAMAGE",
        },
        
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE"),
            isactive = true,
        }, 
    },
    useProgress = 2,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.aoe,
 
}
JDT.Templates.GroupTypes.CastIntoVoidsWithAdds =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
            
        },
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
        
    },
    text = {
        {   
            value = JDT.getLocalisation("Void+Adds"),
            isactive = false,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    showStacks = 2,
    doSound = JDT.SoundTypes.adds,
}

JDT.Templates.GroupTypes.InteruptableCastIntoHealthDeBuff = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
            
        },
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = "- "..JDT.getLocalisation("-Health"),
            isactive = true,
        }, 
    },
    type = 
        {
            {
                type = "interrupt",
                visible = true,
            },
            {
                type = "magic",
                visible = false,
            },
        },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = false,
                    },
                changes = {
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.border_visible",
                        value = false
                    },
                    {
                        property= "sub.6.text_visible",
                        value = true
                    },
                    {
                        property= "sub.7.border_visible",
                        value = true
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.OutrangeCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Outrange"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.move,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.CastPlaceMirrorIfTargetedIntoBleed = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
            
        },
         {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("place Mirror"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Avoid"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("dot"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.bleed,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
           
            {
                condition={
                   type = "NumberCheck",
                   trigger= 1,
                   op = "==",
                   variable = "destUnit",
                   value = "player",
                    },
                    changes = {
                        {
                            property= "sub.3.text_visible",
                            value = true
                        },
                        {
                            property= "sub.5.text_visible",
                            value = false
                        },
                        {
                            property= "sub.6.text_visible",
                            value = false
                        },
                        {
                            property= "sub.7.border_visible",
                            value = false
                        },
                    },
            },
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = true,
                    },
                linked = true,
                changes = {
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.text_visible",
                        value = false
                    },
                    {
                        property= "sub.7.border_visible",
                        value = false
                    },
                },
            }, 
    }
), 
}

JDT.Templates.GroupTypes.ImportantBellCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Bell"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    glowtype =  "ActionButton",
    showGlow = true,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.StunableStormCastIntoBuff = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("AoE"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.cc,
    type = JDT.AuraTypes.stun,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = false,
                    },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },

                },
            }, 
    }
), 
}

JDT.Templates.GroupTypes.StormCastIntoEnrageBuff = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("AoE"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.highEnergy,
    type = JDT.AuraTypes.enrage,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = false,
                    },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },

                },
            }, 
    }
), 
}

JDT.Templates.GroupTypes.BewitchCastIntoCurse = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Bewitch"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Bewitched"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = 
    {
        {
            type = JDT.AuraTypes.interrupt,
            visible = true,
        },
        {
            type = JDT.AuraTypes.curse,
            visible = false,
        },
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = false,
                    },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.border_visible",
                        value = false
                    },
                    {
                        property= "sub.7.text_visible",
                        value = true
                    },
                    {
                        property= "sub.8.border_visible",
                        value = true
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.InteruptableBewitchCastIntoDebuff = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Bewitch"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Bewitched"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = 
    {
        {
            type = "interrupt",
            visible = true,
        },
        {
            type = "magic",
            visible = false,
        },
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = false,
                    },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.border_visible",
                        value = false
                    },
                    {
                        property= "sub.7.text_visible",
                        value = true
                    },
                    {
                        property= "sub.8.border_visible",
                        value = true
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.SpinCastIntoBleed= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spin"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Dot"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.bleed,
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = true,
                    },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = true
                        
                    },
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.border_visible",
                        value = false
                    },
                },
            }, 
    }
), 
}
JDT.Templates.GroupTypes.CastOnlyTargetDisplay =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("on You"),
            isactive = false,
        }, 
        {   
            value = "%1.destUnit",
            isactive = true,
        }, 
        
    },

    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                    type = "NumberCheck",
                    trigger= 1,
                    op = "==",
                    variable = "destUnit",
                    value = "player",
                },
                changes = {
                        {
                            property = "sub.3.text_visible",
                            value = true,
                        },
                        {
                            property = "sub.4.text_visible",
                            value = false,
                        },
                },
            },
    }
), 
}

JDT.Templates.GroupTypes.SpellcastSucceededAvoid =  {
    AuraType = "AuraIcon",
    triggers = {
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitSpellcastSucceeded, 
        },
        
    },
    text = {
        {   
            value = JDT.getLocalisation("Avoid"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.avoid,
}
JDT.Templates.GroupTypes.SpellcastSucceededDance =  {
    AuraType = "AuraIcon",
    triggers = {
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitSpellcastSucceeded, 
        },
        
    },
    text = {
        {   
            value = JDT.getLocalisation("Dance"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.dance,
}

JDT.Templates.GroupTypes.SpellcastSucceededAdds=  {
    AuraType = "AuraIcon",
    triggers = {
        {   
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitSpellcastSucceeded, 
        },
        
    },
    text = {
        {   
            value = JDT.getLocalisation("Add"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    doSound = JDT.SoundTypes.add,
}

JDT.Templates.GroupTypes.InteruptableKillAddWithStackingBuff= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "buff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("AoE"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.interrupt,
    showStacks = 2,
    doSound = JDT.SoundTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.PhaseChangeCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Phase"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}
JDT.Templates.GroupTypes.InteruptableBigDotCast = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        
    },
    text = {
        {   
            value = JDT.getLocalisation("Big Dot"),
            isactive = true,
        }, 
    },
    glowtype = "ActionButton",
    showGlow  = true,
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.WindCastIntoCastSuccess = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Wind inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Wind"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.move,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = false,
                    },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    }, 
            }
        }   
), 
}
JDT.Templates.GroupTypes.Trader= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_AURA_APPLIED",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("despawning"),
            isactive = true,
        }, 
    },
    glowtype = "Ants",
    showGlow = true,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.Spiteful=  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.tsu,
            customPreset = "Spiteful"

        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "buff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("on You"),
            isactive = true,
        }, 
    },
    showStacks = 1,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1]  and t[3] \n end",
}

JDT.Templates.GroupTypes.InteruptableSleepCastIntoDebuff = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Sleep inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Slept"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.interrupt,
    type = 
    {
        {
            type = "interrupt",
            visible = true,
        },
        {
            type = "magic",
            visible = false,
        },
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 1,
                   value = false,
                    },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "sub.5.text_visible",
                        value = false
                    },
                    {
                        property= "sub.6.border_visible",
                        value = false
                    },
                    {
                        property= "sub.7.text_visible",
                        value = true
                    },
                    {
                        property= "sub.8.border_visible",
                        value = true
                    },
                },
            }, 
    }
), 
}

JDT.Templates.GroupTypes.Thundering = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, 
            BuffTypes = "debuff",
        },
    },
    text = {
        
        {   
            value = JDT.getLocalisation("Buffed"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Clear"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.stack,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t) \n  return t[1] or t[2]\n end",
    glowtype = "Ants",
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                    type = "Or",
                    checks = {
                        {
                            type = "And",
                            checks = {
                                {
                                    type = "simplecheck",
                                    trigger= 1,
                                    value = true,
                                },
                                {
                                    type = "simplecheck",
                                    trigger= 4,
                                    value = true,
                                },
                            },
                        },
                        {
                            type = "And",
                            checks = {
                                {
                                    type = "simplecheck",
                                    trigger= 2,
                                    value = true,
                                },
                                {
                                    type = "simplecheck",
                                    trigger= 3,
                                    value = true,
                                },
                            },
                        },
                    },
                },
                changes = {
                        {
                            property = "sub.3.text_visible",
                            value = false,
                        },
                        {
                            property = "sub.4.text_visible",
                            value = true,
                        },
                },
            },
            {
                condition={
                    type = "Or",
                    checks = {
                        {
                            type = "And",
                            checks = {
                                {
                                    type = "NumberCheck",
                                    trigger= 1,
                                    op = "<",
                                    variable = "expirationTime",
                                    value = "5",
                                },
                                {
                                    type = "simplecheck",
                                    trigger= 4,
                                    value = true,
                                },
                            },
                        },
                        {
                            type = "And",
                            checks = {
                                {
                                    type = "NumberCheck",
                                    trigger= 2,
                                    op = "<",
                                    variable = "expirationTime",
                                    value = "5",
                                },
                                {
                                    type = "simplecheck",
                                    trigger= 3,
                                    value = true,
                                },
                            },
                        },
                    },
                },
                changes = {
                    {
                        property= "sub.5.glow",
                        value = true
                    },
                },
            },
            
    }
    
), 

}
JDT.Templates.GroupTypes.InteruptableCastIntoReclaimSoul = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Claim Soul"),
            isactive = true,
        },  
    },
    doSound = JDT.SoundTypes.interrupt,
    type = JDT.AuraTypes.interrupt,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property= "sub.4.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.border_visible",
                        value = false
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.WashAway= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_AURA_APPLIED",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.tsu,
            customPreset = "WashAway"
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("splash inc"),
            isactive = true,
        }, 
    },
    glowtype = "Ants",
    showGlow = true,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.CrystallineGround= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitSpellcastSucceeded,
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        }
    },
    text = {
        {   
            value = JDT.getLocalisation("Don't Move"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t)\n return (t[1] or t[2]) and t[3] \n end",
}

JDT.Templates.GroupTypes.BlightshardSkitter= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitHealth,
            
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = JDT.Templates.Triggers.CombatLogTypes.summon,
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("next add"),
            isactive = false,
        }, 
    },
    useHealth = 1,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    HideCooldownText = true,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
         {
            condition={
               type = "simplecheck",
               trigger= 1,
               value = false,
                },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                    {
                        property= "cooldownText",
                        value = false,
                    },
                },
        },
    }
), 
}

JDT.Templates.GroupTypes.RunAwayIfTargeted = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = "%1.destUnit",
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Run Away"),
            isactive = false,
        }, 
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    glowtype = "Ants",
    showGlow = false,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        { {
        condition={
           type = "NumberCheck",
           trigger= 1,
           op = "==",
           variable = "destUnit",
           value = "player",
            },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false
                },
                {
                    property= "sub.4.text_visible",
                    value = true
                },
                {
                    property= "sub.5.glow",
                    value = true
                },
            },
    },
})
}

JDT.Templates.GroupTypes.MagmaSkulptors= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.unitHealth,
            
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "buff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Kill add"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("targeted"),
            isactive = false,
        }, 
    },
    useHealth = 1,
    showStacks = 2,
    glowtype = "Ants",
    showGlow = false,
    activationType = JDT.Templates.Triggers.ActivationTypes.custom,
    customTriggerLogic = "function(t)\n return t[1]\n end",
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                   type = "simplecheck",
                   trigger= 4,
                   value = true,
                    },
                    changes = {
                        {
                            property = "sub.3.text_visible",
                            value = false
                        },
                        {
                            property= "sub.4.text_visible",
                            value = true
                        },
                    },
            },   
         {
            condition={
               type = "simplecheck",
               trigger= 3,
               value = true,
                },
                changes = {
                    {
                        property= "sub.5.glow",
                        value = true
                    },
                },
        },
    }
), 
}
JDT.Templates.GroupTypes.CastIntoCastSuccessSpawn= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.combatlog, 
            subeventSuffix = "_CAST_SUCCESS",
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Spawning"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
}

JDT.Templates.GroupTypes.StunDebuffWithStacksAsProgress= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },

    },
    text = {
        {   
            value = JDT.getLocalisation("Stun inc"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.debuff,
    type = JDT.AuraTypes.magic,
    useDebuffClass = true,
    debuffClassDefaultValue = true,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    customText = JDT.Templates.CustomText.DurationStacks
}
JDT.Templates.GroupTypes.KillDebuffWithStacksAsProgress= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },

    },
    text = {
        {   
            value = JDT.getLocalisation("death inc"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.debuff,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    customText = JDT.Templates.CustomText.DurationStacks
}

JDT.Templates.GroupTypes.TransformCast= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Transform"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.PurgableImuneCast= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Can't die"),
            isactive = true,
        }, 
    },
    type = JDT.AuraTypes.purge,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.MobSuicide = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Suiciding"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}
JDT.Templates.GroupTypes.FreeCast= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, 
        },
    },
    text = {
        {   
            value = JDT.getLocalisation("Freeing"),
            isactive = true,
        }, 
    },
    doSound = JDT.SoundTypes.add,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.Templates.GroupTypes.ChainCastIntoSoakChainOrWaitWithDebuffIntoBurn = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.cast, --chaincast
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, -- explosion debuff
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, -- debuff on enemy increasing dmg taken at stacks
            BuffTypes = "debuff",
        },
        {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs, --Chain debuff on player
            BuffTypes = "debuff",
        },
        
    },
    text = {
        {   
            value = JDT.getLocalisation("Chain inc"),
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Break Chain"),
            isactive = false,
        }, 
        {   
            value = JDT.getLocalisation("Don't Soak"),
            isactive = false,
        }, 
    },
    showStacks = 3,
    activationType = JDT.Templates.Triggers.ActivationTypes.oder,
    conditions = JDT.Templates.Conditions.ConditionGenerator.advanced(
        {
            {
                condition={
                    type = "And",
                    checks = {
                        {
                            type = "simplecheck",
                            trigger= 1,
                            value = false,
                        },
                        {
                            type = "simplecheck",
                            trigger= 2,
                            value = false,
                        },
                        {
                            type = "simplecheck",
                            trigger= 4,
                            value = true,
                        },
                    },
                },
                changes = {
                    {
                        property = "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.4.text_visible",
                        value = true
                    },
                },
            },
            {
                condition={
                   type = "simplecheck",
                   trigger= 2,
                   value = true,
                    },
                changes = {
                    {
                        property= "sub.3.text_visible",
                        value = false
                    },
                    {
                        property= "sub.5.text_visible",
                        value = true
                    },
                },
            }, 
    }
), 
}