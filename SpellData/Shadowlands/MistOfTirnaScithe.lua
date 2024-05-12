local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}
JDT.SpellList.Shadowlands.Dungeons = JDT.SpellList.Shadowlands.Dungeons or {}


JDT.SpellList.Shadowlands.Dungeons.MistOfTirnaScithe = {
    groupName = "[MOTS",
    zoneId = "1669", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1184, --https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.Shadowlands.Dungeons.MistOfTirnaScithe.Bosses

bosses.boss1 = { -- Ingra Maloch
    EncounterId = "2397",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.Frontal] = {
            BewilderingPollen = {
                enabled = true,
                spellId = 323137,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323137",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastIntoCastDance] ={
            ForceCompliance = {
                enabled = true,
                spellId = 323138, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323138",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323177",
                    },

                }
            }
        },
        [JDT.GroupTypes.AoeFear] = {
            RepulsiveVisage = {
                enabled = true,
                spellId = 328756,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "328756",
                    }

                }
            },
        },
        [JDT.GroupTypes.ShieldCast] ={
            EmbraceDarkness = {
                enabled = true,
                spellId = 323149, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323149",
                    },
                }
            }
        },
        [JDT.GroupTypes.KillAddAliveWithDebuff] = {
            DeathShroud = {
                enabled = true,
                spellId = 323146,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "170229",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "323146",
                    },
                }
            },
        },
        [JDT.GroupTypes.IncreasedDmgTakenChannel] = {
            DromansWrath = {
                enabled = true,
                spellId = 323059,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323059",
                    }

                }
            },

        },
    }
}

bosses.boss2 = { --Mistcaller
    EncounterId = "2392",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.AddSummonCast] = {
            GuessingGame = {
                enabled = true,
                spellId = 336499,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "336499",
                    },
                }
            },
        },
        
        [JDT.GroupTypes.CastStartAoeWithStackingBuff] = {
            PenalizingBurst = {
                enabled = true,
                spellId = 321669,
                customTextInfo = "2",
                triggerData = {
                    {
                        duration = "3",
                        spellId = "321725",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "321725",
                    },
                }
            },
        },
        [JDT.GroupTypes.DodgeCast] = {
            DodgeBall = {
                enabled = true,
                spellId = 321834,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "321834",
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            PattyCake = {
                enabled = true,
                spellId = 321828, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "321828",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoChase] = {
            FreezeTagFixation = {
                enabled = true,
                spellId = 321891,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "321891",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "321891",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "321891",
                    },
                }
            },
        },
    }
} 

bosses.boss3 = { --Tred'ova
    EncounterId = "2393",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            AcidExpulsion = {
                enabled = true,
                spellId = 322651, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322651",
                    },
                }
            },
        },
        [JDT.GroupTypes.KickOrDie] ={
            ParasiticPacification = {
                enabled = true,
                spellId = 337235, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = {
							"337235", -- [1]
							"337249", -- [2]
							"337255", -- [3]
						},
                    },

                }
            }
        },
        [JDT.GroupTypes.SwarmDebuffAddNeedsToBeKilledWhileActive] ={
            StingingSwarm = {
                enabled = true,
                spellId = 337253, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = {
							"337235", -- [1]
							"337249", -- [2]
							"337255", -- [3]
						},
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = {
							"337235", -- [1]
							"337249", -- [2]
							"337255", -- [3]
						},
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = {
							"337235", -- [1]
							"337249", -- [2]
							"337255", -- [3]
						},
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "172647",
                    }

                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            MindLink = {
                enabled = true,
                spellId = 322614, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322614",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "322614",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "322614",
                    },
                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            AcceleratedIncubation = {
                enabled = true,
                spellId = 322550,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322550",
                    }
                }
            },
        },
        [JDT.GroupTypes.CastIntoBreakShield] = {
            Consumption = {
                enabled = true,
                spellId = 322450,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322450",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322527",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            MarkedPrey = {
                enabled = true,
                spellId = 322563,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322563",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "322563",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "322563",
                    },


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