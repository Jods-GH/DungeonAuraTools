local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.Uldaman = {
    groupName = "[UDM",
    zoneId = "g429", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1197, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.Uldaman.Bosses

bosses.boss1 = {  -- 	The Lost Dwarves
    EncounterId = "2555", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        -- general
        [JDT.GroupTypes.Dance] ={
            LongboatRaid = {
                enabled = true,
                spellId = 375924, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "375924",

                    },

                }
            }
        },
        -- olaf
        [JDT.GroupTypes.ShieldCast] ={
            DefensiveBulwark = {
                enabled = true,
                type = JDT.AuraTypes.interrupt,
                spellId = 369602, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369602",

                    },

                }
            }
        },
        [JDT.GroupTypes.SpreadCast] = {
            RicochetingShield = {
                enabled = true,
                spellId = 369677,
                triggerData = {
                  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369677",
                    },

                }
            },
        },
        --baelog
        [JDT.GroupTypes.ShockWave] = {
            HeavyArrow = {
                enabled = true,
                spellId = 369573,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369573",
                    }

                }
            },

        },
        [JDT.GroupTypes.Frontal] = {
            WildCleave = {
                enabled = true,
                spellId = 369563,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369563",
                    }

                }
            },
        },

        -- eric the swift

        [JDT.GroupTypes.TargetedCast] = {
            DaggerThrow = {
                enabled = true,
                spellId = 369781,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369781",
                    }

                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            Skullcracker= {
                enabled = true,
                spellId = 369791, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369791",

                    },

                }
            },
        },

    }
}

bosses.boss2 = {  -- Bromach
    EncounterId = "2556", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
       
    }
}
bosses.boss3 = {  -- Sentinel Talondras
    EncounterId = "2557", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
       
        
    }
}
bosses.boss4 = {  -- Emberon
    EncounterId = "2558", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        
    }
}
bosses.boss5 = {  -- Chrono-Lord Deios
    EncounterId = "2559", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 

    }
}