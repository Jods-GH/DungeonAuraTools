local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.WarlordOfDraenor = JDT.SpellList.WarlordOfDraenor or {}
JDT.SpellList.WarlordOfDraenor.Dungeons = JDT.SpellList.WarlordOfDraenor.Dungeons or {}

JDT.SpellList.WarlordOfDraenor.Dungeons.Everbloom = {
    groupName = "[EB",
    zoneId = "g236", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 556, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.WarlordOfDraenor.Dungeons.Everbloom.Bosses

bosses.boss1 = { --	Witherbark
    EncounterId = "1746", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.IncreasedDmgTakenBuff] = {
            BrittleBark = {
                enabled = true,
                spellId = 164275,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "164275",
                    }
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            ParchedGasp = {
                enabled = true,
                spellId = 164357,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "164357",
                    }
                }
            },
        },
    }
}
bosses.boss2 = { --	Ancient Protectors
    EncounterId = "1757", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            WaterBolt = {
                enabled = true,
                spellId = 168092, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "168092",
                    },
                }
            },
            NaturesWrath = {
                enabled = true,
                spellId = 168040, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "168040",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            RevitalizingWaters = {
                enabled = true,
                spellId = 168082,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "168082",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            RendingCharge  = {
                enabled = true,
                spellId = 168187, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "168187",
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            Slash = {
                enabled = true,
                spellId = 168383,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "168383",
                    }
                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            NoxiousCharge= {
                enabled = true,
                spellId = 427510, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427510",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableStunCast] ={
            ToxicBloom= {
                enabled = true,
                spellId = 427459, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427459",

                    },

                }
            },
        },
    }
}
bosses.boss3 = { --	Archmage Sol 
    EncounterId = "1751", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.TargetedCast] ={
            Fireball = {
                enabled = true,
                spellId = 166464, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "166464",
                    },
                }
            },
            Frostbolt = {
                enabled = true,
                spellId = 166465, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "166465",
                    },
                }
            },
            ArcaneBurst = {
                enabled = true,
                spellId = 166466, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "166466",
                    },
                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            ParasiticGrowth = {
                enabled = true,
                spellId = 168885,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "168885",
                    }
                }
            },
        },
    }
}
--[[bosses.boss4 = { --	Xeri'tac
    EncounterId = "1752", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            ToxicBolt = {
                enabled = true,
                spellId = 169375, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "169375",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            VenomousSting = {
                enabled = true,
                spellId = 169376,
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "169376",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "169376",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            VenomSpray = {
                enabled = true,
                spellId = 173052,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "173052",
                    }
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            GaseousVolley = {
                enabled = true,
                spellId = "169382",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "169382",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            Swipe = {
                enabled = true,
                spellId = 169371,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "169371",
                    }
                }
            },
        },
        [JDT.GroupTypes.BuffCastWithStackWarning ] = {
            Inhale = {
                enabled = true,
                spellId = 169233,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "169233",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "169233",
                    }
                }
            },
        },
    }
}
--]]
bosses.boss4 = { --	Yalnu 
    EncounterId = "1756", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.Frontal] = {
            CollosalBlow = {
                enabled = true,
                spellId = 169179,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "169179",
                    }
                }
            },
            NoxiousBreath = {
                enabled = true,
                spellId = 169878,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "169878",
                    }
                }
            },
            LumberingSwipe = {
                enabled = true,
                spellId = 169929,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "169929",
                    }
                }
            },
        },
        [JDT.GroupTypes.SlowDot] = {
            TendonRip = {
                enabled = true,
                spellId = 169876,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "169876",
                    }
                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            Genesis = {
                enabled = true,
                spellId = 169613,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "169613",
                    },
                }
            },
            Entanglement = {
                enabled = true,
                spellId = 169251,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "169251",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            LasherVenom = {
                enabled = true,
                spellId = 173563,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "173563",
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
            VenomBurst = {
                enabled = true,
                spellId = 165123, -- for spellname etc
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "165123",
                    },
                }
            },
            PoisonousClaws = {
                enabled = true,
                spellId = 169657, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "169657",
                    },
                }
            },
            NoxiousEruption = {
                enabled = true,
                spellId = 169445, -- for spellname etc
                extraName = "dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "169445",
                    },
                }
            }
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            DreadpetalPollen = {
                enabled = true,
                spellId = 164886,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "164886",
                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            EnragedGrowth = {
                enabled = true,
                spellId = 165213,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "165213",
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableSuppresion] ={
            ChokingVines= {
                enabled = true,
                spellId = 164965, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "164965",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            DancingThorns = {
                enabled = true,
                spellId = 164973, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "164973",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            NoxiousEruption = {
                enabled = true,
                spellId = 169445, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "169445",
                    },
                }
            },            
        },
        [JDT.GroupTypes.Frontal] = {
            Gasp = {
                enabled = true,
                spellId = 169714,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "169714",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            HealingWaters = {
                enabled = true,
                spellId = 164887,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "164887",
                    },
                }
            },
        },
        [JDT.GroupTypes.SpinToWin] = {
            BoundingWhirl = {
                enabled = true,
                spellId = 172579,
                type = JDT.AuraTypes.stun,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "172579",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            CinderboltSalvo = {
                enabled = true,
                spellId = 427223, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427223",
                    },
                }
            },
            ColdFusion = {
                enabled = true,
                spellId = 426845, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "426845",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableCast] = {
            Pyroblast = {
                enabled = true,
                spellId = 169839,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "169839",
                    },
                }
            },
            ArcaneBlast = {
                enabled = true,
                spellId = 169841,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "169841",
                    },
                }
            },
            Frostbolt = {
                enabled = true,
                spellId = 169840,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "169840",
                    },
                }
            },
        },
    },
}
