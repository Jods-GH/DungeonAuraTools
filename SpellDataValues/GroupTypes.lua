local _, JDT = ...

JDT.GroupTypes = JDT.GroupTypes  or {}

JDT.GroupTypes.frontal = "Frontal"
JDT.GroupTypes.dot = "Dot"
JDT.GroupTypes.SpinToWin = "SpinToWin"
JDT.GroupTypes.ShieldInc = "ShieldInc"
JDT.GroupTypes.PlayerGroupDebuffSpread = "PlayerGroupDebuffSpread"
JDT.GroupTypes.EnergyTrackSoonCast = "EnergyTrackSoonCast"
JDT.GroupTypes.BossCastIntoBuff = "BossCastIntoBuff"
JDT.GroupTypes.BossCastIntoCollect = "BossCastIntoCollect"
JDT.GroupTypes.CollectBuff = "CollectBuff"


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
            value = JDT.getLocalisation("on").. "%2.unit",  
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