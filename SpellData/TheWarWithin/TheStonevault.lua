local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.TheStonevault = {
    groupName = "[SV",
    zoneId = "2341", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1269, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.TheStonevault.Bosses


bosses.boss1 = { --	E.D.N.A.
    EncounterId = "2854", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            RefractingBeam = {
                enabled = true,
                spellId = 424805, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "424805",
                    },
                }
            },
            VolatileSpike = {
                enabled = true,
                spellId = 424903, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "424903",
                    },
                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            SeismicSmash = {
                enabled = true,
                spellId = 424888,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "424888",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            SeismicReverberation  = {
                enabled = true,
                spellId = 424889, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "424889",
                    },
                }
            }
        },
    }
}
bosses.boss2 = { --	Skarmorak 
    EncounterId = "2880", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.AddSummonCast] = {
            CrystallineSmash = {
                enabled = true,
                spellId = 422233,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "422233",
                    },
                }
            },
        },
        [JDT.GroupTypes.BigStackingAoeWithCD] = {
            VoidDischarge = {
                enabled = true,
                spellId = 423324,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423324",
                    },
                    {
                        spellId = "423324",
                        duration = "2"

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423324",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            UnstableCrash = {
                enabled = true,
                spellId = 423538, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423538",
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgBuff] = {
            VoidEmpowerment = {
                enabled = true,
                spellId = 423572,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "423572",
                    }

                }
            },
        },
        -- add spell
        [JDT.GroupTypes.KillAddChanneling] = {
            Reclaim = {
                enabled = true,
                spellId = 426215, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426215",
                    },
                }
            },
        },
        
    }
}
bosses.boss3 = { --	Master Machinists Brokk and Dorlita
    EncounterId = "2888", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.SlowDebuff] ={
            MoltenMetal = {
                enabled = true,
                spellId = 428161, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "428161",
                    },
                }
            }
        },
        [JDT.GroupTypes.TankBusterCast] = {
            MoltenHammer = {
                enabled = true,
                spellId = 428711,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428711",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            LavaExpulsion  = {
                enabled = true,
                spellId = 428120, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "428120",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            ExhausVents = {
                enabled = true,
                spellId = 445541,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "445541",
                    },

                }
            },
            ScrapCube = {
                enabled = true,
                spellId = 428202,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428202",
                    },

                }
            },
        },
    }
}

bosses.boss4 = { --	Void Speaker Eirich
    EncounterId = "2883", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.DotHighStacksWarning] ={
            VoidCorruption = {
                enabled = true,
                spellId = 427329, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "427329",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            EntropicReckoning = {
                enabled = true,
                spellId = 427854, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427854",
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            UnbridledVoid = {
                enabled = true,
                spellId = 427869,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427869",
                    }

                }
            },
            SeismicWave = {
                enabled = true,
                spellId = 425027,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "425027",
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
            StoneBolt = {
                enabled = true,
                spellId = 429422, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "429422",
                    },
                }
            },
            AlloyBolt = {
                enabled = true,
                spellId = 429110, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "429110",
                    },
                }
            },
            
        },
        [JDT.GroupTypes.KillAddChanneling] = {
            EarthBurstTotem = {
                enabled = true,
                spellId = 429427,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "429427",
                    }
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            StatiConcussiveSmash = {
                enabled = true,
                spellId = 427382, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "427382",
                    },
                }
            },
            GroundPound = {
                enabled = true,
                spellId = 425974, -- for spellname etc
                extraName = " slow",
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "425974",
                    },
                }
            }
        },
        [JDT.GroupTypes.Charge] = {
            ShieldStampede = {
                enabled = true,
                spellId = 448640,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "448640",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableAoeFear] ={
            HowlingFear= {
                enabled = true,
                spellId = 449455, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "449455",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            GraniteEruption = {
                enabled = true,
                spellId = 428703,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428703",
                    },
                }
            },
            GroundPound = {
                enabled = true,
                spellId = 425974,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "425974",
                    },
                }
            },
            CrystalSalvo = {
                enabled = true,
                spellId = 426345,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426345",
                    },
                }
            },
        },
        [JDT.GroupTypes.BigStackingAoeWithCD] = {
            SmashRock = {
                enabled = true,
                spellId = 428879,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428879",
                    },
                    {
                        spellId = "428879",
                        duration = "2"
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "428879",
                    },

                }
            },
            PiercingWail = {
                enabled = true,
                spellId = 445207,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "445207",
                    },
                    {
                        spellId = "445207",
                        duration = "6"
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "445207",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            ArcingVoid = {
                enabled = true,
                spellId = 426283,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426283",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            VoidInfection = {
                enabled = true,
                spellId = 426308,
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426308",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "426308",
                    }
                }
            },
            MoltenMortar = {
                enabled = true,
                spellId = 449154,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "449154",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "449154",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.ShockWave] = {
            LavaCannon = {
                enabled = true,
                spellId = 449130,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "449130",
                    }
                }
            },

        },
        [JDT.GroupTypes.CastIntoDot] ={
            IcyBuffet = {
                enabled = true,
                spellId = 426771, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426771",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "426771",
                    },
                }
            }
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            RestoringMetals = {
                enabled = true,
                spellId = 429109,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "429109",
                    },

                }
            },
        },
        [JDT.GroupTypes.Jump] ={
            PulverizingPounce = {
                enabled = true,
                spellId = 447141, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "447141",
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            FracturingBlows = {
                enabled = true,
                spellId = 423766,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "423766",
                    },
                }
            },
        },
        [JDT.GroupTypes.SummoningCast] = {
            UnleashTheVoid = {
                enabled = true,
                spellId = 428532,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428532",
                    }
                }
            },
        },
    },
}
