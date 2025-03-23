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
                    "16.6",
                    "33.3",
                    "50",
                    "66.6",
                    "83.3",
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
        [JDT.GroupTypes.Dot] ={
            CrudeWeapons  = {
                enabled = true,
                spellId = 425565, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "425565",
                    },
                }
            },
            Flashpoint  = {
                enabled = true,
                spellId = 428019, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "428019",
                    },
                }
            },
            CreepingShadow  = {
                enabled = true,
                spellId = 469620, -- for spellname etc
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "469620",
                    },
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            WildWallop = {
                enabled = true,
                spellId = 423501, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "423501",

                    },

                }
            },
            SurgingFlame = {
                enabled = true,
                spellId = 440652, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "440652",

                    },

                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            OverpoweringRoar = {
                enabled = true,
                spellId = 428066,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428066",
                    }
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            WicklighterBolt = {
                enabled = true,
                spellId = 423479, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "423479",
                    },
                }
            },
            FlameBolt = {
                enabled = true,
                spellId = 428563, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428563",
                    },
                }
            },
            CandleflameBolt = {
                enabled = true,
                spellId = 426677, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426677",
                    },
                }
            },
        },
        [JDT.GroupTypes.GoMeleeCast ] ={
            ThrowRock = {
                enabled = true,
                spellId = 428089, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428089",
                    },
                }
            }
        },
        [JDT.GroupTypes.RageBuffCast] = {
            MoleFrenzy = {
                enabled = true,
                spellId = 425536,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "425536",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedStunCast] = {
            Bonk = {
                enabled = true,
                spellId = 426883,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426883",
                    },
                }
            },
            OneHandHeadlock = {
                enabled = true,
                spellId = 426619,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426619",
                    },
                }
            },
        },
        [JDT.GroupTypes.BigStackingAoeWithCD] = {
            ExplosiveFlame = {
                enabled = true,
                spellId = 424322,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "424322",
                    },
                    {
                        spellId = "424322",
                        duration = "0"

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "424322",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            QuenchingBlast = {
                enabled = true,
                spellId = 430171, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "430171",
                    },
                }
            },
            DrainLight = {
                enabled = true,
                spellId = 422541, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "422541",
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            CeaselessFlame = {
                enabled = true,
                spellId = 426261,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426261",
                    }
                }
            },
        },
        [JDT.GroupTypes.InterruptableSuppresion] ={ 
            FlamingTether = {
                enabled = true,
                spellId = 426295, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426295",
                    },
                }
            }
        },
        [JDT.GroupTypes.KnockCast] ={
            MassiveStomp = {
                enabled = true,
                spellId = 1218117, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1218117",
                    },
                }
            }
        },
    },
}
