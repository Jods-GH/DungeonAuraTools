local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Cataclysm = JDT.SpellList.Cataclysm or {}
JDT.SpellList.Cataclysm.Dungeons = JDT.SpellList.Cataclysm.Dungeons or {}


JDT.SpellList.Cataclysm.Dungeons.VortexPinnacle = {
    groupName = "[VP",
    zoneId = "325", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 68, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Cataclysm.Dungeons.VortexPinnacle.Bosses


bosses.boss1 = {  -- 	Grand Vizier Ertan
    EncounterId = "1043", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
       
        [JDT.GroupTypes.Dance] ={
            CycloneShield = {
                enabled = true,
                spellId = 86267, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "86267",
                    },

                }
            }
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            LightningBolt = {
                enabled = true,
                spellId = 188196, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "188196",

                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            SummonTempest = {
                enabled = true,
                spellId = 413151,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "413151",
                    },

                }
            },
        },
        [JDT.GroupTypes.LooktoAddCast] = {
            LethalCurrent = {
                enabled = true,
                spellId = 411001,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "411001",
                    },

                }
            },
        },
    }
}
bosses.boss2 = {  -- 	Altairus
    EncounterId = "1041", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
       
        [JDT.GroupTypes.HasteBuffButItsADebuff] = {
            UpwindofAltairus = {
                enabled = true,
                spellId = 88282,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "88282",
                    }

                }
            },
        },
        [JDT.GroupTypes.SlowDot] = {
            DownwindOfAltairus = {
                enabled = true,
                spellId = 88286,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "88286",
                    }

                }
            },
        },
        [JDT.GroupTypes.SpellcastSucceededDance] ={
            Downburst = {
                enabled = true,
                spellId = 413295, -- for spellname etc
                triggerData = {
                    {
                        spellId = "413295",
                        duration = "3.5"

                    },

                }
            }
        },
       
    }
}

bosses.boss3 = {  -- Asaad
    EncounterId = "1042", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.CastWithSafeDeBuffDuringCast] ={
            UnstableGroundingField = {
                enabled = true,
                spellId = 86911, -- for spellname etc
                extraName = " active",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "87726",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "86911",
                    },
        
                }
            }
        },
        [JDT.GroupTypes.SpreadCast] = {
            ChainLightning = {
                enabled = true,
                spellId = 87622,
                triggerData = {
                  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "87622",
                    },

                }
            },
        },
        [JDT.GroupTypes.Jump] ={
            StaticCling = {
                enabled = true,
                spellId = 87618, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "87618",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            StaticCling = {
                enabled = true,
                spellId = 87618, -- for spellname etc
                extraName = " slow",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "87618",

                    },

                }
            }
        },
        [JDT.GroupTypes.AddSummonCombatlog] = {
            SkyfallNova = {
                enabled = true,
                spellId = 413263,
                triggerData = {
                    {
                        spellId = "96260",
                        duration = "3",
                    },

                }
            },
        },
        [JDT.GroupTypes.KillAddAlive] = {
            SkyfallNova = {
                enabled = true,
                spellId = 413263,
                extraName = " alive",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "177237",
            
                    },

                }
            },
        },
        
       
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.ArmorDeBuff] = {
            SunderArmor = {
                enabled = true,
                spellId = 76622,
                showStacks = 1,
                additionalStackText = " /5",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76622",
                    }

                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            Rally = {
                enabled = true,
                spellId = 87761,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "87761",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            ChillingBreath = {
                enabled = true,
                spellId = 411012,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "411012",
                    }

                }
            },

        },
        [JDT.GroupTypes.HealZoneCast] ={
            HealingWell = {
                enabled = true,
                spellId = 411910, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "411910",

                    },

                }
            }
        },
        [JDT.GroupTypes.InterruptableSuppresion] = {
            Cyclone = {
                enabled = true,
                spellId = 410870,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "410870",
                    }

                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={ -- this is the wrong type needs to be changed
            Turbulence = {
                enabled = true,
                spellId = 411002, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "411002",

                    },

                }
            },
        },
        [JDT.GroupTypes.MinusDmgTakenPurgeable] ={
            VaporForm = {
                enabled = true,
                spellId = 88186, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "88186",

                    },

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            PressurizedBlast = {
                enabled = true,
                spellId = 410999, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "410999",

                    },

                }
            },
            OverloadGroundingField = {
                enabled = true,
                spellId = 413385, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "413385",

                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            Cloudburst = {
                enabled = true,
                spellId = 88170, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "88170",

                    },

                }
            },
        },
        [JDT.GroupTypes.ShieldCast] ={
            CloudGuard = {
                enabled = true,
                spellId = 411000, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "411000",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoDot] ={
            IcyBuffet = {
                enabled = true,
                spellId = 88194, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "88194",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "88194",

                    },

                }
            }
        },
        [JDT.GroupTypes.SpinToWin] = {
            StormSurge = {
                enabled = true,
                spellId = 88055,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "88055",
                    }

                }
            },

        },
        [JDT.GroupTypes.TargetedCast] = {
            LightningBolt = {
                enabled = true,
                spellId = 88032,
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "88032",
                    }

                }
            },
            WindBolt = {
                enabled = true,
                spellId = 410760,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "410760",
                    }

                }
            },
            HolySmite = {
                enabled = true,
                spellId = 88959,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "88959",
                    }

                }
            },
        },
        [JDT.GroupTypes.TargetedCastWithSafeDeBuffDuringCast] = {
            RushingWind = {
                enabled = true,
                spellId = 87762,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "87762",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "87762",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            RushingWind = {
                enabled = true,
                spellId = 410873,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "410873",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "410873",
                    },

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            CrashingStone = {
                enabled = true,
                spellId = 413387, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "413387",

                    },

                }
            },
            
        },
        
    }
}