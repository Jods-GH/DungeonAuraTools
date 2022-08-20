local _, JDT = ...


JDT.SpellList = {
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
            zoneId = "1234",
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