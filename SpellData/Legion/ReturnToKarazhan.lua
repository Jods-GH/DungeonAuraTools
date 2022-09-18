local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}

JDT.SpellList.Legion.ReturnToKarazhan = {
    groupName = "[KARAZHAN ",
    zoneId = "g260", 
    EncounterJournalID = 860,
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.ReturnToKarazhan.Bosses

bosses.boss1 = { 
    EncounterId = "1957", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = " - LOWER] 01 ",
    Auras = {
        
        [JDT.GroupTypes.CastIntoChaseWithBuffEffect] = {
            SevereDusting = {
                enabled = true,
                spellId = 228221,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "228221",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "228221",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "228221",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "228225",
                    },


                }
            },

        },
    }
}