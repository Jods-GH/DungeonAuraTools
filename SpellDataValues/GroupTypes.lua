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


JDT.GroupTypes.Templates = JDT.GroupTypes.Templates or {}

JDT.GroupTypes.Templates.Dot = {
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

JDT.GroupTypes.Templates.Frontal = {
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

JDT.GroupTypes.Templates.SpinToWin= {
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

JDT.GroupTypes.Templates.ShieldInc =  {
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

JDT.GroupTypes.Templates.PlayerGroupDebuffSpread =  {
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

JDT.GroupTypes.Templates.EnergyTrackSoonCast=  {
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

JDT.GroupTypes.Templates.BossCastIntoBuff = {
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

JDT.GroupTypes.Templates.BossCastIntoCollect = {
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

JDT.GroupTypes.Templates.CollectBuff = {
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

JDT.GroupTypes.Templates.RunOut = {
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

JDT.GroupTypes.Templates.Dance= {
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

JDT.GroupTypes.Templates.CastIntoCastSuccessDance= {
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

JDT.GroupTypes.Templates.CastIntoPlayerGroupDebuffSpread =  {
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
JDT.GroupTypes.Templates.BreakShieldIntoInterrupt = {
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

JDT.GroupTypes.Templates.DanceOrSoakIfDebuff = {
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

JDT.GroupTypes.Templates.ChainToKill = {
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

JDT.GroupTypes.Templates.UnavoidableAoe = {
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


JDT.GroupTypes.Templates.BossCastIntoStack = {
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

JDT.GroupTypes.Templates.VoidSoak= {
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

JDT.GroupTypes.Templates.Dispose=  {
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

JDT.GroupTypes.Templates.HasteBuff = {
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

JDT.GroupTypes.Templates.DmgBuff = {
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

JDT.GroupTypes.Templates.InterruptableTargetedCast= {
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

JDT.GroupTypes.Templates.TargetedCast= {
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

JDT.GroupTypes.Templates.InterruptableSuppresion= {
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
JDT.GroupTypes.Templates.InterruptableKickStomp= {
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
JDT.GroupTypes.Templates.RoomSplit = {
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

JDT.GroupTypes.Templates.KickOrDie =  {
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
