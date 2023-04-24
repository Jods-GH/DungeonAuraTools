local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.Neltharus = {
    groupName = "[NR",
    zoneId = "g431", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)2082
    EncounterJournalID = 1199, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.Neltharus.Bosses

bosses.boss1 = {  -- 	Chargath, Bane of Scales
    EncounterId = "2613", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.IncreasedDmgTakenChannel] = {
            Fetter = {
                enabled = true,
                spellId = 388523,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388523",
                    }

                }
            },

        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            CuttingSurge = {
                enabled = true,
                spellId = 373733,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "373733",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "373733",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            FieryFocus = {
                enabled = true,
                spellId = 375056, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "375056",

                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            GroundingSpear = {
                enabled = true,
                spellId = 373424,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "373424",
                    }

                }
            },
        },
        [JDT.GroupTypes.ShockWave] = {
            MagmaWave = {
                enabled = true,
                spellId = 373742,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "373742",
                    }

                }
            },

        },
        

    }
}

bosses.boss2 = {  -- 	Forgemaster Gorek
    EncounterId = "2612", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.VoidCast] = {
            BlazingAegis = {
                enabled = true,
                spellId = 374839, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374839",

                    },

                }
            }, 
            HeatedSwings = {
                enabled = true,
                spellId = 374533, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374533",

                    },

                }
            }, 
        },
        [JDT.GroupTypes.Dance] ={
            Forgestorm = {
                enabled = true,
                spellId = 374969, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374969",

                    },

                }
            },
        },
    }
}
bosses.boss3 = {  -- Magmatusk
    EncounterId = "2610", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
       
        [JDT.GroupTypes.Dance] ={
            BlazingCharge = {
                enabled = true,
                spellId = 375439, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "375439",

                    },

                }
            },
        }, 
        [JDT.GroupTypes.Frontal] = {
            LavaSpray = {
                enabled = true,
                spellId = 375251,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "375251",
                    }

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            VolatileMutation = {
                enabled = true,
                spellId = 374365, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374365",

                    },

                }
            },
        },
    }
}
bosses.boss4 = {  -- Warlord Sargha
    EncounterId = "2611", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.AddSummonCast] = {
            BurningEmber = {
                enabled = true,
                spellId = 377477,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "377473",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoBreakShield] = {
            MagmaShield = {
                enabled = true,
                spellId = 376780,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376780",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376780",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            TheDragonsKiln = {
                enabled = true,
                spellId = 377204,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "377204",
                    }

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            MoltenGold = {
                enabled = true,
                spellId = 377017, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "377017",

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
            VolcanicGuard = {
                enabled = true,
                spellId = 382708,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382708",
                    }

                }
            },
            MagmaFist= {
                enabled = true,
                spellId = 372311,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372311",
                    }

                }
            },
            ScorchingBreath = {
                enabled = true,
                spellId = 372201,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372201",
                    }

                }
            },

        },
        [JDT.GroupTypes.CCCast] = {
            BindingSpear = {
                enabled = true,
                spellId = 372561,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372561",
                    }

                }
            },
        },
        [JDT.GroupTypes.ChargeIntoBleed] ={
            BoldAmbush= {
                enabled = true,
                spellId = 372566, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372566",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "372566",

                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            EmberReach = {
                enabled = true,
                spellId = 372615,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372615",
                    }

                }
            },
            BoneToss = {
                enabled = true,
                spellId = 372226,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372226",
                    }

                }
            },
            PierceMarrow = {
                enabled = true,
                spellId = 372262,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372262",
                    }

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            MendingClay = {
                enabled = true,
                spellId = 372223,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372223",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            ImbuedMagma = {
                enabled = true,
                spellId = 372472,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "372472",
                    },
    
                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={ 
            BrutalStrike = {
                enabled = true,
                spellId = 378847, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "378847",

                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            ExplosiveConcoction = {
                enabled = true,
                spellId = 378827, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "378827",

                    },

                }
            }, 
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            MagmaConflagration = {
                enabled = true,
                spellId = 378818,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "378818",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "378818",
                    },

                }
            },
            DragonboneAxe = {
                enabled = true,
                spellId = 372225,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372225",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "372225",
                    },

                }
            },
        },
        [JDT.GroupTypes.TransformCast] = {
            MoltenCore = {
                enabled = true,
                spellId = 378282,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "378282",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            MoteofCombustion = {
                enabled = true,
                spellId = 384161, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384161",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "384161",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "384161",
                    },

                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            Forgestomp = {
                enabled = true,
                spellId = 384623, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384623",

                    },

                }
            },
            ForgewroughtFury = {
                enabled = true,
                spellId = 384663, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384663",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            ScorchingFusillade = {
                enabled = true,
                spellId = 373084, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373084",

                    },

                }
            },
            ConflagrantBattery = {
                enabled = true,
                spellId = 372296, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372296",

                    },

                }
            },
        },
        [JDT.GroupTypes.ExplodingCast] = {
            BlazingDetonation = {
                enabled = true,
                spellId = 376200,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "376200",
                    }

                }
            },
        },
    }
}