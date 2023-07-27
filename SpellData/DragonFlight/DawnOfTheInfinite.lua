local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.DawnOfTheInfinite= {
    groupName = "[DOI",
    zoneId = "g440", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1209, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.DawnOfTheInfinite.Bosses

bosses.boss1 = {  -- Chronikar
    EncounterId = "2666", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.RunOutWithTargetDebuff] ={
            EonShatter = {
                enabled = true,
                spellId = 413105, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "413105",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "413142",
                    },

                }
            }
        },
        [JDT.GroupTypes.SpellcastSucceededSoak] ={
            EonResidue = {
                enabled = true,
                spellId = 403486, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "413105",
                        duration = "2",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] = {
            ResidueBlast= {
                enabled = true,
                spellId = 417480,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "417480",
                    },

                }
            },
        },
        [JDT.GroupTypes.PlayerGroupDebuffSpread ] ={
            SandStomp = {
                enabled = true,
                spellId = 401421, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "401421",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "401421",
                    },

                }
            }
        },
        [JDT.GroupTypes.KnockCast] ={
            Chronoshear = {
                enabled = true,
                spellId = 413013, -- for spellname etc
                RoleLoad = {
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "413013",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.IncreasedDmgTakenBuff] = {
            Recovering = {
                enabled = true,
                spellId = 413041,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "413041",
                    }

                }
            },

        },
        
    }
}

bosses.boss2 = {  -- Manifested Timeways
    EncounterId = "2667", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            Unwind = {
                enabled = true,
                spellId = 414303,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "414303",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            FragmentsofTime = {
                enabled = true,
                spellId = 405431, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "405431",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoDanceWhileDebuffed] ={
            Chronofaded= {
                enabled = true,
                spellId = 405696, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "405696",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "405696",

                    },

                }
            }
        },
        [JDT.GroupTypes.GoMeleeCast ] ={
            Radiant = {
                enabled = true,
                spellId = 414307, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "414307",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.DmgReductionBuffButItsADebuff] ={
            DecayingTime = {
                enabled = true,
                spellId = 403910, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "403910",
                    },
                }
            }
        },
        [JDT.GroupTypes.SpeedBuffButItsADebuff] ={
            AcceleratingTime = {
                enabled = true,
                spellId = 403912, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "403912",
                    },
                }
            }
        },
        
        
    }
}
bosses.boss3 = {  -- Blight of Galakrond
    EncounterId = "2668", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.FrontalSoakWithDebuff] ={
            BlightReclamation = {
                enabled = true,
                spellId = 407159, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "407159",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "407406",
                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoTransferableDebuffThatControls] ={
            Corrosion = {
                enabled = true,
                spellId = 407406, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "406886",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "407406",
                    },

                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            NecroticWinds = {
                enabled = true,
                spellId = 407978, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "407978",

                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            IncineratingBlightbreath = {
                enabled = true,
                spellId = 408141,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "408141",
                    }

                }
            },
        },
        [JDT.GroupTypes.ChainToKill] ={
            Necrofrost = {
                enabled = true,
                spellId = 408029, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "408029",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "408029",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "408029",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "204262",

                    },

                }
            }
        },
    }
}

bosses.boss4 = {  -- Iridikron the Stonescaled
    EncounterId = "2669", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.TargetedCastWithSafeDeBuffDuringCast] = {
            ExtinctionBlast = {
                enabled = true,
                spellId = 409261,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "414330",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "409261",
                    },

                }
            },
        },
        [JDT.GroupTypes.VoidSoak] ={
            StonecrackerBarrage = {
                enabled = true,
                spellId = 414535, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "414535",

                    },

                }
            }
        },
        [JDT.GroupTypes.HasteBuffButItsADebuff] = {
            TimelineAcceleration = {
                enabled = true,
                spellId = 414496,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "414496",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastIntoBreakShield] = {
            Earthsurge = {
                enabled = true,
                spellId = 409456,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "409456",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "409456",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            PulverizingExhalation= {
                enabled = true,
                spellId = 409635,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "409635",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastWithSafeDeBuffDuringCast] = {
            CataclysmicObliteration = {
                enabled = true,
                spellId = 414184,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "414330",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "414184",
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            MoltenVulnerability = {
                enabled = true,
                spellId = 378221,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "378221",
                    },

                }
            },
        },
    }
}

bosses.boss5 = {  -- Tyr, the Infinite Keeper
    EncounterId = "2670", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 05 ",
    Auras = { 
        [JDT.GroupTypes.SoakCast] ={
            DividingStrike = {
                enabled = true,
                spellId = 400641, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "400641",

                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            InfiniteAnnihilation = {
                enabled = true,
                spellId = 401482,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "401482",
                    }

                }
            },
            TitanicBlow = {
                enabled = true,
                spellId = 401248,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "401248",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            SiphonOathstone = {
                enabled = true,
                spellId = 400642, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "400642",

                    },

                }
            }
        },
        [JDT.GroupTypes.HasteBuffButItsADebuff] = {
            StolenTime = {
                enabled = true,
                spellId = 406543,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "406543",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            SparkofTyr = {
                enabled = true,
                spellId = 400649, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "400649",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "400649",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "400649",
                    },

                }
            }
        },
    }
}

bosses.boss6 = {  -- Morchie
    EncounterId = "2671", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 06 ",
    Auras = { 
        
    }
}

bosses.boss7 = {  -- Time-Lost Battlefield
    EncounterId = "2672", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 07 ",
    Auras = { 
        
    }
}

bosses.boss8 = {  -- Chrono-Lord Deios
    EncounterId = "2673", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 07 ",
    Auras = { 
        
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
      
    }
}