local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.EcoDomeAldani = {
    groupName = "[EDA",
    zoneId = "2449", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1303, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.EcoDomeAldani.Bosses


bosses.boss1 = { --	Azhiccar
    EncounterId = "3107", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.GoMeleeCast] = {
            Thrash = {
                enabled = true,
                spellId = 1217664,
                RoleLoad = "TANK",
                glowtype = "ActionButton",
                showGlow = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1217664",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            InvadingShriek = {
                enabled = true,
                spellId = 1217327,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1217327",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            ToxicRegurgitation = {
                enabled = true,
                spellId = 1217436, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1217436",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1217436",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "1217436",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            Devour = {
                enabled = true,
                spellId = 1217232, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1217232",
                    },
                }
            },
        },
    }
}
bosses.boss2 = { --	Taah'bat and A'wazj
    EncounterId = "3108", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.TankBusterCast] = {
            RiftClaws = {
                enabled = true,
                spellId = 1219482,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1219482",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            RiftClaws = {
                enabled = true,
                spellId = 1219482,
                type = JDT.AuraTypes.bleed,
                extraName = " dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1219482",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoKillAddAlive] = {
            BindingJavelin = {
                enabled = true,
                spellId = 1219536,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1219536",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "244302",
                    },
                }
            },
        },
        [JDT.GroupTypes.DashIntoDebuff] ={
            WarpStrike = {
                enabled = true,
                spellId = 1227137, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1227137",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1227137",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoBreakShield] = {
            ArcaneBlitz = {
                enabled = true,
                spellId = 1219457,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1219457",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1219700",
                    },
                }
            },
        },
        [JDT.GroupTypes.IncreasedDmgTakenBuff] = {
            Destabilized = {
                enabled = true,
                spellId = 1219731,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1219731",
                    }

                }
            },

        },
    }
}
bosses.boss3 = { --	Soul-Scribe
    EncounterId = "3109", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.DisposeSpellAura] ={
            WhispersOfFate = {
                enabled = true,
                spellId = 1224793, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1224793",
                    },
                    {
                        stacks = 1,
                        summonID = 1249985,
                        duration = 5,
                        removeID = 1224865
                    },
                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            CeremonialDagger = {
                enabled = true,
                spellId = 1225162, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1225162",
                    },
                }
            },
            
        },
        [JDT.GroupTypes.Dot] = {
            CeremonialDagger = {
                enabled = true,
                spellId = 1225162,
                extraName = " dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1225162",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            DreadOfTheUnknown = {
                enabled = true,
                spellId = 1225218,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1225218",
                    },

                }
            },
        },
        [JDT.GroupTypes.DanceWithNextTick] ={
            EternalWeave = {
                enabled = true,
                spellId = 1236703, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1236703",
                    },
                    {
                        duration = "6",
                        spellId = "1224868",
                    },
                }
            }
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            Gorge = {
                enabled = true,
                spellId = 1229474, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1229474",
                    },
                }
            },
            ArcaneBolt = {
                enabled = true,
                spellId = 1222815, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1222815",
                    },
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            GorgingSmash = {
                enabled = true,
                spellId = 1221152, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1221152",

                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            GluttonousMiasma= {
                enabled = true,
                spellId = 1221190, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1221190",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1221190",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "1221190",
                    },
                }
            },
            ArcingEnergy= {
                enabled = true,
                spellId = 1221483, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1221483",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1221483",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "1221483",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastWithTargetAnounce] ={
            VolatileEjection = {
                enabled = true,
                spellId = 1226111, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1226111",

                    },

                }
            },
            ArcingZap = {
                enabled = true,
                spellId = 1229510, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1229510",

                    },

                }
            },
            BurrowCharge = {
                enabled = true,
                spellId = 1237195, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1237195",

                    },

                }
            },
        },
        [JDT.GroupTypes.FrontalIntoDot] = {
            ArcaneSlash = {
                enabled = true,
                spellId = 1235368,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1235368",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1235368",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoAoeDebuffWithNextTick] ={
            UnstableCore = {
                enabled = true,
                spellId = 1231244, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1231244",

                    },
                    {
                        duration = "1.5",
                        spellId = "1231252",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1231244",

                    },

                }
            },
            ErraticRitual = {
                enabled = true,
                spellId = 1221532, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1221532",

                    },
                    {
                        duration = "0.5",
                        spellId = "1221533",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1221532",

                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            Warp = {
                enabled = true,
                spellId = 1222356,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1222356",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastIntoKillAddAlive] = {
            ConsumeSpirit = {
                enabled = true,
                spellId = 1226306,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1226306",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "240952",
                    },
                }
            },
        },
        [JDT.GroupTypes.AbsorbDebuffWithProgress] ={
            GloomBite = {
                enabled = true,
                spellId = 1222341, -- for spellname etc
                customTextInfo = { tooltip = 1, inverse = true},
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1222341",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            GloomBite = {
                enabled = true,
                spellId = 1222341,
                extraName = " cast",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1222341",
                    }
                }
            },
        },
         [JDT.GroupTypes.VoidCast] = {
            BurrowingEruption = {
                enabled = true,
                spellId = 1223007,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1223007",
                    },

                }
            },
            Earthcrusher = {
                enabled = true,
                spellId = 1215850,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1215850",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            StingingSandstorm  = {
                enabled = true,
                spellId = 1237220, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1237220",
                    },
                }
            }
        },
    },
}
