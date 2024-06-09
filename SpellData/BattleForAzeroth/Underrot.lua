local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.Underrot= {
    groupName = "[UR",
    zoneId = "g282", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1022, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.Underrot.Bosses

bosses.boss1 = {  -- Elder Leaxa
    EncounterId = "2111", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.VoidCast] = {
            CreepingRot = {
                enabled = true,
                spellId = 260894,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260894",
                    },

                }
            },
            SanguineFeast = {
                enabled = true,
                spellId = 264757,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "264757",
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableCast] = {
            BloodBolt = {
                enabled = true,
                spellId = 260879,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260879",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            BloodMirror = {
                enabled = true,
                spellId = 264603,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "264603",
                    },
                }
            },
        },
        
    }
}
bosses.boss2 = {  -- Cragmaw the Infested
    EncounterId = "2118", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.Charge] ={
            Charge= {
                enabled = true,
                spellId = 260292, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260292",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Tantrum = {
                enabled = true,
                spellId = 260333, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260333",

                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            Indigestion = {
                enabled = true,
                spellId = 260793,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260793",
                    }

                }
            },

        },
        [JDT.GroupTypes.Dot] ={
            SerratedFangs = {
                enabled = true,
                spellId = 260455, -- for spellname etc
                showStacks = 1,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "260455",

                    },

                }
            },
        },
    }
}
bosses.boss3 = {  -- Sporecaller Zancha
    EncounterId = "2112", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            Shockwave = {
                enabled = true,
                spellId = 272457,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "272457",
                    }

                }
            },
        },
        [JDT.GroupTypes.DanceOrSoakIfDebuff] ={
            Upheaval = {
                enabled = true,
                spellId = 274213, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "274213",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "259718",

                    },

                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            FesteringHarvest = {
                enabled = true,
                spellId = 259732, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259732",

                    },

                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            DecayingSpores = {
                enabled = true,
                spellId = 273226, -- for spellname etc
                showStacks = 1,
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "273226",

                    },

                }
            },
        },
    }
}
bosses.boss4 = {  -- Unbound Abomination
    EncounterId = "2123", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            VileExpulsion = {
                enabled = true,
                spellId = 269843,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "269843",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            PutridBlood = {
                enabled = true,
                spellId = 269301, -- for spellname etc
                showStacks = 1,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "269301",

                    },

                }
            }
        },
        [JDT.GroupTypes.StackCast] = {
            CleansingLight = {
                enabled = true,
                spellId = 269310,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "269310",
                    }

                }
            },

        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            RottenBile = {
                enabled = true,
                spellId = 265540,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265540",
                    }

                }
            },
            SavageCleave = {
                enabled = true,
                spellId = 265019,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265019",
                    }

                }
            },
            MaddeningGaze = {
                enabled = true,
                spellId = 272609,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272609",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            BloodMaw = {
                enabled = true,
                spellId = 265533, -- for spellname etc
                showStacks = 1,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "265533",

                    },

                }
            },
            SavageCleave = {
                enabled = true,
                spellId = 265019,
                extraName = " dot",
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "265019",
                    }

                }
            },
            wickedEmbrace = {
                enabled = true,
                spellId = 266265, -- for spellname etc
                showStacks = 1,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "266265",

                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            Warcry = {
                enabled = true,
                spellId = 265081,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265081",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            DarkReconstitution = {
                enabled = true,
                spellId = 265089,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265089",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            SpiritDrain = {
                enabled = true,
                spellId = 265511, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265511",

                    },

                }
            },
        },
        [JDT.GroupTypes.PurgableImuneCast] = {
            GiftofGhuun = {
                enabled = true,
                spellId = 265091,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265091",
                    },

                }
            },
        },

        [JDT.GroupTypes.InterruptableTargetedCast] ={
            BloodBolt = {
                enabled = true,
                spellId = 265084, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265084",

                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableCastIntoRoot] = {
            HookedSnare = {
                enabled = true,
                spellId = 265377,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265377",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "265377",
                    }

                }
            },

        }, 
        [JDT.GroupTypes.TargetedCast] = {
            BarbedSpear = {
                enabled = true,
                spellId = 265376,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265376",
                    }

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigAoeCast] = {
            HarrowingDespair = {
                enabled = true,
                spellId = 278755,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "278755",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            DarkOmen = {
                enabled = true,
                spellId = 265568,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265568",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            ThirstForBlood = {
                enabled = true,
                spellId = 266107,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "266107",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "266107",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "266107",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptShout] = {
            SonicScreech = {
                enabled = true,
                spellId = 266106,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "266106",
                    },
                {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            WaveofDecay = {
                enabled = true,
                spellId = 265668,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265668",
                    },

                }
            },
            AbyssalReach = {
                enabled = true,
                spellId = 272592,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272592",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBewitchCastIntoDebuff] ={
            DecayingMind= {
                enabled = true,
                spellId = 278961, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "278961",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "278961",

                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            RaiseDead = {
                enabled = true,
                spellId = 272183,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272183",
                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            WickedFrenzy = {
                enabled = true,
                spellId = 266209,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "266209",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableVolleyIntoMagicDot] = {
            DeathBolt = {
                enabled = true,
                spellId = 272180,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272180",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "272180",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            ShadowBoltVolley = {
                enabled = true,
                spellId = 265487,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265487",
                    },

                }
            },
        },

        [JDT.GroupTypes.InteruptableVolleyIntoCurseDmgReduce] = {
            DWitheringCurse = {
                enabled = true,
                spellId = 265433,
                showStacks = 3,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265433",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "265433",
                    },

                }
            },
        },
        [JDT.GroupTypes.SummonTotemCastIntoStun] = {
            SummonSpiritDrainTotem = {
                enabled = true,
                spellId = 265523,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265523",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265511",
                    },

                }
            },
        },

        

    }
}