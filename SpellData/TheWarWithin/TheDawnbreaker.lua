local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.TheDawnbreaker = {
    groupName = "[TDB",
    zoneId = "14971", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1270, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.TheDawnbreaker.Bosses


bosses.boss1 = { --	Speaker Shadowcrown
    EncounterId = "2837", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.RunOut] ={
            CollapsingDarkness = {
                enabled = true,
                spellId = 445996, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "445996",
                    },
                }
            },
            DarknessComes = {
                enabled = true,
                spellId = 451026, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "451026",
                    },
                }
            },
        },
        [JDT.GroupTypes.AbsorbDebuffWithProgress] ={
            ShadowShroud = {
                enabled = true,
                spellId = 426736, -- for spellname etc
                customTextInfo = { tooltip = 1, inverse = true},
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "426736",
                    },
                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            ObsidianBlast = {
                enabled = true,
                spellId = 425264,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "425264",
                    },
                }
            },
        },
        [JDT.GroupTypes.SlowDot] ={
            BurningShadows = {
                enabled = true,
                spellId = 426734, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "426734",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCast] = {
            ShadowBolt = {
                enabled = true,
                spellId = 428086,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428086",
                    }
                }
            },
        },
    }
}
bosses.boss2 = { --	Anub'ikkaj
    EncounterId = "2838", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.SpreadCast] = {
            TerrifyingSlam = {
                enabled = true,
                spellId = 427001,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427001",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            DarkOrb = {
                enabled = true,
                spellId = 426860,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "426860",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "426860",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "426860",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            RadiantDecay = {
                enabled = true,
                spellId = 426787, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "426787",
                    },
                }
            }
        },
    }
}
bosses.boss3 = { --	Rasha'nan
    EncounterId = "2839", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.Dispose] ={
            ArathiBomb = {
                enabled = true,
                spellId = 434655, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "434655",
                    },
                    {
                        summonID = 434655,
                        duration = 20,
                        removeID = 438946
                    },
                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            RollingAcid = {
                enabled = true,
                spellId = 434407, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "434407",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            ExpelWebs = {
                enabled = true,
                spellId = 448213,
                type = JDT.AuraTypes.root,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "448213",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            ErosiveSpray = {
                enabled = true,
                spellId = 448888, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "448888",
                    },
                }
            }
        },
        [JDT.GroupTypes.InteruptableKillAddWithStackingBuff] ={
            AcidicEruption= {
                enabled = true,
                spellId = 449734, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "449734",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "449734",
                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            SpinneretsStrands = {
                enabled = true,
                spellId = 434089, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "434089",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "434089",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "434089",
                    },
                }
            }
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        
    },
}
