local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.CityOfThreads = {
    groupName = "[COT",
    zoneId = "g448", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1274, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.CityOfThreads.Bosses


bosses.boss1 = { --	Orator Krix'vizk
    EncounterId = "2907", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.Frontal] = {
            Terrorize = {
                enabled = true,
                spellId = 434779,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "434779",
                    }

                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            Subjugate = {
                enabled = true,
                spellId = 434722,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "434722",
                    },
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            Subjugate = {
                enabled = true,
                spellId = 434722, -- for spellname etc
                extraName = " slow",
                type = JDT.AuraTypes.snare,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "434722",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            ShadowsOfDoubt = {
                enabled = true,
                spellId = 448561, -- for spellname etc
                type= JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "448561",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "448561",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "448561",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            VociferousIndoctrination = {
                enabled = true,
                spellId = 434829, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "434829",
                    },
                }
            }
        },
    }
}
bosses.boss2 = { --	Fangs of the Queen
    EncounterId = "2908", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.Frontal] = {
            ShadeSlash = {
                enabled = true,
                spellId = 439621,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439621",
                    }
                }
            },
            EchoingShade = {
                enabled = true,
                spellId = 439637,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439637",
                    }
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            Duskbringer = {
                enabled = true,
                spellId = 439692, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439692",
                    },
                }
            },
        },
        [JDT.GroupTypes.SpreadCastIntoCastSuccessAvoid] ={
            IceSickles = {
                enabled = true,
                spellId = 440218, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "440218",
                    },
                    {
                        duration = "2",
                        spellId = "440218",
                    },
                }
            },
        },
        [JDT.GroupTypes.SlowDot ] ={
            IceSickles = {
                enabled = true,
                type = JDT.AuraTypes.magic,
                extraName = " slow",
                spellId = 440218, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "440218",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            KnifeThrow = {
                enabled = true,
                spellId = 440107,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "440107",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "440107",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.BossCastIntoStack] = {
            RimeDagger = {
                enabled = true,
                spellId = 440468,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "440468",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "440468",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "440468",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            DarkParanoia= {
                enabled = true,
                spellId = 440420, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "440420",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "440420",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "440420",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            ShadowShunpo  = {
                enabled = true,
                spellId = 440419, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "440419",
                    },
                }
            }
        },
    }
}
bosses.boss3 = { --	The Coaglamation
    EncounterId = "2905", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.OrbSoak] ={
            ViscousDarkness = {
                enabled = true,
                spellId = 441216, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "441216",
                    },
                }
            }
        },
        [JDT.GroupTypes.AbsorbDebuffWithProgress] ={
            CorruptedCoating = {
                enabled = true,
                spellId = 442285, -- for spellname etc
                customTextInfo = { tooltip = 1, inverse = true},
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "442285",
                    },
                }
            },
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            DarkPulse = {
                enabled = true,
                spellId = 437533, -- for spellname etc
                extraName = " soon",
                triggerData = {
                    {
                        spellIdList = {"437533"},
                        extraUnit = "boss1"
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "437533",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            DarkPulse = {
                enabled = true,
                spellId = 437533, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "437533",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            SlimePropagation= {
                enabled = true,
                spellId = 447402, -- for spellname etc
                type= JDT.AuraTypes.snare,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "447402",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "447402",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "447402",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            BloodSurge = {
                enabled = true,
                spellId = 445435, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "445435",
                    },
                }
            },
        },
    }
}

bosses.boss4 = { --	Izo, the Grand Splicer
    EncounterId = "2909", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.DanceWithNextTick] ={
            ShiftingAnomalies = {
                enabled = true,
                spellId = 439401, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439401",
                    },
                    {
                        duration = "9",
                        spellId = "439401",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            Splice = {
                enabled = true,
                spellId = 439341,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439341",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "439341",
                    },
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            TremorSlam = {
                enabled = true,
                spellId = 437700, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "437700",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoRoot] ={
            UmbralWeave = {
                enabled = true,
                spellId = 438860, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "438860",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "438860"
                    },
                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            ProcessOfElimination = {
                enabled = true,
                spellId = 439646, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439646",
                    },
                }
            },
        },
        --addspell
        [JDT.GroupTypes.BuffCastWithStackWarning ] = {
            Gorge = {
                enabled = true,
                spellId = 450042,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "450042",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "450047",
                    }
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            Gutburst = {
                enabled = true,
                spellId = 450055, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "450055",
                    },
                }
            }
        },
      
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            VoidBolt = {
                enabled = true,
                spellId = 434122, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "434122",
                    },
                }
            },
            PoisonBolt = {
                enabled = true,
                spellId = 440160, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "440160",
                    },
                }
            },
            WebBolt = {
                enabled = true,
                spellId = 443427, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "443427",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            VoidRush = {
                enabled = true,
                spellId = 250096,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451222",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "451222",
                    }
                }
            },
            VenomStrike = {
                enabled = true,
                spellId = 443397,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "443397",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "443397",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.TargetedCast] = {
            KnifeThrow = {
                enabled = true,
                spellId = 448030,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "448030",
                    }
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            Earthshatter = {
                enabled = true,
                spellId = 443500,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "443500",
                    }
                }
            },
        },
        [JDT.GroupTypes.FrontalWithSuccess] = {
            NullSlam = {
                enabled = true,
                spellId = 451543,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451543",
                    },
                    {
                        duration = "3",
                        spellId = "451543",
                    },
                }
            },
        },
        
        [JDT.GroupTypes.RunOut] ={
            VoidWave = {
                enabled = true,
                spellId = 446086, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "446086",
                    },
                }
            },
            TremorSlam = {
                enabled = true,
                spellId = 447271, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "447271",
                    },
                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            AwakeningCalling = {
                enabled = true,
                spellId = 453840,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "453840",
                    }
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            WebBolt = {
                enabled = true,
                spellId = 443427, -- for spellname etc
                extraName = " slow",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "443427",
                    },
                }
            }
        },
        [JDT.GroupTypes.InterruptableSuppresion] = {
            SilkBinding = {
                enabled = true,
                spellId = 443430,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "443430",
                    }

                }
            },
            WebWrap = {
                enabled = true,
                spellId = 448047,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "448047",
                    }

                }
            },
        },
        [JDT.GroupTypes.InteruptableCastIntoRoot] = {
            UmbralWeave = {
                enabled = true,
                spellId = 446717,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "446717",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "446717",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.CastIntoDot] ={
            RavenousSwarm = {
                enabled = true,
                spellId = 443507, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "443507",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "443507",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            TwistThoughts = {
                enabled = true,
                spellId = 443433, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "443433",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "443433",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "443433",
                    },

                }
            }
        },
        [JDT.GroupTypes.CastWithDebuffTargetAnounce] ={
            ShadowsOfDoubt= {
                enabled = true,
                loadInBossfight = false,
                spellId = 443436, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "443436",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "443436",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "443436",
                    },
                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            GrimweaveBlast = {
                enabled = true,
                spellId = 442536,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "442536",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            MendingWeb = {
                enabled = true,
                spellId = 452162,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "452162",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            FierceStomping = {
                enabled = true,
                spellId = 436205, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "436205",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            VenomousSpray = {
                enabled = true,
                spellId = 434137,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "434137",
                    },

                }
            },
            PerfumeToss = {
                enabled = true,
                spellId = 450784,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "450784",
                    },

                }
            },
        },
    },
}
