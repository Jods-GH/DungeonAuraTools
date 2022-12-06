local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}

JDT.SpellList.Dragonflight.Dungeons.RubyLifePools = {
    groupName = "[RLP",
    zoneId = "g430", 
    EncounterJournalID = 1202, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.RubyLifePools.Bosses

bosses.boss1 = { 
    EncounterId = "2609", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
        [JDT.GroupTypes.TargetedCast] = {
            FrigidShard = {
                enabled = true,
                spellId = 372808,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372808",
                    }

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            AwakenWhelps = {
                enabled = true,
                spellId = 373046,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "373046",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Chillstorm = {
                enabled = true,
                spellId = 372851, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372851",

                    },

                }
            }
        },
        [JDT.GroupTypes.BreakShieldIntoInterrupt] ={
            FrostOverload = {
                enabled = true,
                spellId = 373680, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "373680",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372988",

                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            IceBlast= {
                enabled = true,
                spellId = 373528,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "373528",
                    }

                }
            },

        }, 

    }
}
bosses.boss2 = { 
    EncounterId = "2606", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.ShockWave] ={
            MoltenBoulder = {
                enabled = true,
                spellId = 372107, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372107",

                    },

                }
            },
        },
        [JDT.GroupTypes.TankBusterCastWithDebuffCheck] = {
            SearingBlows = {
                enabled = true,
                spellId = 372859,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372859",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "372860",
                        ignoreSelf = false,
                    }

                }
            },

        },
        [JDT.GroupTypes.InteruptableBigAoeCast] = {
            RoaringBlaze = {
                enabled = true,
                spellId = 373017,
                triggerData = {
                    [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "373017",
                    },

                }
            },
        },
       
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            RitualofBlazebinding = {
                enabled = true,
                spellId = 348350, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"372863"},
                        extraUnit = "boss1"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372863",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
        [JDT.GroupTypes.ExplodingCast] = {
            Burnout = {
                enabled = true,
                spellId = 373087,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373087",
                    }

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            Inferno = {
                enabled = true,
                spellId = 384823, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384823",

                    },

                }
            }
        },
    }
}
bosses.boss3 = { 
    EncounterId = "2623", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.TankBusterCastWithDebuffCheck] = {
            Stormslam = {
                enabled = true,
                spellId = 381512,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381512",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "381512",
                        ignoreSelf = false,
                    }

                }
            },

        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            Flamespit= {
                enabled = true,
                spellId = 381605, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381605",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "381862",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "381862",
                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            RoaringFirebreath= {
                enabled = true,
                spellId = 381525,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381525",
                    }

                }
            },

        }, 
        [JDT.GroupTypes.InteruptShout] = {
            InterruptingCloudburst = {
                enabled = true,
                spellId = 381516,
                triggerData = {
                [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381516",
                    },
                [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.WindCastIntoCastSuccess] = {
            WindsofChange = {
                enabled = true,
                spellId = 381517,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381517",
                    },
                    {
                        duration = "3",
                        spellId = "381517",
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
            FlameBreath= {
                enabled = true,
                spellId = 381525,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "381525",
                    }

                }
            },
            StormBreath= {
                enabled = true,
                spellId = 391726,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "391726",
                    }

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            ExcavatingBlast = {
                enabled = true,
                spellId = 372696,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372696",
                    },

                }
            }, 
            StoneMissile = {
                enabled = true,
                spellId = 371956,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "371956",
                    },

                }
            }, 
            Hailbombs = {
                enabled = true,
                spellId = 396044,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396044",
                    },

                }
            }, 
            MoltenBlood = {
                enabled = true,
                spellId = 392569, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "392569",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            BurningTouch = {
                enabled = true,
                spellId = 373869,
                type = JDT.AuraTypes.magic,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "373869",
                    },

                }
            },
            FireMaw = {
                enabled = true,
                spellId = 392394,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "392394",
                    },

                }
            },
        },
        [JDT.GroupTypes.StunDot] = {
            UnluckyStrike = {
                enabled = true,
                spellId = 385313,
                type = JDT.AuraTypes.curse,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "385313",
                    },

                }
            },
        },
        [JDT.GroupTypes.ShieldInc] ={
            IceShield = {
                enabled = true,
                type = JDT.AuraTypes.interrupt,
                spellId = 372743, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372743",

                    },

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            TectonicSlam = {
                enabled = true,
                spellId = 372735, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372735",

                    },

                }
            },
            Thunderclap = {
                enabled = true,
                spellId = 392406, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "392406",

                    },

                }
            },
        },
        [JDT.GroupTypes.DashIntoDebuff] ={
            BlazingRush = {
                enabled = true,
                spellId = 372087, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372087",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "372087",

                    },

                }
            }
        },
        [JDT.GroupTypes.SlowDebuffHighStacksWarning] ={
            PrimalChill = {
                enabled = true,
                spellId = 373589, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "373589",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Flurry = {
                enabled = true,
                spellId = 372794, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372794",

                    },

                }
            },
            BlazeofGlory = {
                enabled = true,
                spellId = 373972, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373972",

                    },

                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            BurningAmbition = {
                enabled = true,
                spellId = 385063,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385063",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread] ={
            LivingBomb = {
                enabled = true,
                spellId = 373693, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373693",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "373693",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "373693",
                    },

                }
            },
            RollingThunder = {
                enabled = true,
                spellId = 392640, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "392640",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "392640",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "392640",
                    },

                }
            },
            Flashfire = {
                enabled = true,
                spellId = 392451, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "392451",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "392451",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "392451",
                    },

                }
            },
        },
        [JDT.GroupTypes.ExplodingCast] = {
            Burnout = {
                enabled = true,
                spellId = 373614,
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373614",
                    }

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            Inferno = {
                enabled = true,
                spellId = 373692, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373692",

                    },

                }
            },
            FlameDance = {
                enabled = true,
                spellId = 385536, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385536",

                    },

                }
            },
            LightningStorm = {
                enabled = true,
                spellId = 392486, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "392486",

                    },

                }
            },

        },
        [JDT.GroupTypes.AddSummonCast] = {
            SummonScorchlings = {
                enabled = true,
                spellId = 384139,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384139",
                    },

                }
            },
            SummonPrimalThundercloud = {
                enabled = true,
                spellId = 392574,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "392574",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoBreakShield] = {
            TempestStormshield = {
                enabled = true,
                spellId = 391050,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "391050",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "391050",
                    },

                }
            },
        },
    }
}