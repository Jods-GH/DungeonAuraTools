local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}

JDT.SpellList.Dragonflight.Dungeons.RubyLifePools = {
    groupName = "[RLP",
    --zoneId = "g423", 
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
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372851",

                    },

                }
            }
        },
        [JDT.GroupTypes.SlowDebuff] ={
            PrimalChill = {
                enabled = true,
                spellId = 372682, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "372682",

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
        [JDT.GroupTypes.SpreadDebuff] = {
            Infernocore = {
                enabled = true,
                spellId = 381862,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "381862",
                    }

                }
            },
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
        [JDT.GroupTypes.VoidCast] = {
            WindsofChange = {
                enabled = true,
                spellId = 381517,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381517",
                    },

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
    }
}