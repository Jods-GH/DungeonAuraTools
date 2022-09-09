local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}

JDT.SpellList.BattleForAzeroth.OperationMechagon = {
    groupName = "[MECHAGON",
    zoneId = "g399", 
    EncounterJournalID = 1178,
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.OperationMechagon.Bosses

bosses.boss1 = { 
    EncounterId = "2290",
    additionalName = " JUNKYARD] 01 ",
    Auras = {
        
        [JDT.GroupTypes.StackCast] = {
            ChargedSmash = {
                enabled = true,
                spellId = 297254,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "297254",
                    }

                }
            },

        },
    }
}