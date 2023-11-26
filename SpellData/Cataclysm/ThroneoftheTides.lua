local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Cataclysm = JDT.SpellList.Cataclysm or {}
JDT.SpellList.Cataclysm.Dungeons = JDT.SpellList.Cataclysm.Dungeons or {}


JDT.SpellList.Cataclysm.Dungeons.ThroneoftheTides = {
    groupName = "[TOT",
    zoneId = "g182", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 65, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Cataclysm.Dungeons.ThroneoftheTides.Bosses


bosses.boss1 = { --	Lady Naz'jar
    EncounterId = "1045", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            Waterblast = {
                enabled = true,
                spellId = 428263, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428263",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            FocusedTempest = {
                enabled = true,
                spellId = 428374, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428374",
                    },
                }
            }
        },
        [JDT.GroupTypes.SpreadCastIntoCastSuccessAvoid] ={
            ShockBlast = {
                enabled = true,
                spellId = 428054, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428054",
                    },
                    {
                        duration = "2",
                        spellId = "428054",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Geysers = {
                enabled = true,
                spellId = 427771, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427771",

                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            Waterspout = {
                enabled = true,
                spellId = 75683,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "75683",
                    },
                }
            },
        },
        --add spells
        [JDT.GroupTypes.Frontal] = {
            ArcSlash = {
                enabled = true,
                spellId = 75907,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "75907",
                    }
                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            ChainLightning = {
                enabled = true,
                spellId = 75813,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "75813",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            LightningSurge = {
                enabled = true,
                spellId = 396717,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396717",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "396717",
                    },
                }
            },
        },
    }
}
bosses.boss2 = { --	Commander Ulthok, the Festering Prince
    EncounterId = "1044", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {

        [JDT.GroupTypes.KnockCast] ={
            FesteringShockwave = {
                enabled = true,
                spellId = 427668, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427668",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            BubblingFissure = {
                enabled = true,
                spellId = 427672,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427672",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            CrushingClaw = {
                enabled = true,
                spellId = 427670,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427670",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "427670",
                    },
                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            AwakenOoze = {
                enabled = true,
                spellId = 427456,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427456",
                    },
                }
            },
        },
    }
}
bosses.boss3 = { --	Mindbender Ghur'sha
    EncounterId = "1046", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.Dot] ={
            Emberstrikes  = {
                enabled = true,
                spellId = 429048, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "429048",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoKillAddAlive] = {
            StormflurryTotem = {
                enabled = true,
                spellId = 429037,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "429037",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "214117",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Earthfury = {
                enabled = true,
                spellId = 429057, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "429057",
                    },

                }
            }
        },
    }
}
bosses.boss4 = { --	Ozumat
    EncounterId = "1047", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.CastIntoDot] ={
            PutridRoar = {
                enabled = true,
                spellId = 428868, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428868",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "428868",
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            MurkSpew = {
                enabled = true,
                spellId = 428530,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428530",
                    }
                }
            },
        },
        --add spells
        [JDT.GroupTypes.InteruptableVolley] = {
            BlottingBarrage = {
                enabled = true,
                spellId = 428401,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428401",
                    },
                }
            },
        },
        [JDT.GroupTypes.GoMeleeCast] = {
            FoulBolt = {
                enabled = true,
                spellId = 428889,
                showGlow = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428889",
                    },

                }
            },
        },
        [JDT.GroupTypes.SoakVoidWithDebuff] ={
            CleansingFlux = {
                enabled = true,
                spellId = 428694, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "428694",
                    },
                }
            }
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.CastIntoChase] = {
            RavenousPursuit = {
                enabled = true,
                spellId = 426663,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426663",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "426663",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "426663",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            HealingWave = {
                enabled = true,
                spellId = 76813,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "76813",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableCastIntoCurseHex] = {
            Hex = {
                enabled = true,
                spellId = 76820,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "76820",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76820",
                    }
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            WaterBolt = {
                enabled = true,
                spellId = 426731, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426731",
                    },
                }
            },
            MindFlay = {
                enabled = true,
                spellId = 426783, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426783",
                    },
                }
            },
            LightningBolt = {
                enabled = true,
                spellId = 426768, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426768",
                    },
                }
            },
            Frostbolt = {
                enabled = true,
                spellId = 428103, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428103",
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            Shellbreaker = {
                enabled = true,
                spellId = 426741,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "426741",
                    },
                }
            },
        },
        [JDT.GroupTypes.ToppableDot] = {
            CrushingDepths = {
                 enabled = true,
                 spellId = 428542,
                 triggerData = {
                     {
                         unit = JDT.Templates.Triggers.UnitTypes.player,
                         spellId = "428542",
                     }
                 }
             },
         },
         [JDT.GroupTypes.VoidCast] = {
            VolatileBolt = {
                enabled = true,
                spellId = 426684,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426684",
                    },
                }
            },
            AcidBarrage = {
                enabled = true,
                spellId = 426727,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426727",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            ThrowSpear= {
                enabled = true,
                spellId = 427384,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427384",
                    }
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            PoisonedSpear = {
                enabled = true,
                spellId = 76516,
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "76516",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76516",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableCast] = {
            Aquablast = {
                enabled = true,
                spellId = 429176,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "429176",
                    },
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            ShadowSmash = {
                enabled = true,
                spellId = 76590, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "76590",
                    },
                }
            },
            ClenchingTentacles = {
                enabled = true,
                spellId = 428926, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428926",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            Swell = {
                enabled = true,
                spellId = 76634, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "76634",
                    },
                }
            }
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            WaveofCorruption = {
                enabled = true,
                spellId = 76363,
                showStacks = 1,
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76363",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            LightningSurge = {
                enabled = true,
                spellId = 75992, -- for spellname etc
                type= JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "75992",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "75992",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "75992",
                    },
                }
            }
        },
    },
}
