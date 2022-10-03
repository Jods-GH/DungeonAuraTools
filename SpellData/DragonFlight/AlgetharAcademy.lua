local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.AlgetharAcademy = {
    groupName = "[AA",
    --zoneId = "g423", 
    EncounterJournalID = 1201, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.AlgetharAcademy.Bosses

bosses.boss1 = { -- VExamus
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

bosses.boss4 = { -- Crawth
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
    }
}