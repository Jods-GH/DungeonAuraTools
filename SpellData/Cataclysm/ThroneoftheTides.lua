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
            ShockBlast = {
                enabled = true,
                spellId = 76008, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "76008",
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
        [JDT.GroupTypes.TargetedCast] = {
            Squeeze = {
                enabled = true,
                spellId = 76026,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "76026",
                    }
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            CurseOfFatigue = {
                enabled = true,
                spellId = 76094, -- for spellname etc
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76094",
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            DarkFissure = {
                enabled = true,
                spellId = 76047,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "76047",
                    }
                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            Enrage = {
                enabled = true,
                spellId = 76100,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "76100",
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
                spellId = 76165, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76165",
                    },
                }
            }
        },
        [JDT.GroupTypes.FrontalIntoDot] = {
            MagmaSplash = {
                enabled = true,
                spellId = 76170,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "76170",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76170",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedKnockCast] ={
            LavaBolt  = {
                enabled = true,
                spellId = 76171, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76171",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            EarthShards = {
                enabled = true,
                spellId = 84931,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "84931",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoStopAtackingShield] ={
            AbsorbMagic= {
                enabled = true,
                spellId = 76308, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "76308",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "76308",
                    },
                }
            },
        },
        [JDT.GroupTypes.PlayerGroupDebuff] ={
            Enslave = {
                enabled = true,
                spellId = 76207, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76207",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "76207",
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
        [JDT.GroupTypes.BuffCast] = {
            TidalSurge = {
                enabled = true,
                spellId = 76133,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "76133",
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            AuraOfDread = {
                enabled = true,
                spellId = 83971,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "83971",
                    },

                }
            },
            BlightOfOzumat= {
                enabled = true,
                spellId = 83561,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "83561",
                    },

                }
            },
        },
        --add spells
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            ShadowBolt = {
                enabled = true,
                spellId = 32860, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "32860",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            BrainSpike = {
                enabled = true,
                spellId = 83915,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "83915",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff] = {
            VeilOfShadow = {
                enabled = true,
                spellId = 221696,
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "221696",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "221696",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            BlightSpray = {
                enabled = true,
                spellId = 83985,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "83985",
                    }
                }
            },
        },
        [JDT.GroupTypes.Jump] ={
            ShadowBlast = {
                enabled = true,
                spellId = 83929, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "83929",
                    },
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
