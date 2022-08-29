local _, JDT = ...

JDT.GroupTypes = JDT.GroupTypes  or {}

JDT.GroupTypes.Frontal = "Frontal"
JDT.GroupTypes.Dot = "Dot"
JDT.GroupTypes.SpinToWin = "SpinToWin"
JDT.GroupTypes.ShieldInc = "ShieldInc"
JDT.GroupTypes.PlayerGroupDebuffSpread = "PlayerGroupDebuffSpread"
JDT.GroupTypes.EnergyTrackSoonCast = "EnergyTrackSoonCast"
JDT.GroupTypes.BossCastIntoBuff = "BossCastIntoBuff"
JDT.GroupTypes.BossCastIntoCollect = "BossCastIntoCollect"
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
JDT.GroupTypes.DmgBuff  = "DmgBuff"
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

JDT.Templates.GroupTypes.PlayerGroupDebuffSpread =  {
    AuraType = "AuraIcon",
    triggers = {
        [1] = {
            triggerType = JDT.Templates.Triggers.TriggerTypes.buffs,
            BuffTypes = "debuff",
        },
        [2] ={
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
    doSound = JDT.SoundTypes.spread,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
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

JDT.Templates.GroupTypes.BossCastIntoBuff = {
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

JDT.Templates.GroupTypes.BossCastIntoCollect = {
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
            isactive = true,
        }, 
        {   
            value = JDT.getLocalisation("Interrupt"),  
            isactive = false,
        }, 

    },
    useTooltip = 2,
    type = "interrupt",
    doSound = JDT.SoundTypes.highEnergy,
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
                            value = true,
                        },
                        {
                            type = "simplecheck",
                            trigger= 2,
                            value = false,
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
                        property = "sub.6.text_visible",
                        value = true,
                    },
                    {
                        property = "sub.7.border_visible",
                        value = true,
                    },
                },
        }
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
            value = JDT.getLocalisation("+ dmg"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
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
    type = "interrupt",
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
    type = "interrupt",
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
    type = "interrupt",
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
    type = "interrupt",
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
            value = JDT.getLocalisation("Carrying"),
            isactive = true,
        }, 
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
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
            subeventSuffix = "_CAST_START",
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
    type = "interrupt",
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
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