local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}

JDT.SpellList.Shadowlands.Tazavesh = {
    groupName = "[TAZAVESH] ",
    zoneId = "g423", 
}

JDT.SpellList.Shadowlands.Tazavesh.boss1 = {
    EncounterId = 2425,
    additionalName = "01 "
    Debuffs= {
        DebuffName1 = {
           spellId = 1234,
           enabled = false,
           type = JDT.AuraTypes.magic,
           groupType = JDT.GroupTypes.dot,
        },
        DebuffName2 = {
            spellId = 57723,
            enabled = false,
            type =  JDT.AuraTypes.magic,
            doSound = JDT.SoundTypes.debuff,
            showStacks = true,
            groupType = JDT.GroupTypes.dot,
         }
    },
    Aoe = {
        AoeName1 = {
            spellId = 1234,
            enabled = false,
            groupType = JDT.GroupTypes.frontal,
         },
        AoeName2 = {
            spellId = 12345,
            enabled = false,
            groupType = JDT.GroupTypes.frontal,
         }
    },


}