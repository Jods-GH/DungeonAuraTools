local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.Motherlode= {
    groupName = "[ML",
    zoneId = "1010", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1012, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.Motherlode.Bosses

bosses.boss1 = {  -- Coin-Operated Crowd Pummeler
    EncounterId = "2105", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.DisposeSpellAura] ={
            FootbombLauncher = {
                enabled = true,
                spellId = 269493, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "269493",
                    },
                    {
                        stacks = 6,
                        summonID = 269493,
                        duration = 15,
                        removeID = 256493
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            ShockingClaw = {
                enabled = true,
                spellId = 257337,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257337",
                    }
                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            StaticPulse = {
                enabled = true,
                spellId = 262347, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "262347",
                    },
                }
            }
        },
        [JDT.GroupTypes.BuffCast] = {
            PayToWin = {
                enabled = true,
                spellId = 271859,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "271859",
                    }
                }
            },
        },
    }
}
bosses.boss2 = {  -- Azerokk
    EncounterId = "2106", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.AddSummonCast] = {
            CallEarthrager = {
                enabled = true,
                spellId = 257593,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257593",
                    }
                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            RagingGaze = {
                enabled = true,
                spellId = 257582,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257582",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "257582",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "257582",
                    },
                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            AzeriteInfusion = {
                enabled = true,
                spellId = 257597,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257597",
                    }
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] = {
            ResonantPulse = {
                enabled = true,
                spellId = 258622,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "258622",
                    }
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            TectonicSmash = {
                enabled = true,
                spellId = 275907,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "275907",
                    }
                }
            },
        },
    }
}
bosses.boss3 = {  -- Rixxa Fluxflame
    EncounterId = "2107", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            
            PropellantBlast= {
                enabled = true,
                spellId = 259940,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259940",
                    }
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            ChemicalBurn  = {
                enabled = true,
                spellId = 259853, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "259853",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            AzeriteCatalyst= {
                enabled = true,
                spellId = 259022, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259022",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "259022",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "259022",
                    },

                }
            }
        },
    }
}
bosses.boss4 = {  -- Mogul Razdunk
    EncounterId = "2108", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.Dance] ={
            GatlingGun = {
                enabled = true,
                spellId = 260279, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260279",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            HomingMissile = {
                enabled = true,
                spellId = 257582,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260811",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "260811",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "260811",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            DrillSmash = {
                enabled = true,
                spellId = 260202,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260202",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            BusterShot = {
                enabled = true,
                spellId = 260372,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260372",
                    }
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff] = {
            AzeriteHeartseeker = {
                enabled = true,
                spellId = 262513,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "262513",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "262513",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            BigRedRocket  = {
                enabled = true,
                spellId = 270277, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "270277",
                    },
                }
            }
        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.VoidCast] = {
            TearGas = {
                enabled = true,
                spellId = 472041,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "472041",
                    },
                }
            },
            Brainstorm = {
                enabled = true,
                spellId = 473304,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "473304",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            ThrowWrench = {
                enabled = true,
                spellId = 258674,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "258674",
                    }
                }
            },
            ThrowRock = {
                enabled = true,
                spellId = 263209,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "263209",
                    }
                }
            },
            MindLash = {
                enabled = true,
                spellId = 262794,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "262794",
                    }
                }
            },
            ChargedShot = {
                enabled = true,
                spellId = 269429,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "269429",
                    }
                }
            },
        },
        [JDT.GroupTypes.InterruptableSuppresion] ={ 
            IcedSpritzer = {
                enabled = true,
                spellId = 280604, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "280604",
                    },
                }
            },
            TransmuteEnemyToGoo = {
                enabled = true,
                spellId = 268797, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "268797",
                    },
                }
            },
        },
        [JDT.GroupTypes.ActivatingCast] = {
            ActivateMech = {
                enabled = true,
                spellId = 267433,
                type = JDT.AuraTypes.stun,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "267433",
                    }
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoeBigAoeIfBuffed] = {
            FanOfKnives = {
                enabled = true,
                spellId = 267354,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "267354",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "269302",
                    },

                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            ToxicBlades = {
                enabled = true,
                spellId = 269302,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "269302",
                    }
                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            InhaleVapors = {
                enabled = true,
                spellId = 262092,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "262092",
                    },
                }
            },
            Overtime = {
                enabled = true,
                spellId = 1213139,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1213139",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            RapidExtraction = {
                enabled = true,
                spellId = 473168, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "473168",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            Puncture = {
                enabled = true,
                spellId = 1215411,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1215411",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1215411",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.ExplodingCast] = {
            FinalBlast = {
                enabled = true,
                spellId = 269313,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "269313",
                    }
                }
            },
            MineBlast = {
                enabled = true,
                spellId = 262348,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "262348",
                    }
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            RockLance = {
                enabled = true,
                spellId = 263202, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "263202",
                    },
                }
            },
            ShaleSpit = {
                enabled = true,
                spellId = 263262, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "263262",
                    },
                }
            },
        },
        [JDT.GroupTypes.ShieldCast] ={
            TectonicBarrier = {
                enabled = true,
                spellId = 263215, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "263215",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            FuriousQuake = {
                enabled = true,
                spellId = 268702, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "268702",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            HeavySlash  = {
                enabled = true,
                spellId = 1213140, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1213140",
                    },
                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            MassiveSlam = {
                enabled = true,
                spellId = 1214754, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1214754",

                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            EchoBlade = {
                enabled = true,
                spellId = 268846,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "268846",
                    }

                }
            },

        },
        [JDT.GroupTypes.Frontal] = {
            ForceCannon = {
                enabled = true,
                spellId = 268865,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "268865",
                    }

                }
            },
        },
        [JDT.GroupTypes.MinesCast] = {
            DeployCrawlerMine = {
                enabled = true,
                spellId = 262383,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "262383",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            SeekAndDestroy = {
                enabled = true,
                spellId = 262377,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "262377",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "262377",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "262377",
                    },
                }
            },
        },
    }
}