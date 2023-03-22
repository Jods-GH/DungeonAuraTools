local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.MistOfPandaria = JDT.SpellList.MistOfPandaria or {}
JDT.SpellList.MistOfPandaria.Dungeons = JDT.SpellList.MistOfPandaria.Dungeons or {}


JDT.SpellList.MistOfPandaria.Dungeons.TempleOfTheJadeSerpent = {
    groupName = "[TOTJS",
    zoneId = "g201", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 313, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.MistOfPandaria.Dungeons.TempleOfTheJadeSerpent.Bosses

bosses.boss1 = { -- Wise Mari
    EncounterId = "1418", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.LaserCast] ={
            Hydrolance= {
                enabled = true,
                spellId = 106055, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "106055",

                    },

                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            CallWater = {
                enabled = true,
                spellId = 106526,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "106526",
                    },

                }
            },
        },
        [JDT.GroupTypes.PhaseChangeCast] = {
            BubbleBurst = {
                enabled = true,
                spellId = 106612,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "106612",
                    },
                }
            },
        },
    }
}

bosses.boss2 = { --liu flameheart
    EncounterId = "1416", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.Dot] ={
            SerpentStrike = {
                enabled = true,
                type = JDT.AuraTypes.magic,
                spellId = 106823, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "106823",

                    },

                }
            },
            JadeSerpentStrike = {
                enabled = true,
                spellId = 106841, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "106841",

                    },

                }
            }
        },
        [JDT.GroupTypes.RunOutUnitSpellcastSucceeded] ={
            SerpentKick = {
                enabled = true,
                spellId = 106856, -- for spellname etc
                triggerData = {
                    {
                        spellId = "106823",
                        duration = "1"

                    },

                }
            },
            JadeSerpentKick = {
                enabled = true,
                spellId = 106864, -- for spellname etc
                triggerData = {
                    {
                        spellId = "106864",
                        duration = "1"

                    },

                }
            }
        },
        [JDT.GroupTypes.SpreadCast] = {
            JadeFire = {
                enabled = true,
                spellId = 107045,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "107045",
                    },

                }
            },
        },
    }
}

bosses.boss3 = { -- sha of doubt
    EncounterId = "1439", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.PlayerGroupDebuffSpread] ={
            TouchofNothingness = {
                enabled = true,
                spellId = 106113, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "106113",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "106113",

                    },

                }
            }
        },
        [JDT.GroupTypes.KillAddDebuff] ={
            GatheringDoubt= {
                enabled = true,
                spellId = 117570, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "117570",
                        ignoreSelf = false,

                    },

                }
            }
        },
        
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.Dot] ={
            SerratedSlash = {
                enabled = true,
                type = JDT.AuraTypes.bleed,
                spellId = 128051, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "128051",

                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            Agony = {
                enabled = true,
                spellId = 114571,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "114571",
                    }

                }
            },
            Hydrolance = {
                enabled = true,
                spellId = 397888,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "397888",
                    }

                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            TidalBurst = {
                enabled = true,
                spellId = 397889,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "397889",
                    },

                }
            },
        },

        [JDT.GroupTypes.VoidCast] = {
            SurgingDeluge = {
                enabled = true,
                spellId = 397881,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "397881",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff] = {
            SettingSunKick = {
                enabled = true,
                spellId = 397904,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "397904",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "397904",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            LegSweep = {
                enabled = true,
                spellId = 397899, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "397899",

                    },

                }
            },
            TerritorialDisplay= {
                enabled = true,
                spellId = 396001, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396001",

                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableAoeFear] ={
            HauntingScream= {
                enabled = true,
                spellId = 395859, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "395859",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            FlamesofDoubt = {
                enabled = true,
                spellId = 398300,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "398300",
                    }

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            SummonSha = {
                enabled = true,
                spellId = 398296,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "398296",
                    },

                }
            },
        },
        [JDT.GroupTypes.HealthDeBuff] = {
            StaggeringBlow = {
                enabled = true,
                spellId = 396019,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396019",
                    },

                }
            },
        },
        
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            ViciousPeck = {
                enabled = true,
                spellId = 396007,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396007",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "396007",
                    },

                }
            },
            DefilingMist = {
                enabled = true,
                spellId = 397914,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "397914",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "397914",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoBreakShield] = {
            GoldenBarrier = {
                enabled = true,
                spellId = 396020,
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396020",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396020",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableSleepCastIntoDebuff] ={
            SleepySoliloquy= {
                enabled = true,
                spellId = 395872, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "395872",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "395872",

                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            FitofRage = {
                enabled = true,
                spellId = 396018,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396018",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            CatNap = {
                enabled = true,
                spellId = 396073,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396073",
                    },

                }
            },
        },
        [JDT.GroupTypes.WashAway] = {
            WashAway = {
                enabled = true,
                spellId = 397783,
                triggerData = {
                    {
                        spellId = "397797",
                        duration = "3.3"
                    },
                    {
                        spellId = "397783",
                        initialDelay = "3.3",
                        RunAmount = "3",
                        duration = "5",
                    },
                },
            }
        },
        [JDT.GroupTypes.LosCastIntoDot ] = {
            TaintedRipple = {
                enabled = true,
                spellId = 397878,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "397878",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "397878",
                    },

                }
            },
        },
        
    }
}