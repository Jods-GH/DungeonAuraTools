local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.OperationFloodgate = {
    groupName = "[OFG",
    zoneId = "g459", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1298, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.OperationFloodgate.Bosses


bosses.boss1 = { --	Big M.O.M.M.A.
    EncounterId = "3020", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.TargetedCast] = {
            Shoot = {
                enabled = true,
                spellId = 460393,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "460393",
                    }
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            Electrocrush = {
                enabled = true,
                spellId = 473351,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "473351",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "473351",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.Charge] = {
            DoomStorm = {
                enabled = true,
                spellId = 472452,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "472452",
                    }
                }
            },
        },
        [JDT.GroupTypes.ShockWave] = {
            SonicBoom = {
                enabled = true,
                spellId = 473220,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "473220",
                    }
                }
            },
        },
        [JDT.GroupTypes.IncreasedDmgTakenChannel] = {
            Jumpstart = {
                enabled = true,
                spellId = 460156,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "460156",
                    }

                }
            },

        },
        [JDT.GroupTypes.AddSummonCast] = {
            MobilizeMechadrones = {
                enabled = true,
                spellId = 471585,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "471585",
                    },
                }
            },
        },
        [JDT.GroupTypes.ShieldCast] ={
            KillOBlockBarrier = {
                enabled = true,
                spellId = 469981, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "469981",
                    },
                }
            }
        },
    }
}
bosses.boss2 = { --	Demolition Duo
    EncounterId = "3019", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.TargetedCast] = {
            QuickShot = {
                enabled = true,
                spellId = 460602,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "460602",
                    }
                }
            },
        },
        [JDT.GroupTypes.TargetedKnockCast] ={
            Wallop = {
                enabled = true,
                spellId = 459799, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "459799",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            BBBFG = {
                enabled = true,
                spellId = 1217653,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1217653",
                    },
                }
            },
        },
        [JDT.GroupTypes.DisposeSpellAuraAppliedRemoved] ={
            BigBadaBOOM = {
                enabled = true,
                spellId = 460867, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "460867",
                    },
                    {
                        summonID = 460781,
                        duration = 30,
                        removeID = 460781
                    },
                }
            }
        },
        [JDT.GroupTypes.OrbSoak] ={
            KineticExplosiveGel = {
                enabled = true,
                spellId = 473690, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "473690",
                    },

                }
            }
        },
        [JDT.GroupTypes.Charge] = {
            BarrelingCharge = {
                enabled = true,
                spellId = 459779,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "459779",
                    }

                }
            },
        },
    }
}
bosses.boss3 = { --	Swampface
    EncounterId = "3053", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.CastIntoLink] = {
            RazorchokeVines = {
                enabled = true,
                spellId = 355479,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "470039",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "470039",
                    },        
                }
            },
        },
        [JDT.GroupTypes.AbsorbDebuffWithProgress] ={
            SludgeClaws = {
                enabled = true,
                spellId = 451224, -- for spellname etc
                customTextInfo = { tooltip = 1, inverse = true},
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "469478",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            Mudslide = {
                enabled = true,
                spellId = 473114,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "473114",
                    }
                }
            },
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            AwakenTheSwamp= {
                enabled = true,
                spellId = 473070, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "473070",

                    },
                    {
                        spellId = "473070",
                        duration = "5"

                    },

                }
            }
        },
    }
}

bosses.boss4 = { --	Geezle Gigazap
    EncounterId = "3054", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.Dance] ={
            Dam = {
                enabled = true,
                spellId = 468276, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "468276",
                    },
                }
            },
            TurboCharge = {
                enabled = true,
                spellId = 465463,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "465463",
                    }
                }
            },
        },
        [JDT.GroupTypes.TargetedKnockCast] ={
            ThunderPunch = {
                enabled = true,
                spellId = 466190, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "466190",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            ThunderPunch  = {
                enabled = true,
                spellId = 466190, -- for spellname etc
                extraName = " dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "466190",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoChase] = {
            LeapingSparks = {
                enabled = true,
                spellId = 468841,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "468841",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "468841",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "468841",
                    },


                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            Gigazap = {
                enabled = true,
                spellId = 468813, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "468813",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "468813",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "468813",
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
