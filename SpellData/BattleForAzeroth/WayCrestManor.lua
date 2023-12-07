local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.WayCrestManor= {
    groupName = "[WM",
    zoneId = "g279", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1021, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.WayCrestManor.Bosses

bosses.boss1 = {  -- Heartsbane Triad
    EncounterId = "2113", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            UnstableRunicMark = {
                enabled = true,
                spellId = 260703, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260703",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "260703",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "260703",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            DireRitual = {
                enabled = true,
                spellId = 260773, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260773",
                    },
                }
            }
        },
        [JDT.GroupTypes.SwitchCast] ={
            ClaimTheIris = {
                enabled = true,
                spellId = 260852, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260852",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastWithTargetAnounce] ={
            SoulManipulation= {
                enabled = true,
                spellId = 260907, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260907",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoToppableDot] ={
            JaggedNettles = {
                enabled = true,
                spellId = 260741, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260741",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "260741",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoKeepMovingWithDebuff] = {
            AuraOfDread = {
                enabled = true,
                spellId = 268086,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "268086",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "268086",
                    }
                }
            },
        },
        [JDT.GroupTypes.HealDebuff] = {
            AuraOfApathy = {
                enabled = true,
                spellId = 268080,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "268080",
                    },
                }
            },
        },
    }
}
bosses.boss2 = {  -- Soulbound Goliath
    EncounterId = "2114", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        
    }
}
bosses.boss3 = {  -- Raal the Gluttonous
    EncounterId = "2115", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.Dance] ={
            Tenderize = {
                enabled = true,
                spellId = 264923, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "264923",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            RottenExpulsion= {
                enabled = true,
                spellId = 264694,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "264694",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            CallServants = {
                enabled = true,
                spellId = 264931,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "264931",
                    },

                }
            },
        },
    }
}
bosses.boss4 = {  -- Lord and Lady Waycrest
    EncounterId = "2116", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            VirulentPathogen= {
                enabled = true,
                spellId = 261440, -- for spellname etc
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "261440",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "261440",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "261440",
                    },

                }
            }
        },
        [JDT.GroupTypes.Dot] = {
            WastingStrike = {
                enabled = true,
                spellId = 261438,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "261438",
                    },

                }
            },
        },
    }
}

bosses.boss5 = {  -- Gorak Tul
    EncounterId = "2117", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 05 ",
    Auras = { 
        [JDT.GroupTypes.UnavoidableAoe] ={
            DreadEssence = {
                enabled = true,
                spellId = 266181, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "266181",
                    },
                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            SummonDreadtouchedSlayer = {
                enabled = true,
                spellId = 266266,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "266266",
                    },

                }
            },
        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.CastIntoSpreadifDebuffed] = {
            RunicMark = {
                enabled = true,
                spellId = 176025,
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "264105",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "264105",
                    },
                }
            },
            DreadMark = {
                enabled = true,
                spellId = 265880,
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265880",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "265880",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoTrapSpawnSuccess] ={
            FreezingTraps = {
                enabled = true,
                spellId = 274383, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "274383",
                    },
                    {
                        spellId = "274383",
                        duration = "3.4"
                    },
                }
            },
            ShrapnelTraps = {
                enabled = true,
                spellId = 264525, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "264525",
                    },
                    {
                        spellId = "264525",
                        duration = "3.4"
                    },
                }
            },
        },
        [JDT.GroupTypes.ShieldCast] ={
            SpiritedDefense = {
                enabled = true,
                spellId = 265368, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265368",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            DecayingTouch = {
                enabled = true,
                spellId = 265881,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "265881",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "265881",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            FragmentSoul = {
                enabled = true,
                spellId = 264378, -- for spellname etc
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "264378",
                    },
                }
            },
            MarkingCleaveDot = {
                enabled = true,
                spellId = 263905, -- for spellname etc
                type = JDT.AuraTypes.curse,
                extraName = " dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "263905",
                    },
                }
            },
            TearingStrike = {
                enabled = true,
                spellId = 264556, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "264556",
                    },
                }
            },
            ShatterDot = {
                enabled = true,
                spellId = 264150, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                extraName = " dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "264150",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            BoneSplinter = {
                enabled = true,
                spellId = 266035,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "266035",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "266035",
                    },
                }
            },
            InfectedThorne = {
                enabled = true,
                spellId = 264050,
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "264050",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "264050",
                    },
                }
            },
            SeveringSerpent = {
                enabled = true,
                spellId = 264520,
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "264520",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "264520",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            MarkingCleave = {
                enabled = true,
                spellId = 263905,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "263905",
                    }
                }
            },
        },
        [JDT.GroupTypes.ExplodingCast] = {
            Shatter = {
                enabled = true,
                spellId = 264150,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "264150",
                    }
                }
            },
        },
        [JDT.GroupTypes.MinusDmgTakenBuff] = {
            WardingCandles = {
                enabled = true,
                spellId = 264027,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "264027",
                    }
                }
            },
        },
    }
}