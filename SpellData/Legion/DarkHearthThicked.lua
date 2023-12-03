local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.DarkheartThicket = {
    groupName = "[DHT",
    zoneId = "733", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 762, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.DarkheartThicket.Bosses


bosses.boss1 = {  -- Archdruid Glaidalis
    EncounterId = "1836", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.ToppableDot] = {
           GriviousTear = {
                enabled = true,
                spellId = 196376,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "196376",
                    }
                }
            },
        },
        [JDT.GroupTypes.Charge] = {
            PrimalRage = {
                enabled = true,
                spellId = 198376,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198376",
                    }
                }
            },
        },
        
    }  
}

bosses.boss2 = {  -- Oakheart
    EncounterId = "1837", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.CastIntoRoot] ={
            StranglingRoots= {
                enabled = true,
                spellId = 204574, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "204574",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "204574"
                    },
                }
            }
        },
        [JDT.GroupTypes.KillAddDebuff] ={
            StranglingRootsAlive= {
                enabled = true,
                spellId = 199063, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "199063",
                        ignoreSelf = false,
                    },
                }
            }
        },
        [JDT.GroupTypes.KnockCast] ={ -- this is the wrong type needs to be changed
            ShatteredEarth = {
                enabled = true,
                spellId = 204666, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "204666",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastWithTargetAnounce] ={
            CrushingGrip= {
                enabled = true,
                spellId = 204611, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "204611",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            NightmareBreath = {
                enabled = true,
                spellId = 204667,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "204667",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            NightmareBreathDot  = {
                enabled = true,
                spellId = 204667, -- for spellname etc
                extraName = " debuff",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "204667",

                    },

                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            Uproot = {
                enabled = true,
                spellId = 212786,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "212786",
                    }
                }
            },
        },
       
    }  
}
bosses.boss3 = {  -- 	Dresaron
    EncounterId = "1838", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.StayCloseCast] = {
            DownDraft = {
                enabled = true,
                spellId = 199345,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "199345",
                    }
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            EarthShakingRoar= {
                enabled = true,
                spellId = 199389,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "199389",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            BreathOfCorruption = {
                enabled = true,
                spellId = 191325,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "191325",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            BreathOfCorruptionDot  = {
                enabled = true,
                spellId = 191325, -- for spellname etc
                extraName = " debuff",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "191325",

                    },

                }
            }
        },
    }  
}
bosses.boss4 = {  -- 	Shade of Xavius
    EncounterId = "1839", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            GrowingParanoia = {
                enabled = true,
                spellId = 200289, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200289",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200289",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "200289",
                    },
                }
            }
        },
        [JDT.GroupTypes.HealDebuff] = {
            FesteringRip = {
                enabled = true,
                spellId = 200182,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200182",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            FeedOnTheWeek = {
                enabled = true,
                spellId = 200238,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200238",
                    }
                }
            },
            NightmareBolt = {
                enabled = true,
                spellId = 212834,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "212834",
                    }
                }
            },
        },
        [JDT.GroupTypes.BossCastIntoStack] ={
            WakingNightmare = {
                enabled = true,
                spellId = 200243, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200243",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200243",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "200243",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            ApocalypticNightmare = {
                enabled = true,
                spellId = 200050, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200050",
                    },
                }
            }
        },
    }  
}



bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.ToppableDot] = {
            GriviousRip = {
                 enabled = true,
                 spellId = 225484,
                 triggerData = {
                     {
                         unit = JDT.Templates.Triggers.UnitTypes.player,
                         spellId = "225484",
                     }
                 }
             },
         },
         [JDT.GroupTypes.PlayerGroupDebuffSpread ] ={
            NightmareToxin = {
                enabled = true,
                spellId = 200684, -- for spellname etc
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200684",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "200684",
                    },
                }
            },
            CurseOfIsolation = {
                enabled = true,
                spellId = 201842, -- for spellname etc
                extraName = " debuff",
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "201842",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "201842",
                    },
                }
            }
        },
        [JDT.GroupTypes.InteruptableTargetedCastIntoHealingReducedMagicDebuff] ={
            Despair = {
                enabled = true,
                spellId = 200642, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200642",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200642",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            StarShower = {
                enabled = true,
                spellId = 200658,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200658",
                    },

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoeBigAoeIfDebuff] = {
            MaddeningRoar = {
                enabled = true,
                spellId = 200580,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200580",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200580",
                    },
                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            PropellingCharge= {
                enabled = true,
                spellId = 200768, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200768",
                    },
                }
            },
            BloodAssault= {
                enabled = true,
                spellId = 201227, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201227",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableCast] = {
            UnnervingScreech = {
                enabled = true,
                spellId = 200631,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200631",
                    },
                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            SpewCorruption = {
                enabled = true,
                spellId = 218755,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "218755",
                    }
                }
            },
        },
        [JDT.GroupTypes.Fixate] = {
            Fixate = {
                enabled = true,
                spellId = 198477,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "198477",
                    }
                }
            },
        },
        [JDT.GroupTypes.HealDebuff] = {
            poisonSpear = {
                enabled = true,
                spellId = 198904,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "198904",
                    },
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            RootBurst = {
                enabled = true,
                spellId = 201129, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201129",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableAoeFear] ={
            TormentingEye= {
                enabled = true,
                spellId = 204243, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "204243",
                    },
                }
            },
        },
        [JDT.GroupTypes.ExplodingCombatlogStart] ={
            Deadburst = {
                enabled = true,
                spellId = 100529, -- for spellname etc
                triggerData = {
                    {
                        duration = "2.2",
                        spellId = "100529",
                    },
                }
            }
        },
        [JDT.GroupTypes.AvoidCombatLogSuccess] ={
            BloodBomb = {
                enabled = true,
                spellId = 201272, -- for spellname etc
                triggerData = {
                    {
                        spellId = "201272",
                        duration = "3"
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCast] = {
            BloodBolt = {
                enabled = true,
                spellId = 201298,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201298",
                    }
                }
            },
        },
        [JDT.GroupTypes.KillAddChanneling] = {
            BloodMetamorphosis = {
                enabled = true,
                spellId = 225562,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "225562",
                    }
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            DreadInferno = {
                enabled = true,
                spellId = 201399, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201399",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            ScorchingShot  = {
                enabled = true,
                spellId = 201902, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "201902",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastWithTargetAnounce] ={
            CurseOfIsolation= {
                enabled = true,
                spellId = 225568, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "225568",
                    },
                }
            },
        },
    }
}