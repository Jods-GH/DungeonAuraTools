local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}
JDT.SpellList.Shadowlands.Dungeons = JDT.SpellList.Shadowlands.Dungeons or {}


JDT.SpellList.Shadowlands.Dungeons.TheaterOfPain = {
    groupName = "[TOP",
    zoneId = "g414", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1187, --https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.Shadowlands.Dungeons.TheaterOfPain.Bosses

bosses.boss1 = { -- An Affront of Challengers
    EncounterId = "2391",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            NecroticBolt = {
                enabled = true,
                spellId = 1217138, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1217138",

                    },

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            MightySmash = {
                enabled = true,
                spellId = 1215741, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1215741",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff] = {
            MortalStrike = {
                enabled = true,
                spellId = 320069,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320069",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320069",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            NoxiousSpores = {
                enabled = true,
                spellId = 320182, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320182",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            DecayingBreath = {
                enabled = true,
                spellId = 1215738,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1215738",
                    }
                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            SearingDeath= {
                enabled = true,
                spellId = 333231, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "333231",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "333231",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "333231",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            WitheringTouch  = {
                enabled = true,
                spellId = 1215600, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1215600",
                    },
                }
            }
        },
    }
}

bosses.boss2 = { --Gorechop 
    EncounterId = "2365",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.SpellcastSucceededAvoid] ={
            MeatHooks = {
                enabled = true,
                spellId = 322795, -- for spellname etc
                triggerData = {
                    {
                        spellId = "322795",
                        duration = 5,
                        delay = 5,
                        unit = "boss1"
                    },

                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            JaggedGash  = {
                enabled = true,
                spellId = 323406, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "323406",
                    },
                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            TenderizingSmash = {
                enabled = true,
                spellId = 318406, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "318406",
                    },
                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            HatefulStrike = {
                enabled = true,
                spellId = 323515,
                RoleLoad = {
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323515",
                    },
                }
            },
        },
    }
} 

bosses.boss3 = { --	Xav the Unfallen 
    EncounterId = "2366",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.PvPCast] ={
            BloodAndGlory = {
                enabled = true,
                spellId = 320114, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320114",
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgBuffButItsAdebuff] = {
            Glorified = {
                enabled = true,
                spellId = 320165,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320165",
                    }

                }
            },
        },
        [JDT.GroupTypes.DmgDebuff] = {
            Bloodied = {
                enabled = true,
                spellId = 320167,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320167",
                    }

                }
            },
            Cowardice = {
                enabled = true,
                spellId = 320711,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320711",
                    }

                }
            },
            
        },
        [JDT.GroupTypes.Frontal] = {
            CrushingSlam = {
                enabled = true,
                spellId = 317231,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "317231",
                    }
                }
            },
            MassiveCleave = {
                enabled = true,
                spellId = 320729,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320729",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptShout] = {
            DeafeningCrash = {
                enabled = true,
                spellId = 339415,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "339415",
                    },
                    {   
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                    },

                }
            },
        },
        [JDT.GroupTypes.KillAddAlive] = {
            OppressiveBanner = {
                enabled = true,
                spellId = 331618,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        npcID = "170234",
                    },

                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            BrutalCombo = {
                enabled = true,
                spellId = 320644,
                RoleLoad = {
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320644",
                    },
                }
            },
        },
    }
}

bosses.boss4 = { --	Kul'tharok
    EncounterId = "2364",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.AddSummonCast] = {
            DrawSoul = {
                enabled = true,
                spellId = 474298,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "474298",
                    },
                }
            },
        },
        [JDT.GroupTypes.Orbs] = {
            DeathSpiral = {
                enabled = true,
                spellId = 1215787,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1215787",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            WellOfDarkness = {
                enabled = true,
                spellId = 1223803, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1223803",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1223803",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "1223803",
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            NecroticEruption = {
                enabled = true,
                spellId = 1225377,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1225377",
                    }
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            NecroticBolt = {
                enabled = true,
                spellId = 1216475, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1216475",
                    },
                }
            },
        },
    }
}

bosses.boss5 = { --	Mordretha, the Endless Empress
    EncounterId = "2404",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 05 ",
    Auras = {
        [JDT.GroupTypes.CastStartAvoid] ={
            EchoOfBattle = {
                enabled = true,
                spellId = 339550, -- for spellname etc
                triggerData = {
                    {
                        spellId = "339550",
                        duration = "3"
                    },

                }
            },
            EchoesOfCarnage = {
                enabled = true,
                spellId = 339573, -- for spellname etc
                triggerData = {
                    {
                        spellId = "339573",
                        duration = "4"
                    },

                }
            },
            GhostlyCharge = {
                enabled = true,
                spellId = 339706, -- for spellname etc
                triggerData = {
                    {
                        spellId = "339706",
                        duration = "2"
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            GraspingRift = {
                enabled = true,
                spellId = 323683,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323683",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            DeathGrasp  = {
                enabled = true,
                spellId = 323831, -- for spellname etc
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "323831",
                    },
                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            GraspingRift = {
                enabled = true,
                spellId = 323825, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "323825",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            DeathBolt = {
                enabled = true,
                spellId = 324589, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "324589",
                    },
                }
            },
        },
        [JDT.GroupTypes.BeamCast] ={
            DarkDevastation= {
                enabled = true,
                spellId = 323608, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323608",

                    },

                }
            }
        },
        [JDT.GroupTypes.TankBusterCast] = {
            ReapingScythe = {
                enabled = true,
                spellId = 324424,
                RoleLoad = {
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "324424",
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