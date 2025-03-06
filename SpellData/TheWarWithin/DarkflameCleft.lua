local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.DarkflameCleft = {
    groupName = "[DC",
    zoneId = "2303", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1210, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.DarkflameCleft.Bosses


bosses.boss1 = { --	Ol' Waxbeard
    EncounterId = "2829", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            RockBuster = {
                enabled = true,
                spellId = 421665,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "421665",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "421665",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            LuringCandleflame = {
                enabled = true,
                spellId = 422163,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "422163",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "422163",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "422163",
                    },
                }
            },
        },
        [JDT.GroupTypes.KillAddChanneling] = {
            UnderhandedTracktics = {
                enabled = true,
                spellId = 429093,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "429093",
                    }
                }
            },

        },
        [JDT.GroupTypes.Charge] ={
            RecklessCharge= {
                enabled = true,
                spellId = 422116, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "422116",
                    },
                }
            },
        },
        [JDT.GroupTypes.SpellcastSucceededAvoid] ={
            CaveIn = {
                enabled = true,
                spellId = 422271, -- for spellname etc
                triggerData = {
                    {
                        spellId = "422271",
                        duration = 4,
                        unit = "boss1"
                    },

                }
            }
        },
    }
}
bosses.boss2 = { --	Blazikon  
    EncounterId = "2826", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.UnavoidableAoe] ={
            DousingBreath = {
                enabled = true,
                spellId = 425394, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "425394",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoKeepMovingWithDebuff] = {
            WicklighterBarrage = {
                enabled = true,
                spellId = 421817,
                ticks = {
                    "20",
                    "40",
                    "60",
                    "80",
                    },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "421817",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "421817",
                    }
                }
            },
        },
        [JDT.GroupTypes.GoMeleeCast] ={
            BlazingStorms = {
                enabled = true,
                spellId = 443835, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "443835",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            EnkindlingInferno = {
                enabled = true,
                spellId = 423109, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423109",
                    },
                }
            },
            ExtinguishingGust = {
                enabled = true,
                spellId = 421910, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "421910",
                    },
                }
            },
        },
    }
}
bosses.boss3 = { --	The Candle King 
    EncounterId = "2787", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.InteruptableAoeFear] ={
            ParanoidMind= {
                enabled = true,
                spellId = 426145, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "426145",
                    },
                }
            },
        },
        
        [JDT.GroupTypes.TargetedKnockCast] ={
            DarkflamePickaxe = {
                enabled = true,
                spellId = 421277, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "421277",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            ThrowDarkflame= {
                enabled = true,
                spellId = 448877, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "420696",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "420696",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "420696",
                    },

                }
            }
        },
    }
}

bosses.boss4 = { --	The Darkness
    EncounterId = "2788", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.Useless] ={
            SmotheringShadows = {
                enabled = true,
                spellId = 422806, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "422806",
                    },
                }
            }
        },
        [JDT.GroupTypes.SpreadCast] = {
            Shadowblast = {
                enabled = true,
                spellId = 427011,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427011",
                    }
                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            CallDarkspawn = {
                enabled = true,
                spellId = 427157,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427157",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            EternalDarkness = {
                enabled = true,
                spellId = 428266, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428266",
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            UmbralSlash = {
                enabled = true,
                spellId = 427025,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427025",
                    }
                }
            },
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        
    },
}
