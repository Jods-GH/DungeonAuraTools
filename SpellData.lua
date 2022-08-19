local _, JDT = ...
print("Jods Dungeon Tools")

JDT.SpellList = {
    Debuffs= {
        DebuffName1 = {
           spellId = 1234,
           enabled = false,
           type = "Magic"
        },
        DebuffName2 = {
            spellId = 12345,
            enabled = false,
            type = "Magic",
            doSound = "Debuff",
            zoneId = "1234",
            showStacks = true,
            groupType = JDT.GroupTypes.dot
         }
    },
    Aoe = {
        AoeName1 = {
            spellId = 1234,
            enabled = false
         },
        AoeName2 = {
            spellId = 12345,
            enabled = false
         }
    },


}