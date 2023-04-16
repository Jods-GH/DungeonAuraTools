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
        [JDT.GroupTypes.KnockCast] ={
            CrushingStomp = {
                enabled = true,
                spellId = 372701, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372701",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            ResonatingOrb= {
                enabled = true,
                spellId = 372623, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372623",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "382071",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "382071",
                    },

                }
            }
        },
        [JDT.GroupTypes.Dot] = {
            EarthenShards = {
                enabled = true,
                spellId = 372718,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "372718",
                    },

                }
            },
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            TitanicEmpowerment = {
                enabled = true,
                spellId = 372719, -- for spellname etc
                triggerData = {
                    {
                        spellIdList = {"372719"},
                        extraUnit = "boss1"

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372719",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
    }
}
bosses.boss4 = {  -- Emberon
    EncounterId = "2558", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.SpreadCast] = {
            UnstableEmbers = {
                enabled = true,
                spellId = 369110,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369110",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            PurgingFlames = {
                enabled = true,
                spellId = 368990, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "368990",

                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            SearingClap = {
                enabled = true,
                spellId = 369061,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "369061",
                    }

                }
            },
        },
    }
}
bosses.boss5 = {  -- Chrono-Lord Deios
    EncounterId = "2559", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.VoidCastWithSuccess] = {
            EternityOrb = {
                enabled = true,
                spellId = 376292,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376292",
                    },
                    {
                        spellId = "376292",
                        duration = "5.5"

                    },

                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            WingBuffet = {
                enabled = true,
                spellId = 376049, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376049",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            SandBreath = {
                enabled = true,
                spellId = 375727,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "375727",
                    }

                }
            },
        },
        [JDT.GroupTypes.PlayerGroupDebuffSpread] ={
            TimeSink= {
                enabled = true,
                spellId = 377405, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "377405",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "377405",

                    },

                }
            }
        },
        [JDT.GroupTypes.VoidSoak] ={
            RewindTimeflow = {
                enabled = true,
                spellId = 376208, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376208",

                    },

                }
            }
        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 

    }
}