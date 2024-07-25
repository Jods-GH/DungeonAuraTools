local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.TheDawnbreaker = {
    groupName = "[TDB",
    zoneId = "2359", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
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
        [JDT.GroupTypes.InterruptableTargetedCast] = {
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
            ShadowyDecay = {
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
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            TormentingBeam = {
                enabled = true,
                spellId = 431333,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "431333",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "431333",
                    }
                }
            },
            AbyssalBlast = {
                enabled = true,
                spellId = 451119,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451119",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "451119",
                    }
                }
            },
            AbyssalRot = {
                enabled = true,
                spellId = 453345,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "453345",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "453345",
                    }
                }
            },
            -- this might be a tank only ability
            TaintedSlash = {
                enabled = true,
                spellId = 431491,
                type = JDT.AuraTypes.bleed,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "431491",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "431491",
                    },
                }
            },
        }, 
        [JDT.GroupTypes.CastIntoBreakShield] = {
            UmbralBarrier = {
                enabled = true,
                spellId = 432520,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "432520",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "432520",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            UmbralRush = {
                enabled = true,
                spellId = 431637,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "431637",
                    }
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            NightBolt = {
                enabled = true,
                spellId = 431303, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "431303",
                    },
                }
            },
            WebBolt = {
                enabled = true,
                spellId = 451113, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451113",
                    },
                }
            },
            TormentingRay = {
                enabled = true,
                spellId = 431364, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "431364",
                    },
                }
            },
            CongealedShadow = {
                enabled = true,
                spellId = 451114, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451114",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableMobCastIntoPlayerDebuffSlow] ={
            EnsnaringShadows= {
                enabled = true,
                spellId = 431309, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "431309",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "431309",
                    },
                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            BlackEdge = {
                enabled = true,
                spellId = 431494, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "431494",
                    },
                }
            },
            ShadowyDecay = {
                enabled = true,
                spellId = 451102, -- for spellname etc
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451102",
                    },
                }
            },
            TackyNova = {
                enabled = true,
                spellId = 451098, -- for spellname etc
                type = JDT.AuraTypes.root,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451098",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableBombCastIntoSpread] ={
            BurstingCocoon= {
                enabled = true,
                spellId = 451107, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "451107",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "451107",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "451107",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            StygianSeed = {
                enabled = true,
                spellId = 432448, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "432448",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "432448",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "432448",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoChase] = {
            DarkOrb = {
                enabled = true,
                spellId = 450854,
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "450854",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "450854",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "450854",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            BlackHail = {
                enabled = true,
                spellId = 432565, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "432565",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            TormentingEruption = {
                enabled = true,
                spellId = 431349, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "431349",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "431349",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "431349",
                    },
                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            UsherReinforcements = {
                enabled = true,
                spellId = 446615,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "446615",
                    },
                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
             -- this is a fear and might need a changed type. Needs testing
            TerrifyingSlam = {
                enabled = true,
                spellId = 451117,
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451117",
                    },
                }
            },
        },
        [JDT.GroupTypes.Hooking] = {
            EntwiningThreads = {
                enabled = true,
                spellId = 451099,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451099",
                    },
                }
            },
        },
        [JDT.GroupTypes.ShieldCast] ={
            SilkenShell = {
                enabled = true,
                spellId = 451097, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451097",
                    },
                }
            }
        },
    },
}
