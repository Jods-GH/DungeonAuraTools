local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.TheNokhudOffensive = {
    groupName = "[TNO",
    zoneId = "2093", 
    EncounterJournalID = 1198, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.TheNokhudOffensive.Bosses

bosses.boss1 = { 
    EncounterId = "2637", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            Eruption = {
                enabled = true,
                spellId = 388283, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"388283"},
                        extraUnit = "boss1"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388283",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            ShardsofStone = {
                enabled = true,
                spellId = 388817, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388817",

                    },

                }
            },
            TectonicStomp = {
                enabled = true,
                spellId = 385916, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385916",

                    },

                }
            },
        },
        [JDT.GroupTypes.KillAddChanneling] = {
            Dismantle = {
                enabled = true,
                spellId = 386490,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "386490",
                    }

                }
            },

        },
    }
}
bosses.boss2 = { 
    EncounterId = "2636", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.DmgBuff] = {
            UncontrollableEnergy = {
                enabled = true,
                spellId = 382630,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "382630",
                    }

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            ElectricalStorm = {
                enabled = true,
                spellId = 384620, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384620",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoSpreadifDebuffed] = {
            LightningStrike = {
                enabled = true,
                spellId = 384316,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384316",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "384316",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoBuff] ={
            EnergySurge = {
                enabled = true,
                spellId = 384686, -- for spellname etc
                type = JDT.AuraTypes.purge,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384686",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384686",
                    },

                }
            }
        },
        [JDT.GroupTypes.GoMeleeCast] = {
            WindBurst = {
                enabled = true,
                spellId = 384761,
                RoleLoad = "TANK",
                glowtype = "ActionButton",
                showGlow = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384761",
                    },

                }
            },
        },
    }
}
bosses.boss3 = { 
    EncounterId = "2581", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.KnockCast] ={ -- this is the wrong type needs to be changed
            Repel = {
                enabled = true,
                spellId = 386547, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386547",

                    },

                }
            },
            GuardianWind = {
                enabled = true,
                spellId = 384808, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384808",

                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            QuickShot = {
                enabled = true,
                spellId = 386411,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386411",
                    }

                }
            },
        },
        [JDT.GroupTypes.Jump] ={
            SpiritLeap = {
                enabled = true,
                spellId = 385434, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385434",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            Earthsplitter = {
                enabled = true,
                spellId = 385339, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"385339"},
                        extraUnit = "boss2"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385339",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            },
            GaleArrow = {
                enabled = true,
                spellId = 386016, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"386016"},
                        extraUnit = "boss1"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386016",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            FrightfulRoar = {
                enabled = true,
                spellId = 386063, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386063",

                    },

                }
            },
        },

    }
}       


bosses.boss4 = { 
    EncounterId = "2580", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.SpreadDebuff] = {
            IronSpear = {
                enabled = true,
                spellId = 376634,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "376634",
                    }

                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            IronStampede= {
                enabled = true,
                spellId = 376683, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376683",

                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            Upheaval = {
                enabled = true,
                spellId = 375943,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "375943",
                    },

                }
            },
            CracklingUpheaval = {
                enabled = true,
                spellId = 376892,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376892",
                    },

                }
            },
        },
        [JDT.GroupTypes.TankBusterCastWithDebuffCheck] = {
            RendingStrike = {
                enabled = true,
                spellId = 375937,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "375937,375929",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "375937",
                        ignoreSelf = false,
                    }

                }
            },
            ConductiveStrike = {
                enabled = true,
                spellId = 376827,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376827,376829",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "376827",
                        ignoreSelf = false,
                    }

                }
            },

        },
    }
}