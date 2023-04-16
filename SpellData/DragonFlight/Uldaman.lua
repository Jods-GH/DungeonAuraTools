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
        [JDT.GroupTypes.CastIntoBuff] ={
            Bloodlust = {
                enabled = true,
                spellId = 369754, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369754",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369754",
                    },

                }
            }
        },
        [JDT.GroupTypes.AddSummonCombatlog] = {
            CalloftheDeep = {
                enabled = true,
                spellId = 369605,
                triggerData = {
                  {
                        spellId = "369605",
                        duration = "2",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            ThunderingSlam = {
                enabled = true,
                spellId = 369703, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369703",

                    },

                }
            },
        }, 
        [JDT.GroupTypes.SpreadCast] = {
            ChainLightning = {
                enabled = true,
                spellId = 369675,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "369675",
                    },

                }
            },
        },
        [JDT.GroupTypes.SummonTotemCastIntoKillWhileAlive] = {
            QuakingTotem = {
                enabled = true,
                spellId = 369615,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "382303",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "186696",
            
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            StoneSpike = {
                enabled = true,
                spellId = 369674, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "369674",

                    },

                }
            },
        },
        

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