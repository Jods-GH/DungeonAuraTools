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
        [JDT.GroupTypes.CastIntoBreakSupressAdd] = {
            Overgrowth = {
                enabled = true,
                spellId = 322486,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "322486",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "322486",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "322486",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "164929",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            BewilderingPollen = {
                enabled = true,
                spellId = 321968,
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "321968",
                    }
                }
            },
            SpearFlurry = {
                enabled = true,
                spellId = 331718,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "331718",
                    }
                }
            },
            TongueLashing = {
                enabled = true,
                spellId = 340300,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340300",
                    }
                }
            },
            RadiantBreath = {
                enabled = true,
                spellId = 340160,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340160",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            HarvestEssence = {
                enabled = true,
                spellId = 322938,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "322938",
                    }
                }
            },
            NourishTheForest = {
                enabled = true,
                spellId = 324914,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "324914",
                    }
                }
            },
            StimulateRegeneration = {
                enabled = true,
                spellId = 340544,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340544",
                    }
                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            SoulSplit = {
                enabled = true,
                spellId = 322557,
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "322557",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            ShredArmor = {
                enabled = true,
                spellId = 340208,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340208",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "340208",
                    },
                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            HandOfThros = {
                enabled = true,
                spellId = 322569,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "322569",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableCastIntoCurseDmgTakenIncrease] = {
            DyingBreath = {
                enabled = true,
                spellId = 322968,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "322968",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "322968",
                    }
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            BrambleBurst = {
                enabled = true,
                spellId = 324923, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "324923",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            FuriousThrashing = {
                enabled = true,
                spellId = 324909, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "324909",
                    },
                }
            },
            BuckingRampage = {
                enabled = true,
                spellId = 331743, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "331743",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            MistveilTear  = {
                enabled = true,
                spellId = 325021, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "325021",
                    },
                }
            }
        },
        [JDT.GroupTypes.ShieldCast] ={
            BramblethornCoat = {
                enabled = true,
                spellId = 324776, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "324776",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            AnimaInjection = {
                enabled = true,
                spellId = 325223, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "325223",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "325223",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "325223",
                    },
                }
            }
        },
        [JDT.GroupTypes.SlowDebuff] ={
            TongueLashing = {
                enabled = true,
                extraName = " slow",
                spellId = 340300, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "340300",
                    },
                }
            },
            DebilitatingPoison = {
                enabled = true,
                extraName = " slow",
                spellId = 326092, -- for spellname etc
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "326092",
                    },
                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            PoisonousSecretions = {
                enabled = true,
                spellId = 340304, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340304",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            PoisonousSecretionsDot = {
                enabled = true,
                spellId = 340304,
                extraName = " dot",
                type = JDT.AuraTypes.poison,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "340304",
                    },
    
                }
            },
            TripleBiteDot = {
                enabled = true,
                spellId = 340289,
                extraName = " dot",
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "340289",
                    },
    
                }
            },
        },
        [JDT.GroupTypes.Jump] ={
            CrushingLeap = {
                enabled = true,
                spellId = 340305, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340305",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.VoidCastIntoDot] ={
            PoisonousDischarge = {
                enabled = true,
                spellId = 340279, -- for spellname etc
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340279",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340279",
                    },
    
                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            TripleBite = {
                enabled = true,
                spellId = 340289,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340289",
                    },
                }
            },
        },
        [JDT.GroupTypes.HealZoneCast] ={
            PoolofRadiance = {
                enabled = true,
                spellId = 340189, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "340189",

                    },

                }
            }
        },
        [JDT.GroupTypes.ShieldCast] ={
            StimulateResistance = {
                enabled = true,
                spellId = 326046, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "326046",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            VolatileAcid = {
                enabled = true,
                spellId = 325418, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "325418",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "325418",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "325418",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            AcidGlobule = {
                enabled = true,
                spellId = 326021,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "326021",
                    },

                }
            },
        },
    }    
}