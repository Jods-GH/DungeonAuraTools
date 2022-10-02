local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.HallsOfValor = {
    groupName = "[HOV",
    --zoneId = "g252", 
    EncounterJournalID = 721, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.HallsOfValor.Bosses

bosses.boss1 = { --hymdall
    EncounterId = "1805", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.Frontal] = {
            BloodlettingSweep = {
                enabled = true,
                spellId = 193092,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193092",
                    }

                }
            },

        },
        [JDT.GroupTypes.SummonAxeCast] ={
            DancingBlade = {
                enabled = true,
                spellId = 193235, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193235",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            HornofValor = {
                enabled = true,
                spellId = 191284, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "191284",

                    },

                }
            }
        },
       
    }
}

bosses.boss2 = { --hyrja
    EncounterId = "1806", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
       
    }
}

bosses.boss3 = { --fenryr
    EncounterId = "1807", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
       
    }
}

bosses.boss4 = { --skovald
    EncounterId = "1808", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
       
    }
}

bosses.boss5 = { -- odyn
    EncounterId = "1809", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 05 ",
    Auras = {
        
       
    }
}