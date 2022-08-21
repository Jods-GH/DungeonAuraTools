local _, JDT = ...

JDT.GroupTypes = JDT.GroupTypes  or {}

JDT.GroupTypes.frontal = "Frontal"
JDT.GroupTypes.dot = "Dot"
JDT.GroupTypes.SpinToWin = "SpinToWin"
JDT.GroupTypes.ShieldInc = "ShieldInc"
JDT.GroupTypes.ShieldInc = "PlayerGroupDebuffSpread"

JDT.GroupTypes.Templates = JDT.GroupTypes.Templates or {}

JDT.GroupTypes.Templates.Dot = {
    AuraType = "AuraIcon",
    triggers = {
         {
            triggerType = "Buffs",
            BuffTypes = "debuff",
        },
    },
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.GroupTypes.Templates.Frontal = {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = "Cast", 
        },
    },
    doSound = JDT.SoundTypes.frontal,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.GroupTypes.Templates.SpinToWin= {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = "Cast", 
        },
    },
    doSound = JDT.SoundTypes.avoid,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.GroupTypes.Templates.ShieldInc =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = "Cast", 
        },
    },
    doSound = JDT.SoundTypes.soon,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}

JDT.GroupTypes.Templates.PlayerGroupDebuffSpread =  {
    AuraType = "AuraIcon",
    triggers = {
        {
            triggerType = "Buffs",
            BuffTypes = "debuff",
            unit = "Player"
        },
        {
            triggerType = "Buffs",
            BuffTypes = "debuff",
            unit = "SmartGroup"
        }
    },
    doSound = JDT.SoundTypes.soon,
    activationType = JDT.Templates.Triggers.ActivationTypes.und,
}