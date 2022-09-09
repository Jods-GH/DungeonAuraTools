local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}

JDT.SpellList.BattleForAzeroth.OperationMechagon = {
    groupName = "[MECHAGON",
    zoneId = "g399", 
    EncounterJournalID = 1178,
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.OperationMechagon.Bosses

bosses.boss1 = { 
    EncounterId = "2290",
    additionalName = " JUNKYARD] 01 ",
    Auras = {
        
        [JDT.GroupTypes.StackCast] = {
            ChargedSmash = {
                enabled = true,
                spellId = 297254,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "297254",
                    }

                }
            },

        },
        [JDT.GroupTypes.CarryingDeBuff] = {
            ElectricalCharge = {
                enabled = true,
                spellId = 297257,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "297257",
                    }

                }
            },

        }, 
    }
}
bosses.boss2 = { 
    EncounterId = "2312",
    additionalName = " JUNKYARD] 02 ",
    Auras = {
     
        [JDT.GroupTypes.CastIntoHideDebuff] = {
            MegaTaze = {
                enabled = true,
                spellId = 302682,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "302682",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "304465",

                    },
                    [3] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "304465",
                    },

                }
            },

        },
        [JDT.GroupTypes.Charge] = {
            PedalToTheMetal = {
                enabled = true,
                spellId = 299164,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "299164",
                    }

                }
            },
            Roadkill = {
                enabled = true,
                spellId = 298946,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "298946",
                    }

                }
            },

        },
        [JDT.GroupTypes.Frontal] = {
            BoltBuster = {
                enabled = true,
                spellId = 298940,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "298940",
                    }

                }
            },

        }, 
    }
    }
bosses.boss3 = { 
    EncounterId = "2292",
    additionalName = " JUNKYARD] 03 ",
    Auras = {
             
        [JDT.GroupTypes.DragCast] = {
            Coalesce = {
                enabled = true,
                spellId = 297835,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "297835",
                    }

                }
            },

        },
        [JDT.GroupTypes.WaveCast] = {
            ToxicWave = {
                enabled = true,
                spellId = 297834,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "297834",
                    }

                }
            },

        },


    }
}
bosses.boss4 = { 
    EncounterId = "2291",
    additionalName = " JUNKYARD] 04 ",
    Auras = {
             
        [JDT.GroupTypes.IncreasedDmgTakenChannel] = {
            Haywire = {
                enabled = true,
                spellId = 296080,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "296080",
                    }

                }
            },

        },
        [JDT.GroupTypes.Dot] = {
            FulminatingZap = {
                enabled = true,
                spellId = 302274,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "302274",
                    }

                }
            },

        },
        [JDT.GroupTypes.LinesCastIntoCombatLogSuccess] = {
            CannonBlast = {
                enabled = true,
                spellId = 295536,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "295536",
                    },
                    {
                        duration = "2",
                        spellId = "295536",
                    }

                }
            },

        },
        [JDT.GroupTypes.AddSummonCast] = {
            ReinforcementRelay = {
                enabled = true,
                spellId = 301351,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "301351",
                    }

                }
            },

        },
        [JDT.GroupTypes.TankBusterCastWithDebuffCheck] = {
            ReinforcementRelay = {
                enabled = true,
                spellId = 302279,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "302279",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "302279",
                        ignoreSelf = false,
                    }

                }
            },

        },
    }
}
bosses.boss5 = { 
    EncounterId = "2257",
    additionalName = " WORKSHOP] 01 ",
    Auras = {
             
        [JDT.GroupTypes.ArmorBuff] = {
            PlatinumPlating = {
                enabled = true,
                spellId = 282801,
                RoleLoad = "TANK",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "282801",
                    }

                }
            }, 
        },
        [JDT.GroupTypes.RunOut] ={
            WhirlingEdge = {
                enabled = true,
                spellId = 285020, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "285020",

                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastWithTargetAnounce] ={
            VentJets = {
                enabled = true,
                spellId = 285388, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "285388",

                    },

                }
            },
        },
        [JDT.GroupTypes.Charge] = {
            MaximumThrust = {
                enabled = true,
                spellId = 283422,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "283422",
                    }

                }
            },
        }
}
}
bosses.boss6 = { 
    EncounterId = "2258",
    additionalName = " WORKSHOP] 02 ",
    Auras = {
        [JDT.GroupTypes.SpreadCast] = {
            ExplosiveLeap = {
                enabled = true,
                spellId = 291973,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "291973",
                    },

                }
            },
        },
        [JDT.GroupTypes.AvoidCombatLogSuccess] = {
            AirDrop = {
                enabled = true,
                spellId = 291918,
                triggerData = {
                    {
                        duration = "2.2",
                        spellId = "291918",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastWithSafeBuff] = {
            VentingFlames = {
                enabled = true,
                spellId = 291946,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "291937",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "291946",
                    },
                    {
                        duration = "5",
                        spellId = "291946",
                    },
                }
            },
        },
    }
}
bosses.boss7 = { 
    EncounterId = "2259",
    additionalName = " WORKSHOP] 03 ",
    Auras = {
        [JDT.GroupTypes.VoidCast] = {
            DiscomBOMBulator = {
                enabled = true,
                spellId = 285454,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "285454",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            HiddenFlameCannon= {
                enabled = true,
                spellId = 285443, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "285443",

                    },
                    [2] = {
                        spellId = "285440",
                        duration = "10"

                    },

                }
            }
        },
        [JDT.GroupTypes.KillAddDebuff] ={
            BlossomBlast= {
                enabled = true,
                spellId = 294855, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "294855",
                        ignoreSelf = false,

                    },

                }
            }
        },
    }
}
bosses.boss8 = { 
    EncounterId = "2260",
    additionalName = " WORKSHOP] 04 ",
    Auras = {
        [JDT.GroupTypes.StayAwayCast] = {
            TakeOff = {
                enabled = true,
                spellId = 291613,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "291613",
                    },

                }
            },
        },
        [JDT.GroupTypes.Orbs] = {
            Recalibrate = {
                enabled = true,
                spellId = 291865,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "291865",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            GigaZap = {
                enabled = true,
                spellId = 291928,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "291928",
                    },

                }
            },
        },
        [JDT.GroupTypes.GoMeleeCast] = {
            ProtocolNinetyNine = {
                enabled = true,
                spellId = 292290,
                RoleLoad = "TANK",
                glowtype = "ActionButton",
                showGlow = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "292290",
                    },

                }
            },
        },
        [JDT.GroupTypes.StayAwayCastIntoSpellAuraApplied] = {
            MagnetoArm = {
                enabled = true,
                spellId = 283551,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "283551",
                    },
                    {
                        spellId = "283143",
                        duration = "9"

                    },

                }
            },
        },
    }
}