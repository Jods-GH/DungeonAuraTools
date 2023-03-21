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

    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 

    }
}