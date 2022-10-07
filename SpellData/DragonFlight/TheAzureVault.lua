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

bosses.boss2 = { 
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
    }
}
     
bosses.boss3 = { 
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
            BelowZero = {
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

bosses.boss4 = { 
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