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
        [JDT.GroupTypes.UnavoidableAoe] = {
            RagingTantrum = {
                enabled = true,
                spellId = 333241,
                type= JDT.AuraTypes.enrage,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "333241",
                    },
                }
            },
            Soulstorm = {
                enabled = true,
                spellId = 330716,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "330716",
                    },
                }
            },
            SeismicStomp = {
                enabled = true,
                spellId = 333827,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "333827",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            UnholyFervor = {
                enabled = true,
                spellId = 341902,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "341902",
                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            DeathWish = {
                enabled = true,
                spellId = 331510,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "331510",
                    },
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            Charge = {
                enabled = true,
                spellId = 320679, -- for spellname etc
                type = JDT.AuraTypes.snare,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320679",
                    },
                }
            }
        },
        [JDT.GroupTypes.FrontAndBack] ={
            VileEruption = {
                enabled = true,
                spellId = 330614, -- for spellname etc
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "330614",
                    },
                }
            }
        },
        [JDT.GroupTypes.HealCast] = {
            DevourFlesh= {
                enabled = true,
                spellId = 330586,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "330586",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            DecayingBlight  = {
                enabled = true,
                spellId = 330700, -- for spellname etc
                type = JDT.AuraTypes.disease,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "330700",
                    },
                }
            }
        },
        [JDT.GroupTypes.InterruptableTargetedCast] = {
            NecroticBolt = {
                enabled = true,
                spellId = 1217138, -- for spellname etc
                loadInBossfight = false,
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1217138",

                    },

                }
            },
            DecayingFilth = {
                enabled = true,
                spellId = 330703,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "330703",
                    }

                }
            },
            BindSoul = {
                enabled = true,
                spellId = 330810,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "330810",
                    }

                }
            },
            BoneSpear = {
                enabled = true,
                spellId = 342675,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "342675",
                    }

                }
            },
            SpiritFrost = {
                enabled = true,
                spellId = 330875,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "330875",
                    }

                }
            },

        },
        [JDT.GroupTypes.InteruptableVolleyIntoDiseaseDot] = {
            WitheringDischarge = {
                enabled = true,
                spellId = 341969,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "341969",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "341969",
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            ShadowVulnerability = {
                enabled = true,
                spellId = 330725,
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "330725",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            NecroticBoltVolley = {
                enabled = true,
                spellId = 330868,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "330868",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            GraveSpike = {
                enabled = true,
                spellId = 341771,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "341771",
                    }
                }
            },
            Shoot = {
                enabled = true,
                spellId = 319997,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "319997",
                    }
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            JaggedQuarrel = {
                enabled = true,
                spellId = 330532,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "330532",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "330532",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.ShockWave] = {
            DeathWinds = {
                enabled = true,
                spellId = 333294,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "333294",
                    }
                }
            },
        },
        [JDT.GroupTypes.KeepMovingWithDebuff] = {
            CurseOfDesolation = {
                enabled = true,
                spellId = 272422,
                ticks = {
                    "20",
                    "40",
                    "60",
                    "80",
                    },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "272422",
                    }
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            Bonestorm = {
                enabled = true,
                spellId = 331223, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "331223",
                    },
                }
            },
            Whirlwind = {
                enabled = true,
                spellId = 317605, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "317605",
                    },
                }
            },
            GroundSmash = {
                enabled = true,
                spellId = 332708, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "332708",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            BoneSpikes = {
                enabled = true,
                spellId = 331237, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "331237",
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            ColossusSmash = {
                enabled = true,
                spellId = 331288,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "331288",
                    },
                }
            },
        },
        [JDT.GroupTypes.AvoidCombatLogSuccess] ={
            WhirlingBlade = {
                enabled = true,
                spellId = 336995, -- for spellname etc
                triggerData = {
                    {
                        spellId = "336995",
                        duration = 3,
                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptShout] = {
            InterruptingRoar = {
                enabled = true,
                spellId = 342135,
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "342135",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            SavageFlurry = {
                enabled = true,
                spellId = 331316,
                RoleLoad = {
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "331316",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            Earthcrusher= {
                enabled = true,
                spellId = 1215850, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1215850",

                    },
                    {
                        spellId = "1215850",
                        duration = "3"

                    },

                }
            }
        },
        [JDT.GroupTypes.SpreadCast] = {
            RicochetingBlade = {
                enabled = true,
                spellId = 333861,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "333861",
                    },

                }
            },
            BloodthirstyCharge = {
                enabled = true,
                spellId = 334025,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "334023",
                    },

                }
            },
        },
        [JDT.GroupTypes.DmgReductionShoutIntoDebuff] = {
            DemoralizingShout = {
                enabled = true,
                spellId = 330562,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "330562",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "330562",
                    }

                }
            },
        },
    }    
}