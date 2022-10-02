local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.CourtOfStars = {
    groupName = "[COS",
    zoneId = "g252", 
    EncounterJournalID = 800, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.CourtOfStars.Bosses

bosses.boss1 = { 
    EncounterId = "1868", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.ShockWave] = {
            ResonantSlash = {
                enabled = true,
                spellId = 207261,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207261",
                    }

                }
            },

        },
        [JDT.GroupTypes.CastIntoJumpWithDebuff] = {
            ArcaneLockdown = {
                enabled = true,
                spellId = 207278,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207278",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "207278",
                    }

                }
            },
        },
        [JDT.GroupTypes.AddSummonWithBuffStacks] = {
            SignalBeacon = {
                enabled = true,
                spellId = 207806,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207806",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227147",
                    }

                }
            },
        },
        [JDT.GroupTypes.BuffOrDeathCast] = {
            FlaskOFTheSolemnNight = {
                enabled = true,
                spellId = 207815,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207815",
                    }

                }
            },

        },

    }
}
bosses.boss2 = { 
    EncounterId = "1869", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.CastIntoAoeDebuffWithNextTick] ={
            BurningIntenisity = {
                enabled = true,
                spellId = 207906, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207906",

                    },
                    {
                        duration = "3",
                        spellId = "207907",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207906",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoVoidsWithAdds] ={
            InfernalEruption = {
                enabled = true,
                spellId = 211457, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "211457",

                    },
                    {
                        duration = "2",
                        spellId = "211457",

                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptableCastIntoHealthDeBuff] ={
            InfernalEruption = {
                enabled = true,
                spellId = 208165, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "208165",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "208165",

                    },

                }
            }
        },


    }
}
bosses.boss3 = { 
    EncounterId = "1870", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.ShockWave] = {
            PiercingGale = {
                enabled = true,
                spellId = 209628,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "209628",
                    }

                }
            },

        },    
        [JDT.GroupTypes.OutrangeCast] = {
            SlicingMaelstrom = {
                enabled = true,
                spellId = 209676,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "209676",
                    },

                }
            },
        },    
        [JDT.GroupTypes.CastPlaceMirrorIfTargetedIntoBleed] ={
            BladeSurge= {
                enabled = true,
                spellId = 209602, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "209602",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "209602",

                    },

                }
            },
        },

    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.ImportantBellCast] = {
            ResonantSlash = {
                enabled = true,
                spellId = 210261,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "210261",
                    }

                }
            },

        },
        [JDT.GroupTypes.InteruptableStunCast] ={
            Hinder= {
                enabled = true,
                spellId = 215204, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        exactSpellId = true,
                        spellId = "215204",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        exactSpellId = true,
                        spellId = "212773",

                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] ={
            QuellingStrike= {
                enabled = true,
                spellId = 209027, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "209027",

                    },

                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            Fortification = {
                enabled = true,
                spellId = 209033,
                RoleLoad =  "TANK",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "209033",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            ManaFang= {
                enabled = true,
                spellId = 209516, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "209516",

                    },

                }
            }
        },
        [JDT.GroupTypes.ExplodingCombatlogStart] ={
            WildDetonation = {
                enabled = true,
                glowtype = "Ants",
                showGlow = true,
                spellId = 209477, -- for spellname etc
                triggerData = {
                    {
                        duration = "2.5",
                        spellId = "209477",

                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            DrainMagic = {
                enabled = true,
                spellId = 209485,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "209485",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            NightfallOrb= {
                enabled = true,
                spellId = 209410,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "209410",
                    },

                }
            },
            ChargedSmash= {
                enabled = true,
                spellId = 209495,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "209495",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            SealMagic = {
                enabled = true,
                spellId = 209404, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "209404",

                    },

                }
            },
        },
        [JDT.GroupTypes.ShockWave] = {
            ChargedBlast = {
                enabled = true,
                spellId = 212031,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "212031",
                    }

                }
            },

        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            Reinvigorate = {
                enabled = true,
                spellId = 225100,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "225100",
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableSuppresion] ={
            Suppress= {
                enabled = true,
                spellId = 209413, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        exactSpellId = true,
                        spellId = "209413",

                    },

                }
            },
        },
        [JDT.GroupTypes.StunableStormCastIntoBuff] ={
            EyeStorm= {
                enabled = true,
                spellId = 212784, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "212784",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "212784",

                    },

                }
            },
        },
        [JDT.GroupTypes.LaserCast] ={
            SearingGlare= {
                enabled = true,
                spellId = 211299, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "211299",

                    },

                }
            }
        },
        [JDT.GroupTypes.HealthDeBuff] = {
            ShadowSlash = {
                enabled = true,
                spellId = 211473,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "211473",
                    }

                }
            },
        },
        -- weiter bei bewitch
    }
}