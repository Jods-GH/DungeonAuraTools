local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.NeltharionsLair = {
    groupName = "[NL",
    zoneId = "731", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 767, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.NeltharionsLair.Bosses

bosses.boss1 = {  -- Rokmora
    EncounterId = "1790", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            RazorShards = {
                enabled = true,
                spellId = 188169,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "188169",
                    }

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoeBigAoeIfAdd] ={
            Shatter = {
                enabled = true,
                spellId = 188114, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "188114",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "97720",

                    },

                }
            }
        },
        [JDT.GroupTypes.CrystallineGround] ={
            CrystallineGround = {
                enabled = true,
                spellId = 198028, -- for spellname etc
                triggerData = {
                    {
                        spellId = "188114",
                        duration = "10",

                    },
                    {
                        spellId = "198024",
                        duration = "10",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "198028",

                    },

                }
            }
        },
        [JDT.GroupTypes.BlightshardSkitter] ={
            BlightshardSkitter = {
                enabled = true,
                spellId = 187793, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "97720",

                    },
                    {
                        spellId = "187793",
                        duration = "5.2",
                    },

                }
            }
        },

        
    }
}


bosses.boss2 = {  -- Ularogg Cragshaper
    EncounterId = "1791", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            StanceOfTheMountain = {
                enabled = true,
                spellId = 388283, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"198565"},
                        extraUnit = "boss1"
        
                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198565",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }
        
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            StrikeOfTheMountain = {
                enabled = true,
                spellId = 198428, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198428",

                    },

                }
            }, 
        },
        [JDT.GroupTypes.AddSummonCast] = {
            BellowOfTheDeeps = {
                enabled = true,
                spellId = 193375,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193375",
                    },

                }
            },
        },
    }
}

bosses.boss3 = {  -- Naraxas
    EncounterId = "1792", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.VoidCast] = {
            RancidMaw = {
                enabled = true,
                spellId = 205549, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "205549",

                    },

                }
            }, 
        },
        [JDT.GroupTypes.Breath] = {
            ToxicRetch = {
                enabled = true,
                spellId = 210150,
                triggerData = {
                   [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "210150",
                    }

                }
            },

    },
    [JDT.GroupTypes.Dot] = {
        ToxicRetchDot = {
            enabled = true,
            spellId = 217851,
            extraName = " dot",
            type = JDT.AuraTypes.poison,
            triggerData = {
               [1] = {
                    unit = JDT.Templates.Triggers.UnitTypes.player,
                    spellId = "217851",
                },

            }
        },
    },
    [JDT.GroupTypes.KillAddOrBossEating] = {
        WormspeakerDevout = {
            enabled = true,
            spellId = 199629,
            triggerData = {
               {
                    unit = JDT.Templates.Triggers.UnitTypes.boss,
                    spellId = "199629",
                },
                {
                    unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                    npcID = "101075",

                },

            }
        },

    },
    [JDT.GroupTypes.GoMeleeCast ] ={
        PutridSkies = {
            enabled = true,
            spellId = 198963, -- for spellname etc
            triggerData = {
                {
                    unit = JDT.Templates.Triggers.UnitTypes.boss,
                    spellId = "198963",

                },

            }
        }
    },
    [JDT.GroupTypes.RunAwayIfTargeted] ={
        SpikedTongue = {
            enabled = true,
            spellId = 199176, -- for spellname etc
            triggerData = {
                {
                    unit = JDT.Templates.Triggers.UnitTypes.boss,
                    spellId = "199176",

                },

            }
        }
    },
    [JDT.GroupTypes.SpellcastSucceededAdds] ={
        CallMinions= {
            enabled = true,
            spellId = 199817, -- for spellname etc
            triggerData = {
                {
                    spellId = "199817",
                    duration = "6"

                },

            }
        }
    },
    [JDT.GroupTypes.AvoidCombatLogSuccess] ={
        RancidMaw = {
            enabled = true,
            spellId = 205549, -- for spellname etc
            extraName = " avoid",
            triggerData = {
                {
                    spellId = "205549",
                    duration = "2",
                },

            }
        }
    },
    
    }
}

bosses.boss4 = {  -- Dargrul the Underking
    EncounterId = "1793", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.TankBusterCast] = {
            MoltenCrash = {
                enabled = true,
                spellId = 200732,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200732",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            LandSlide = {
                enabled = true,
                spellId = 200700,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200700",
                    }

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            MagmaSculptor = {
                enabled = true,
                spellId = 200637,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200637",
                    },

                }
            },
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            MagmaWave = {
                enabled = true,
                spellId = 200418, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"200418"},
                        extraUnit = "boss1"
        
                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200418",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }
        
                }
            }
        },
        [JDT.GroupTypes.CastWithSafeDeBuffDuringCast] ={
            MagmaWave = {
                enabled = true,
                spellId = 200404, -- for spellname etc
                extraName = " active",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200404",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200404",
                    },
        
                }
            }
        },

        [JDT.GroupTypes.MagmaSkulptors] ={
            MagmaSculptorAlive = {
                enabled = true,
                spellId = 216359, -- for spellname etc
                extraName = " alive",
                triggerData = {
                    
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "101476",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "216359",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200672",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200154",
                    },
        
                }
            }
        },
        [JDT.GroupTypes.CastIntoCastSuccessSpawn] ={
            CruystalSpike = {
                enabled = true,
                spellId = 200551, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200551",

                    },
                    {
                        spellId = "200551",
                        duration = "3"

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
            BoneChomp = {
                enabled = true,
                spellId = 193639, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "193639",

                    },

                }
            },
            ImpalingShard = {
                enabled = true,
                spellId = 193941, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "193941",

                    },

                }
            },
            Leech = {
                enabled = true,
                spellId = 202231, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "202231",

                    },

                }
            },

            
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            Crush = {
                enabled = true,
                spellId = 226287, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "226287",

                    },

                }
            },
            StoneShatter = {
                enabled = true,
                spellId = 226347, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "226347",

                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            ViscidBile = {
                enabled = true,
                spellId = 183465,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "183465",
                    }

                }
            },
            PiercingShards = {
                enabled = true,
                spellId = 226296,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "226296",
                    }

                }
            },
            EmberSwipe = {
                enabled = true,
                spellId = 226406,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "226406",
                    }

                }
            },
           

            
        }, 
        [JDT.GroupTypes.KnockCast] ={
            Fracture = {
                enabled = true,
                spellId = 193505, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "193505",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            WarDrums = {
                enabled = true,
                spellId = 183526,
                type = JDT.AuraTypes.stun,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "183526",
                    },

                }
            },
            PetrifyingTotem = {
                enabled = true,
                spellId = 202108,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "202108",
                    },

                }
            },
        },
        [JDT.GroupTypes.FrontalWithAoE] = {
            Avalanche = {
                enabled = true,
                spellId = 183088,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "183088",
                    }

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            JaggedDisc = {
                enabled = true,
                spellId = 183633,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "183633",
                    }

                }
            },
        },
        [JDT.GroupTypes.CCCast] = {
            StoneGaze = {
                enabled = true,
                spellId = 202181,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "202181",
                    }

                }
            },
            Bound = {
                enabled = true,
                spellId = 193585,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "193585",
                    }

                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            StoneBolt = {
                enabled = true,
                spellId = 186269, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "186269",

                    },

                }
            },
        },
        [JDT.GroupTypes.StunDebuffWithStacksAsProgress] ={
            PetrifyingCloud = {
                enabled = true,
                spellId = 186576, -- for spellname etc
                customTextInfo = "10",
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "186576",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Scorch = {
                enabled = true,
                spellId = 202075, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "202075",

                    },

                }
            }
        },
        [JDT.GroupTypes.KillAddChanneling] = {
            Metamorphosis = {
                enabled = true,
                spellId = 193803,
                type = JDT.AuraTypes.stun,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "193803",
                    }

                }
            },

        },
        [JDT.GroupTypes.DragCast] = {
            BarbedTongue = {
                enabled = true,
                spellId = 183539,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "183539",
                    }

                }
            },

        },
        [JDT.GroupTypes.RageBuffCast] = {
            Frenzy = {
                enabled = true,
                spellId = 201983,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201983",
                    },

                }
            },
        },
        [JDT.GroupTypes.TransformCast] = {
            Charskin = {
                enabled = true,
                spellId = 188587,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "188587",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            BurningHatred = {
                enabled = true,
                spellId = 200154,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200154",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200154",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "200154",
                    },


                }
            },

        },

        
        
    }
}

