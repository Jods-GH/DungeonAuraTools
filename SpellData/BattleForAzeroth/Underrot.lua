local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.Underrot= {
    groupName = "[UR",
    zoneId = "g282", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1022, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.Underrot.Bosses

bosses.boss1 = {  -- Elder Leaxa
    EncounterId = "2111", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.VoidCast] = {
            CreepingRot = {
                enabled = true,
                spellId = 260894,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260894",
                    },

                }
            },
            SanguineFeast = {
                enabled = true,
                spellId = 264757,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "264757",
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableCast] = {
            BloodBolt = {
                enabled = true,
                spellId = 260879,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260879",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            BloodMirror = {
                enabled = true,
                spellId = 264603,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "264603",
                    },

                }
            },
        },
        
    }
}
bosses.boss2 = {  -- Cragmaw the Infested
    EncounterId = "2118", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.Charge] ={
            Charge= {
                enabled = true,
                spellId = 260292, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260292",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Tantrum = {
                enabled = true,
                spellId = 260333, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260333",

                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            Indigestion = {
                enabled = true,
                spellId = 260793,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260793",
                    }

                }
            },

        },
    }
}
bosses.boss3 = {  -- Sporecaller Zancha
    EncounterId = "2112", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            Shockwave = {
                enabled = true,
                spellId = 272457,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "272457",
                    }

                }
            },
        },
        [JDT.GroupTypes.DanceOrSoakIfDebuff] ={
            Upheaval = {
                enabled = true,
                spellId = 274213, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "274213",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "259718",

                    },

                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            FesteringHarvest = {
                enabled = true,
                spellId = 259732, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259732",

                    },

                }
            }
        },
    }
}
bosses.boss4 = {  -- Unbound Abomination
    EncounterId = "2123", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            VileExpulsion = {
                enabled = true,
                spellId = 269843,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "269843",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            PutridBlood = {
                enabled = true,
                spellId = 269301, -- for spellname etc
                showStacks = 1,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "269301",

                    },

                }
            }
        },
        [JDT.GroupTypes.StackCast] = {
            CleansingLight = {
                enabled = true,
                spellId = 269310,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "269310",
                    }

                }
            },

        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
      
    }
}