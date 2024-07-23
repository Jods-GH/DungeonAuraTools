local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.SiegeOfBoralus= {
    groupName = "[SOB",
    zoneId = "1162", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1023, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.SiegeOfBoralus.Bosses

bosses.boss1 = {  -- Chopper Redhook
    EncounterId = "2098", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.CastIntoChaseWithBuffEffect] = {
            OnTheHook = {
                enabled = true,
                spellId = 257459,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257459",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "257459",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "257459",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257649",
                    },
                }
            },
        },
        [JDT.GroupTypes.Hooking] = {
            MeatHook = {
                enabled = true,
                spellId = 275107,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "275107",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            GoreCrash = {
                enabled = true,
                spellId = 257326, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257326",
                    },
                }
            },
        },

        --add spells

        --Irontide Cleaver
        [JDT.GroupTypes.Frontal] = {
            HeavySlash = {
                enabled = true,
                spellId = 257288,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257288",
                    }
                }
            },
        }, 
        -- Irontide Powdershot
        [JDT.GroupTypes.TargetedCast] = {
            MoltenSlug = {
                enabled = true,
                spellId = 257641,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257641",
                    }
                }
            },
        },
    }
}
bosses.boss2 = {  -- Dread Captain Lockwood
    EncounterId = "2109", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            GutShot = {
                enabled = true,
                spellId = 273470,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "273470",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "273470",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.GoMeleeCast ] ={
            GutShot = {
                enabled = true,
                spellId = 273470, -- for spellname etc
                extraName = " tank",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "273470",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            CleartheDeck = {
                enabled = true,
                spellId = 269029,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "269029",
                    }
                }
            },
            CrimsonSwipe = {
                enabled = true,
                spellId = 268230,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "268230",
                    }
                }
            },
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            Withdraw = {
                enabled = true,
                spellId = 268752, -- for spellname etc
                triggerData = {
                    {
                        spellIdList = {"268752"},
                        extraUnit = "boss1"
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "268752",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }
                }
            }
        },
        --add casts

        --Ashvane Shipbreaker (in frontal)
        --Ashvane Cannoneer
        [JDT.GroupTypes.DodgeCast] = {
            Broadside = {
                enabled = true,
                spellId = 268260,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "268260",
                    },

                }
            },
        },
    }
}
bosses.boss3 = {  -- 	Hadal Darkfathom
    EncounterId = "2099", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.DodgeCast] = {
            CrashingTide = {
                enabled = true,
                spellId = 261563,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "261563",
                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            BreakWater = {
                enabled = true,
                spellId = 257882,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257882",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastWithSafeBuff] = {
            TidalSurge = {
                enabled = true,
                spellId = 276068,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "276068",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "276068",
                    },
                    {
                        duration = "2",
                        spellId = "276068",
                    },
                }
            },
        },
    }
}
bosses.boss4 = {  -- Viq'Goth
    EncounterId = "2100", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.SpreadDebuff] = {
            PutridWaters = {
                enabled = true,
                spellId = 274991,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "274991",
                    }

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            CallOfTheDeepkWater = {
                enabled = true,
                spellId = 270185,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "270185",
                    },

                }
            },
        },
        -- adds
        [JDT.GroupTypes.KillAddAlive] = {
            DemolishingTerror = {
                enabled = true,
                spellId = 270590,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "140447",
                    },
                }
            },
        },
        [JDT.GroupTypes.GoMeleeCast] ={
            HullCracker = {
                enabled = true,
                spellId = 270590, -- for spellname etc
                extraName = " tank",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "270590",
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            Slam = {
                enabled = true,
                spellId = 269266,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "269266",
                    }
                }
            },
        },

    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.TargetedCast] = {
            Shoot = {
                enabled = true,
                spellId = 272528,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272528",
                    }
                }
            },
            MoltenSlug = {
                enabled = true,
                spellId = 257641,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257641",
                    }
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            BrackishBolt = {
                enabled = true,
                spellId = 257063, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257063",
                    },
                }
            },
            WaterBolt = {
                enabled = true,
                spellId = 272581, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272581",
                    },
                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            Ricochet = {
                enabled = true,
                spellId = 272542,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272542",
                    }
                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            AzeriteCharge= {
                enabled = true,
                spellId = 454438, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "454438",
                    },
                }
            },
        },
        [JDT.GroupTypes.ShieldCast] ={
            BolsteringShout = {
                enabled = true,
                spellId = 275826, -- for spellname etc
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "275826",
                    },
                }
            }
        },
        [JDT.GroupTypes.Hooking] = {
            IronHook = {
                enabled = true,
                spellId = 272662,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272662",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpinToWin] = {
            SavageTempest = {
                enabled = true,
                spellId = 257170,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257170",
                    }
                }
            },
        },
        [JDT.GroupTypes.HasteDeBuff] = {
            ToothBreaker = {
                enabled = true,
                spellId = 256616,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "256616",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoExplodingOnExpireBuff] ={
            WatertightShell = {
                enabled = true,
                spellId = 256957, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "256957",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "256957",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            CrushingSlam = {
                enabled = true,
                spellId = 272711, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272711",
                    },
                }
            }
        },
        [JDT.GroupTypes.InteruptableAoeFear] ={
            TerrifyingRoar= {
                enabled = true,
                spellId = 257169, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257169",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            BananaRampage = {
                enabled = true,
                spellId = 272546, -- for spellname etct
                type = JDT.AuraTypes.stun,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "272546",
                    },
                }
            }
        },
        [JDT.GroupTypes.InterruptableCastIntoSilence] ={
            ChokingWaters = {
                enabled = true,
                spellId = 272571, -- for spellname etct
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272571",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272571",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            StinkyVomit = {
                enabled = true,
                spellId = 454440,
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "454440",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "454440",
                    },
                }
            },
            RottingWounds = {
                enabled = true,
                spellId = 272588,
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272588",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "272588",
                    },
                }
            },
            SingingSteel = {
                enabled = true,
                spellId = 256709,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "256709",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "256709",
                    }
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            StingingVenomCoating  = {
                enabled = true,
                spellId = 275835, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "275835",
                    },
                }
            }
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            CursedSlash = {
                enabled = true,
                spellId = 257168,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "257168",
                    },
                }
            },
            CrimsonSwipe = {
                enabled = true,
                spellId = 268230,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "268230",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            SlobberKnocker = {
                enabled = true,
                spellId = 256627,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "256627",
                    }
                }
            },
        },
        [JDT.GroupTypes.CastIntoKeepMovingWithDebuff] = {
            SightedArtillery = {
                enabled = true,
                spellId = 272422,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272422",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "272422",
                    }
                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            Ferocity = {
                enabled = true,
                spellId = 272888,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272888",
                    }
                }
            },
        },
    }
}