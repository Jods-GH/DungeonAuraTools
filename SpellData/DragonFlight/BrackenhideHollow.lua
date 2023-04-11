local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.BrackenhideHollow = {
    groupName = "[BHH",
    zoneId = "g432", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)2082
    EncounterJournalID = 1196, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.BrackenhideHollow.Bosses

--Rira Hackclaw
bosses.boss1 = {  -- 	Hackclaw's War-Band
    EncounterId = "2570", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.SpinToWin] = {
            Bladestorm = {
                enabled = true,
                spellId = 381834,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381834",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            SavageCharge = {
                enabled = true,
                spellId = 381444, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381444",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "381461",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "381461",
                    },

                }
            }
        },

        --Gashtooth 
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            DecayedSenses = {
                enabled = true,
                spellId = 381694,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381694",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "381379",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoDot] ={
            GashFrenzy = {
                enabled = true,
                spellId = 378029, -- for spellname etc
                showStacks = 2,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "378029",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "378020",

                    },

                }
            }
        },
        [JDT.GroupTypes.FeastCast] ={
            MarkedforButchery = {
                enabled = true,
                spellId = 378208, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "378208",
    
                    },
    
                }
            },
        },
        -- tricktotem
        [JDT.GroupTypes.TargetedCast] = {
            EarthBolt = {
                enabled = true,
                spellId = 378155,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "378155",
                    }

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            GreaterHealingRapids = {
                enabled = true,
                spellId = 377950,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "377950",
                    },

                }
            },
        },
        [JDT.GroupTypes.SummonTotemCastIntoKillWhileChanneling] = {
            HextrickTotem = {
                enabled = true,
                spellId = 381470,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "381470",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "381466",
                    },

                }
            },
        },
        

    }
}

bosses.boss2 = {  -- Treemouth
    EncounterId = "2568", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            DecaySpray = {
                enabled = true,
                spellId = 376811,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376811",
                    }

                }
            },
            VineWhip= {
                enabled = true,
                spellId = 377559,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "377559",
                    }

                }
            },
        }, 
        [JDT.GroupTypes.RunOut] ={
            GraspingVines = {
                enabled = true,
                spellId = 376934, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376934",

                    },

                }
            },
        },
    }
}
bosses.boss3 = {  -- Gutshot
    EncounterId = "2567", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.AddSummonCast] = {
            CallHyenas = {
                enabled = true,
                spellId = 384827,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384827",
                    },

                }
            },
        },
        [JDT.GroupTypes.TrapSpawn] ={
            EnsnaringTrap = {
                enabled = true,
                spellId = 385359, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385359",

                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            GutShot = {
                enabled = true,
                spellId = 384353,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384353",
                    }

                }
            },
            Shoot = {
                enabled = true,
                spellId = 382620,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "382620",
                    }

                }
            },
        },
        [JDT.GroupTypes.FreeCast] = {
            MastersCall = {
                enabled = true,
                spellId = 384633,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384633",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            MeatToss = {
                enabled = true,
                spellId = 384416,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384416",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "384425",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "384425",
                    },


                }
            },

        },
        
    }
}
bosses.boss4 = {  -- Decatriarch Wratheye
    EncounterId = "2569", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.SummonTotemCastIntoKillWhileChanneling] = {
            RotburstTotem = {
                enabled = true,
                spellId = 373942,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "373942",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373939",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            ChokingRotcloud = {
                enabled = true,
                spellId = 376170,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376170",
                    }

                }
            },
        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 

    }
}