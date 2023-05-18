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
        [JDT.GroupTypes.Frontal] = {
            FishSlap = {
                enabled = true,
                spellId = 384854,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384854",
                    }

                }
            },
            StinkBreath = {
                enabled = true,
                spellId = 388060,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388060",
                    }

                }
            },
            NecroticBreath = {
                enabled = true,
                spellId = 382712,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382712",
                    }

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            Stomp = {
                enabled = true,
                spellId = 373943, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373943",

                    },

                }
            },
        },
        [JDT.GroupTypes.SpinToWin] = {
            ViolentWhirlwind = {
                enabled = true,
                spellId = 388046,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388046",
                    }

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            GushingOoze = {
                enabled = true,
                spellId = 373872,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373872",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "373872",
                    },

                }
            },
            BoneBolt = {
                enabled = true,
                spellId = 367521,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "367521",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "367521",
                    },

                }
            },
            Witherbolt = {
                enabled = true,
                spellId = 382410,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382410",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "375687",
                    },

                }
            },
        },
        [JDT.GroupTypes.ExplodingCast] = {
            Burst = {
                enabled = true,
                spellId = 374569,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374569",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastIntoAtackspeedSlowDisease] = {
            SwiftWind = {
                enabled = true,
                spellId = 372711,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372711",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "368081",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            SummonLashers = {
                enabled = true,
                spellId = 373024,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373024",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            TouchofDecay = {
                enabled = true,
                spellId = 373698,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373698",
                    }

                }
            },
            DecaySurge = {
                enabled = true,
                spellId = 382474,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382474",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            Bleeding = {
                enabled = true,
                spellId = 375416,
                type = JDT.AuraTypes.bleed,
                showStacks = 1,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "375416",
                    },
    
                }
            },
            BloodyBite = {
                enabled = true,
                spellId = 367481,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "367481",
                    },
    
                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            HyperCharge = {
                enabled = true,
                spellId = 186229,
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "186229",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoRoot] ={
            DecayingRoots = {
                enabled = true,
                spellId = 373897, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373897",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "373897"
                    },

                }
            }
        },
        [JDT.GroupTypes.SpreadCast] = {
            BurstofDecay = {
                enabled = true,
                spellId = 374544,
                triggerData = {
                  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "374544",
                    },

                }
            },
        },
        [JDT.GroupTypes.SummonTotemCastIntoKillWhileChanneling] = {
            SummonTotem = {
                enabled = true,
                spellId = 375065,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "375065",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "375687",
                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            RottingSurge = {
                enabled = true,
                spellId = 383385,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "383385",
                    },

                }
            },
            WitheringBurst = {
                enabled = true,
                spellId = 367503,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "367503",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableAoeFear] ={
            HideousCackle= {
                enabled = true,
                spellId = 367500, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "367500",
                    },
                }
            },
        },
        [JDT.GroupTypes.StormCastIntoEnrageBuff] ={
            Ragestorm= {
                enabled = true,
                spellId = 382555, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382555",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "382555",

                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            ScentedMeat = {
                enabled = true,
                spellId = 384970,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384970",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "384970",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "384970",
                    },


                }
            },
            ViciousClawmangle = {
                enabled = true,
                spellId = 367484,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "367484",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "367484",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "367484",
                    },


                }
            },

        },
        [JDT.GroupTypes.TrapSpawn] ={
            ToxicTrap = {
                enabled = true,
                spellId = 368287, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "368287",

                    },

                }
            },
        },
        [JDT.GroupTypes.SummonTotemCastIntoKillWhileAlive] = {
            RotchantingTotem = {
                enabled = true,
                spellId = 382435,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382435",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "382435",
            
                    },

                }
            },
        },
        [JDT.GroupTypes.Hooking] = {
            FreshCatch = {
                enabled = true,
                spellId = 384847,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384847",
                    },

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            Screech = {
                enabled = true,
                spellId = 385029, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385029",

                    },

                }
            }
        },
        [JDT.GroupTypes.SlowDot ] ={
            WitheringPoison = {
                enabled = true,
                type = JDT.AuraTypes.poison,
                spellId = 385046, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "385046",

                    },

                }
            },
            InfectiousBite = {
                enabled = true,
                spellId = 373581, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "373581",

                    },

                }
            },
        },
        [JDT.GroupTypes.StunCast] = {
            Bash = {
                enabled = true,
                spellId = 373929,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373929",382802
                    },

                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            BloodthirstyCharge= {
                enabled = true,
                spellId = 385832, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385832",

                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            BloodyRage = {
                enabled = true,
                spellId = 385827,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385827",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            SiphonDecay = {
                enabled = true,
                spellId = 382883,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382883",
                    },

                }
            },
        },
        [JDT.GroupTypes.VolleyIntoDisease] = {
            WitheringContagion = {
                enabled = true,
                spellId = 382802,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382802",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "382802",
                    },

                }
            },
        },
    }
}