local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.TheRookery = {
    groupName = "[TR",
    zoneId = "g447", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1268, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.TheRookery.Bosses


bosses.boss1 = { --	Kyrioss
    EncounterId = "2816", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.VoidCast] = {
            WildLightning = {
                enabled = true,
                spellId = 474018,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "474018",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            LightningTorrent = {
                enabled = true,
                spellId = 444034, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "444034",
                    },
                }
            },
        },
    
    }
}
bosses.boss2 = { --	Stormguard Gorren 
    EncounterId = "2861", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.SoakableTargetedDebuffWithCantSoakDebuff] ={
            ChaoticCorruption = {
                enabled = true,
                spellId = 424737, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "424737",
                        exactSpellId = "true", 

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "424739",
                        exactSpellId = "true", 

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "424737",
                        exactSpellId = "true", 
                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            CrushReality= {
                enabled = true,
                spellId = 425113, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "425113",

                    },
                    {
                        spellId = "425113",
                        duration = "5"

                    },

                }
            }
        },
        [JDT.GroupTypes.StayAwayCastIntoSpellAuraApplied] = {
            DarkGravity = {
                enabled = true,
                spellId = 425048,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "425048",
                    },
                    {
                        spellId = "425048",
                        duration = "6"
                    },

                }
            },
        },
    }
}
bosses.boss3 = { --	Voidstone Monstrosity 
    EncounterId = "2836", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.VoidCast] = {
            OblivionWave = {
                enabled = true,
                spellId = 445457,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "445457",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            UnleashCorruption= {
                enabled = true,
                spellId = 429487, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "429487",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "429493",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "429493",
                    },

                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            NullUpheaval = {
                enabled = true,
                spellId = 423305, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423305",
                    },
                }
            },
        },
        [JDT.GroupTypes.IncreasedDmgTakenChannel] = {
            StormsVengeance = {
                enabled = true,
                spellId = 424371,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "424371",
                    }

                }
            },

        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            LightningBolt = {
                enabled = true,
                spellId = 430109, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "430109",
                    },
                }
            },
            VoidBolt = {
                enabled = true,
                spellId = 430238, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "430238",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] = {
            LocalizedStorm = {
                enabled = true,
                spellId = 427404,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427404",
                    }
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            WildLightning = {
                enabled = true,
                spellId = 474018, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "474018",
                    },
                }
            },
            UnleashDarkness = {
                enabled = true,
                spellId = 1214628, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1214628",
                    },
                }
            },
        },
        [JDT.GroupTypes.Orbs] = {
            BoundingVoid = {
                enabled = true,
                spellId = 426893,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "426893",
                    },

                }
            },
        },
        [JDT.GroupTypes.ShieldCast] ={
            EntropyShield = {
                enabled = true,
                spellId = 450628, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "450628",
                    },
                }
            }
        },
        [JDT.GroupTypes.RageBuffCast] = {
            LightningSurge = {
                enabled = true,
                spellId = 427260,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427260",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            EnergizedBarrage = {
                enabled = true,
                spellId = 427616,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427616",
                    }
                }
            },
            SeepingCorruption = {
                enabled = true,
                spellId = 430179,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "430179",
                    }
                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            VoidCrush = {
                enabled = true,
                spellId = 474031,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "474031",
                    },

                }
            },
            ArcingVoid = {
                enabled = true,
                spellId = 430805,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "430805",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            FeastingVoid = {
                enabled = true,
                spellId = 1214523,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1214523",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1214523",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.RunOut] ={
            UmbralWave = {
                enabled = true,
                spellId = 1214546, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1214546",
                    },
                }
            },
            AttractingShadows = {
                enabled = true,
                spellId = 430812, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "430812",
                    },
                }
            },
        },
        [JDT.GroupTypes.KeepMovingWithDebuff] = {
            SeepingCorruption = {
                enabled = true,
                spellId = 430179,
                extraName = " active",
                ticks = {
                    "20",
                    "40",
                    "60",
                    "80",
                    },
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "430179",
                    }
                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            VoidExtraction = {
                enabled = true,
                spellId = 472764,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "472764",
                    }
                }
            },
        },
    },
}
