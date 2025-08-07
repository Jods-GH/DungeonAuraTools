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
        
    },
}
