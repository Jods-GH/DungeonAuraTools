local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.Freehold = {
    groupName = "[FH",
    zoneId = "936",  -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1001, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.Freehold.Bosses

bosses.boss1 = {  -- Scycaptain Kragg
    EncounterId = "2093", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.AvoidCombatLogSuccess] ={
            DiveBomb = {
                enabled = true,
                spellId = 268717, -- for spellname etc
                triggerData = {
                    {
                        spellId = "268717",
                        duration = "2.5"

                    },

                }
            }
        },
        [JDT.GroupTypes.ShockWave] = {
            Charrrrrge = {
                enabled = true,
                spellId = 255952,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "255952",
                    }

                }
            },

        },
        [JDT.GroupTypes.Frontal] = {
            AzeritePowderShot = {
                enabled = true,
                spellId = 256106,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "256106",
                    }

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            RevitalizingBrew = {
                enabled = true,
                spellId = 256060,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "256060",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpellcastSucceededAvoid] ={
            VileBombardment = {
                enabled = true,
                spellId = 256035, -- for spellname etc
                triggerData = {
                    {
                        spellId = "256052",
                        duration = "4",
                        delay = "13",
                        unit = "boss1"
                    },

                }
            }
        },
    }
}

bosses.boss2 = {  -- Council o' Captains
    EncounterId = "2094", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 

        --Captain Raoul
        [JDT.GroupTypes.CastStartSoak] ={
            InvigoratingFreeholdBrew = {
                enabled = true,
                spellId = 264608, -- for spellname etc
                triggerData = {
                    {
                        spellId = "264608",
                        duration = "8"

                    },

                }
            },
            ConfidenceBoostingFreeholdBrew = {
                enabled = true,
                spellId = 265088, -- for spellname etc
                triggerData = {
                    {
                        spellId = "265088",
                        duration = "8"

                    },

                }
            },
        },
        [JDT.GroupTypes.CastStartNoSoak] ={
            CausticFreeholdBrew = {
                enabled = true,
                spellId = 265168, -- for spellname etc
                triggerData = {
                    {
                        spellId = "265168",
                        duration = "8"

                    },

                }
            },           
        },
        [JDT.GroupTypes.Dot] ={
            CausticFreeholdBrew  = {
                enabled = true,
                spellId = 265168, -- for spellname etc
                extraName = " dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "265168",

                    },

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            BarrelSmash = {
                enabled = true,
                spellId = 256589, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "256589",

                    },

                }
            },
        },

        [JDT.GroupTypes.CastIntoKillAddDebuff] ={
            BlackoutBarrel = {
                enabled = true,
                spellId = 258338, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "258338",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "258338",

                    },

                }
            },
        },

        
        --Captain Eudora

        [JDT.GroupTypes.TargetedCast] = {
            PowderShot = {
                enabled = true,
                spellId = 256979,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "256979",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Grapeshot = {
                enabled = true,
                spellId = 258352, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "258352",

                    },

                }
            },
        },
        --Captain Jolly
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            CuttingSurge = {
                enabled = true,
                spellId = 267522,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "267522",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "267522",
                    },

                }
            },
        },
        [JDT.GroupTypes.SummonAxeCast] ={
            WhirlpoolofBlades = {
                enabled = true,
                spellId = 267533, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "267533",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            CuttingSurge  = {
                enabled = true,
                spellId = 267523, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "267523",

                    },

                }
            }
        },
       
    }
}
bosses.boss3 = {  -- Ring of Booty
    EncounterId = "2095", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.Dot] ={
            RipperPunch  = {
                enabled = true,
                spellId = 256363, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "256363",

                    },

                }
            }
        },
        [JDT.GroupTypes.SpinToWin] = {
            SharkTornado = {
                enabled = true,
                spellId = 256405,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "256405",
                    }
                }
            },
        },
    }
}
bosses.boss4 = {  -- Lord Harlan Sweete
    EncounterId = "2096", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.FirstHitAuraApplied] ={
            CannonBarrage  = {
                enabled = true,
                spellId = 257305, -- for spellname etc
                triggerData = {
                    {
                        spellId = "257305",
                        duration = "3.8",
                        destUnit = "player",
                    },

                }
            }
        },
        [JDT.GroupTypes.DodgeCast] = {
            SwiftwindSaber = {
                enabled = true,
                spellId = 413145,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "413145",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpellcastSucceededAdds] ={
            AvastYe= {
                enabled = true,
                spellId = 257316, -- for spellname etc
                triggerData = {
                    {
                        spellId = "257316",
                        duration = "3.2"
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            WhirlingDagger  = {
                enabled = true,
                spellId = 413136, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "413136",

                    },

                }
            }
        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 

        [JDT.GroupTypes.AvoidCombatLogSuccess] ={
            VileBombardment = {
                enabled = true,
                spellId = 256035, -- for spellname etc
                loadInBossfight = false,
                triggerData = {
                    {
                        spellId = "257272",
                        duration = "4",
                        delay = "12",

                    },

                }
            }
        },

        [JDT.GroupTypes.Frontal] = {
            BrutalBackhand = {
                enabled = true,
                spellId = 257426,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257426",
                    }

                }
            },
            FrostBlast = {
                enabled = true,
                spellId = 257784,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257784",
                    }

                }
            },

        },
        [JDT.GroupTypes.Grenade] = {
            AzeriteGrenade = {
                enabled = true,
                spellId = 258672,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "258672",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            HealingBalm = {
                enabled = true,
                spellId = 257397,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257397",
                    },

                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            DuelistDash= {
                enabled = true,
                spellId = 274400, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "274400",

                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            SeaSpout = {
                enabled = true,
                spellId = 258777,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "258777",
                    },

                }
            },
            BoulderThrow = {
                enabled = true,
                spellId = 258181,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "258181",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoDontJumpWithDebuff] = {
            SlipperySuds = {
                enabled = true,
                spellId = 274507,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "274507",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "274507",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpinToWin] = {
            BladeBarrage = {
                enabled = true,
                spellId = 257870,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257870",
                    }

                }
            },
            GoinBananas = {
                enabled = true,
                spellId = 257756,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257756",
                    }

                }
            },

        },
        [JDT.GroupTypes.TrapSpawn] ={
            RatTraps = {
                enabled = true,
                spellId = 274383, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "274383",

                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            RicochetingThrow = {
                enabled = true,
                spellId = 272402,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "272402",
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            WaterBolt = {
                enabled = true,
                spellId = 281420, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "281420",

                    },

                }
            },
            LightningBolt = {
                enabled = true,
                spellId = 259092, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "259092",

                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            BlindRage = {
                enabled = true,
                spellId = 257739,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257739",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "257739",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "257739",
                    },


                }
            },
        },

        [JDT.GroupTypes.InteruptShout] = {
            ShatteringBellow = {
                enabled = true,
                spellId = 257732,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257732",
                    },
                {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            GroundShatter = {
                enabled = true,
                spellId = 258199, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "258199",

                    },

                }
            },
        },
        [JDT.GroupTypes.MobSuicide] ={
            PainfulMotivation = {
                enabled = true,
                spellId = 257899, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257899",

                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigAoeCast] = {
            ThunderingSquall = {
                enabled = true,
                spellId = 257736,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "257736",
                    },

                }
            },
        },
    }
}