local _, JDT = ...

JDT.GroupTypes = JDT.GroupTypes  or {}

JDT.GroupTypes.frontal = "Frontal"
JDT.GroupTypes.dot = "Dot"

JDT.GroupTypes.Templates = JDT.GroupTypes.Templates or {}

JDT.GroupTypes.Templates.Dot = {
    AuraType = "AuraIcon",
    triggerType = "Buffs",
    BuffTypes = "debuff",
    activationType = JDT.Templates.Triggers.ActivationTypes["und"],
}

JDT.GroupTypes.Templates.Frontal = {
    AuraType = "AuraIcon",
    triggerType = "Cast",
    doSound = JDT.SoundTypes.frontal,
    activationType = JDT.Templates.Triggers.ActivationTypes["und"],
}