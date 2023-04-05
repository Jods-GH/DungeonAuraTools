local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.HallsOfInfusion = {
    groupName = "[HOI",
    zoneId = "g434", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)2082
    EncounterJournalID = 1204, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.HallsOfInfusion.Bosses

bosses.boss1 = {  -- Watcher Irideus
    EncounterId = "2615", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.CastIntoRemoveShield] = {
            AblativeBarrier = {
                enabled = true,
                spellId = 383840,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "383840",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "383840",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            PowerOverload= {
                enabled = true,
                spellId = 389179, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "389179",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "389179",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "389179",
                    },

                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            SparkVolley= {
                enabled = true,
                spellId = 384351, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384351",

                    },

                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            StaticSurge = {
                enabled = true,
                spellId = 384014, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384014",

                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            TitanicFist = {
                enabled = true,
                spellId = 384524,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384524",
                    }

                }
            },

        },
    }
}

bosses.boss2 = {  -- Gulping Goliath
    EncounterId = "2616", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.RunOut] ={
            BellySlam = {
                enabled = true,
                spellId = 385531, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385531",

                    },

                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            Gulp = {
                enabled = true,
                spellId = 385551,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385551",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            GulpSwogToxin = {
                enabled = true,
                spellId = 374389, -- for spellname etc
                showStacks = 1,
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "374389",

                    },

                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            OverpoweringCroak= {
                enabled = true,
                spellId = 385181, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385181",

                    },

                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            ToxicEffluvia = {
                enabled = true,
                spellId = 385442, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385442",

                    },

                }
            },
        },
    }
}
bosses.boss3 = {  -- Khajin the Unyielding
    EncounterId = "2617", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.CastWithSafeDeBuffDuringCast] = {
            Hailstorm = {
                enabled = true,
                spellId = 386757,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "386757",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386757",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            GlacialSurge= {
                enabled = true,
                spellId = 386559, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386559",

                    },

                }
            }
        },
        [JDT.GroupTypes.SlowDebuff] ={
            FrostShock = {
                enabled = true,
                spellId = 385963, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "385963",

                    },

                }
            }
        },
    }
}
bosses.boss4 = {  -- Primal Tsunami
    EncounterId = "2618", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.GoMeleeCast ] ={
            Undertow = {
                enabled = true,
                spellId = 389875, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "389875",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            TempestsFury = {
                enabled = true,
                spellId = 388424, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388424",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Submerge = {
                enabled = true,
                spellId = 387585, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387585",

                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            InfusedGlobules= {
                enabled = true,
                spellId = 387559, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387559",

                    },
                    {
                        spellId = "387559",
                        duration = "11"

                    },

                }
            }
        },
        [JDT.GroupTypes.KnockCast] ={
            SquallBuffet = {
                enabled = true,
                spellId = 387504, -- for spellname etc
                RoleLoad = {
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387504",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.TankBusterCast] = {
            FocusedDeluge = {
                enabled = true,
                spellId = 387571,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "387571",
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