local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.HallsOfInfusion = {
    groupName = "[HOI",
    zoneId = "g434", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)2082
    EncounterJournalID = 1204, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.HallsOfInfusion.Bosses

bosses.boss1 = {  -- Watcher Irideus
    EncounterId = "2615", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.Dot] = {
            PurifyingBlast= {
                enabled = true,
                spellId = 389443,
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "389443",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoRemoveShield] = {
            AblativeBarrier = {
                enabled = true,
                spellId = 383840,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "383840",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "383840",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            PowerOverload= {
                enabled = true,
                spellId = 389179, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "389179",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "389179",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "389179",
                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoDanceWhileDebuffed] ={
            SparkVolley= {
                enabled = true,
                spellId = 384351, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384351",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384351",

                    },

                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            StaticSurge = {
                enabled = true,
                spellId = 384014, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384014",

                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            TitanicFist = {
                enabled = true,
                spellId = 384524,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384524",
                    }

                }
            },

        },
    }
}

bosses.boss2 = {  -- Gulping Goliath
    EncounterId = "2616", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.RunOut] ={
            BellySlam = {
                enabled = true,
                spellId = 385531, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385531",

                    },

                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            Gulp = {
                enabled = true,
                spellId = 385551,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385551",
                    },
                }
            },
        },
        
        [JDT.GroupTypes.Dance] ={
            OverpoweringCroak= {
                enabled = true,
                spellId = 385181, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385181",

                    },

                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            ToxicEffluvia = {
                enabled = true,
                spellId = 385442, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385442",

                    },

                }
            },
        },
    }
}
bosses.boss3 = {  -- Khajin the Unyielding
    EncounterId = "2617", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.CastWithSafeDeBuffDuringCast] = {
            Hailstorm = {
                enabled = true,
                spellId = 386757,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "386757",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386757",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            GlacialSurge= {
                enabled = true,
                spellId = 386559, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386559",

                    },

                }
            }
        },
        [JDT.GroupTypes.SlowDebuff] ={
            FrostShock = {
                enabled = true,
                spellId = 385963, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "385963",

                    },

                }
            }
        },
    }
}
bosses.boss4 = {  -- Primal Tsunami
    EncounterId = "2618", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.GoMeleeCast ] ={
            Undertow = {
                enabled = true,
                spellId = 389875, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "389875",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            TempestsFury = {
                enabled = true,
                spellId = 388424, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388424",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Submerge = {
                enabled = true,
                spellId = 387585, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387585",

                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            InfusedGlobules= {
                enabled = true,
                spellId = 387559, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387559",

                    },
                    {
                        spellId = "387559",
                        duration = "11"

                    },

                }
            }
        },
        [JDT.GroupTypes.KnockCast] ={
            SquallBuffet = {
                enabled = true,
                spellId = 387504, -- for spellname etc
                RoleLoad = {
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387504",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.TankBusterCast] = {
            FocusedDeluge = {
                enabled = true,
                spellId = 387571,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387571",
                    },
                }
            },
        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            SpearFlurry = {
                enabled = true,
                spellId = 393432,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "393432",
                    }

                }
            },
            Dazzle = {
                enabled = true,
                spellId = 374563,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374563",
                    }

                }
            },
            GustingBreath = {
                enabled = true,
                spellId = 375348,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "375348",
                    }

                }
            },
            OceanicBreath = {
                enabled = true,
                spellId = 375351,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "375351",
                    }

                }
            },
            TectonicBreath = {
                enabled = true,
                spellId = 375327,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "375327",
                    }

                }
            },

        },
        [JDT.GroupTypes.Dot] = {
            GushingWound= {
                enabled = true,
                spellId = 393444,
                type = "bleed",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "393444",
                    },

                }
            },
        },
        [JDT.GroupTypes.DmgReductionShoutIntoDebuff] = {
            DemoralizingShout = {
                enabled = true,
                spellId = 374339,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374339",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "374339",
                    }

                }
            },
        },
        [JDT.GroupTypes.ShieldInc] ={
            EarthShield = {
                enabled = true,
                spellId = 374066, -- for spellname etc
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374066",

                    },

                }
            },
            AqueousBarrier = {
                enabled = true,
                spellId = 377402, -- for spellname etc
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "377402",

                    },

                }
            },
        },
        [JDT.GroupTypes.Jump] ={
            SeismicSlam = {
                enabled = true,
                spellId = 374073, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374073",

                    },

                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            BlastingGust = {
                enabled = true,
                spellId = 374080, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374080",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            Expulse = {
                enabled = true,
                spellId = 374045, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374045",

                    },

                }
            },
            Inundate = {
                enabled = true,
                spellId = 388882, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388882",

                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableSuppresion] ={ 
            BindingWinds = {
                enabled = true,
                spellId = 391610, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "391610",

                    },

                }
            }
        },
        [JDT.GroupTypes.BuffCast] = {
            HardLightBaton = {
                enabled = true,
                spellId = 395694,
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "395694",
                    },

                }
            },
        },
        [JDT.GroupTypes.KillDebuffWithStacksAsProgress] = {
            GulpSwogToxin = {
                enabled = true,
                spellId = 374389,
                customTextInfo = "10",
                type = JDT.AuraTypes.poison,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "374389",
                    },

                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            GaleForceCharge= {
                enabled = true,
                spellId = 374863, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374863",

                    },

                }
            },
        },
        [JDT.GroupTypes.SpinToWin] = {
            WhirlingFury = {
                enabled = true,
                spellId = 375079,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "375079",
                    }

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            ZephyrsCall = {
                enabled = true,
                spellId = 374823,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374823",
                    },

                }
            },
            TidalDivergence = {
                enabled = true,
                spellId = 377341,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "377341",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            Cauterize = {
                enabled = true,
                spellId = 374699,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374699",
                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            MagmaCrush = {
                enabled = true,
                spellId = 374735,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374735",
                    },

                }
            },
            Thunderstorm = {
                enabled = true,
                spellId = 385141,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385141",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoRoot] ={
            MoltenSubduction= {
                enabled = true,
                spellId = 374724, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374724",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "374724"
                    },

                }
            }
        },
        [JDT.GroupTypes.TargetedCast] = {
            PyreticBurst = {
                enabled = true,
                spellId = 374706,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374706",
                    }

                }
            },
            WindBuffet = {
                enabled = true,
                spellId = 385036,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385036",
                    }

                }
            },
            ContainmentBeam = {
                enabled = true,
                spellId = 374020, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374020",

                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            RumblingEarth = {
                enabled = true,
                spellId = 375384, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "375384",

                    },

                }
            },
            FlashFlood = {
                enabled = true,
                spellId = 390290, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "390290",

                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableVolleyIntoDiseaseDot] = {
            CreepingMold = {
                enabled = true,
                spellId = 391613,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "391613",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "391613",
                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            BoilingRage = {
                enabled = true,
                spellId = 377384,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "377384",
                    },

                }
            },
        },
    }
}