local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.AlgetharAcademy = {
    groupName = "[AA",
    zoneId = "g433", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1201, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.AlgetharAcademy.Bosses

bosses.boss1 = { -- Vexamus
    EncounterId = "2562", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.OrbSoak] ={
            ArcaneOrbs = {
                enabled = true,
                spellId = 387691, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387691",

                    },

                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            ArcaneFissure = {
                enabled = true,
                spellId = 388537,
                triggerData = {
                  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388537",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            ManaBombs= {
                enabled = true,
                spellId = 386173, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386173",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "386173",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "386173",
                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            ArcaneExpulsion = {
                enabled = true,
                spellId = 385958,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385958",
                    }

                }
            },

        },
       
    }
}

bosses.boss2 = { -- Overgrown Ancient
    EncounterId = "2563", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            Germinate = {
                enabled = true,
                spellId = 388796, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388796",

                    },

                }
            }
        },
        [JDT.GroupTypes.Dot] = {
            LasherToxin = {
                enabled = true,
                spellId = 389033,
                type = JDT.AuraTypes.poison,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "389033",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            BurstForth = {
                enabled = true,
                spellId = 388923,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388923",
                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            BranchOut = {
                enabled = true,
                spellId = 388623,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388623",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableCastIntoRoot] = {
            EntanglingRoots = {
                enabled = true,
                spellId = 371453,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "371453",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "371453",
                    }

                }
            },

        }, 
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            Barkbreaker = {
                enabled = true,
                spellId = 388544,
                triggerData = {
                    [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388544",
                    },
                    [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "388544",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            HealingTouch = {
                enabled = true,
                spellId = 396640,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396640",
                    },

                }
            },
        },
    }
}
bosses.boss3 = { -- Crawth
    EncounterId = "2564", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.IncreasedDmgTakenChannel] = {
            Firestorm = {
                enabled = true,
                spellId = 376448,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376448",
                    }
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            OverpoweringGust = {
                enabled = true,
                spellId = 377034,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "377034",
                    }

                }
            },

        },
        [JDT.GroupTypes.InteruptShout] = {
            DeafeningScreech = {
                enabled = true,
                spellId = 377004,
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "377004",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            SavagePeck = {
                enabled = true,
                spellId = 376997,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "376997",
                    },

                }
            },
        },
    }
}

bosses.boss4 = { -- Echo of Doragosa
    EncounterId = "2565", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.Frontal] = {
            AstralBreath = {
                enabled = true,
                spellId = 374361,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374361",
                    }

                }
            },

        },
        [JDT.GroupTypes.RunOut] ={
            PowerVacuum = {
                enabled = true,
                spellId = 388822, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388822",

                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            EnergyBomb = {
                enabled = true,
                spellId = 374343, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374343",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "374343",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "374343",
                    },

                }
            }
        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = {  
        [JDT.GroupTypes.TargetedCast] = {
            Surge = {
                enabled = true,
                spellId = 388862,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388862",
                    }

                }
            },
            ViciousLunge = {
                enabled = true,
                spellId = 389054,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "389054",
                    }

                }
            },
            StormSlash = {
                enabled = true,
                spellId = 377991,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "377991",
                    }

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            ViciousAmbush = {
                enabled = true,
                spellId = 388942,
                triggerData = {
                  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388942",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            SeveringSlash= {
                enabled = true,
                spellId = 388911,
                type = "bleed",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "388911",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            ArcaneRain = {
                enabled = true,
                spellId = 388886, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388886",

                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            Riftbreath = {
                enabled = true,
                spellId = 388976,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388976",
                    }

                }
            },
            Gust = {
                enabled = true,
                spellId = 377383,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "377383",
                    }

                }
            },
        },
        [JDT.GroupTypes.InteruptableSleepCastIntoDebuff] ={
            MonotonousLecture= {
                enabled = true,
                spellId = 388392, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388392",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "388392",

                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            DeadlyWinds = {
                enabled = true,
                spellId = 378003,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "378003",
                    },

                }
            },
            DetonationSeeds = {
                enabled = true,
                spellId = 390912,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "390912",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            ExpelIntruders = {
                enabled = true,
                spellId = 377912, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "377912",

                    },

                }
            },
            MysticBlast = {
                enabled = true,
                spellId = 396812, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396812",

                    },

                }
            },
        },
        [JDT.GroupTypes.SpinToWin] = {
            AstralWhirlwind = {
                enabled = true,
                spellId = 387910,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387910",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptShout] = {
            DisruptingPulse = {
                enabled = true,
                spellId = 387862,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387862",
                    },
                {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBombCastIntoSpread] ={
            AstralBomb= {
                enabled = true,
                spellId = 387843, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387843",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "387843",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "387843",
                    },

                }
            }
        },
       
    }
}