local _, JDT = ...
JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.TheAzureVault = {
    groupName = "[TAV",
    zoneId = "g428", 
    EncounterJournalID = 1203, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.TheAzureVault.Bosses

bosses.boss1 = { 
    EncounterId = "2582", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
        [JDT.GroupTypes.VoidCast] = {
            LeyLineSprouts = {
                enabled = true,
                spellId = 374364,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374364",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            EruptingFissure = {
                enabled = true,
                spellId = 386660,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386660",
                    }

                }
            },

        }, 
        [JDT.GroupTypes.RunOut] ={
            ExplosiveBrand = {
                enabled = true,
                spellId = 374567, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374567",

                    },

                }
            },
        },
        [JDT.GroupTypes.SoakVoidWithDebuff] = {
            ExplosiveBrand= {
                enabled = true,
                spellId = 374567,
                extraName = " debuff",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "374567",
                    }

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            ConsumingStomp = {
                enabled = true,
                spellId = 374720, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374720",

                    },

                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            InfusedStrike = {
                enabled = true,
                spellId = 374789,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "374789",
                    },
                    [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "374789",
                    },

                }
            },
        },
    }
}

bosses.boss2 = {  --Azureblade
    EncounterId = "2585", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            OverwhelmingEnergy = {
                enabled = true,
                spellId = 384132, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384132",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            SummonDraconicImage = {
                enabled = true,
                spellId = 384223,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384223",
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            IllusionaryBolt = {
                enabled = true,
                spellId = 373932, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373932",

                    },

                }
            },
        },
        [JDT.GroupTypes.ShockWave] ={
            AncientOrb = {
                enabled = true,
                spellId = 385578, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385578",

                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            ArcaneCleave = {
                enabled = true,
                spellId = 372222,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "372222",
                    }

                }
            },

        }, 
        [JDT.GroupTypes.KillAddChanneling] = {
            SealEmpowerment = {
                enabled = true,
                spellId = 379256,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "379256",
                    }

                }
            },

        },
    }
}
     
bosses.boss3 = {  --telash greywing
    EncounterId = "2583", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
         [JDT.GroupTypes.SpreadCast] = {
            IcyDevastator = {
                enabled = true,
                spellId = 387152,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387152",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoSpreadifDebuffed] = {
            FrostBomb = {
                enabled = true,
                spellId = 386781,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "386781",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "386781",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastWithSafeBuff] = {
            AbsoluteZero = {
                enabled = true,
                spellId = 388008,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "388072",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388008",
                    },
                    {
                        duration = "0",
                        spellId = "388008",
                    },
                }
            },
        },
    }
}

bosses.boss4 = {  --Umbrelskul
    EncounterId = "2584", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.SlowDebuff] ={
            OppressiveMiasma = {
                enabled = true,
                spellId = 388777, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "388777",

                    },

                }
            }
        },
        [JDT.GroupTypes.KillAddChanneling] = {
            Fracture = {
                enabled = true,
                spellId = 385331,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385331",
                    }

                }
            },

        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            UnleashedDestruction = {
                enabled = true,
                spellId = 388804, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388804",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.ShockWave] ={
            CrystallineRoar = {
                enabled = true,
                spellId = 384699, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384699",

                    },

                }
            },
        },
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.RageBuffCast] = {
            ArcaneFury = {
                enabled = true,
                spellId = 389686,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "389686",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            PiercingShards = {
                enabled = true,
                spellId = 370764,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "370764",
                    }

                }
            },
            ArcaneBash = {
                enabled = true,
                spellId = 387067,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387067",
                    }

                }
            },
            SpellfrostBreath = {
                enabled = true,
                spellId = 391118,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "391118",
                    }

                }
            },

        },
        [JDT.GroupTypes.RunOut] ={
            Crystallize = {
                enabled = true,
                spellId = 370766, -- for spellname etc
                type = JDT.AuraTypes.root,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "370766",

                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            SplinteringShards = {
                enabled = true,
                spellId = 349954, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "371005",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "371005",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "371005",
                    },

                }
            }
        },
        [JDT.GroupTypes.TargetedCast] = {
            ArcaneBolt = {
                enabled = true,
                spellId = 371306,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "371306",
                    }

                }
            },
            HeavyTome = {
                enabled = true,
                spellId = 389804,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "389804",
                    }

                }
            },
            CondensedFrost = {
                enabled = true,
                spellId = 377503,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "377503",
                    }

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            ForbiddenKnowledge = {
                enabled = true,
                spellId = 371358,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "371358",
                    },

                }
            },
        },
        [JDT.GroupTypes.ShieldInc] ={
            ConjuredBarrier = {
                enabled = true,
                spellId = 387122, -- for spellname etc
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387122",

                    },

                }
            }
        },
        [JDT.GroupTypes.Charge] ={
            ShoulderSlam = {
                enabled = true,
                spellId = 391136, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "391136",

                    },

                }
            },
            NullStomp = {
                enabled = true,
                spellId = 386526, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "386526",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            TearFlesh = {
                enabled = true,
                spellId = 386640, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "386640",

                    },

                }
            }
        },
    }
}