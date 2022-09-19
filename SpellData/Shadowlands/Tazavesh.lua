local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}

JDT.SpellList.Shadowlands.Tazavesh = {
    groupName = "[TAZAVESH",
    zoneId = "g423", 
    EncounterJournalID = 1194,
    Bosses = {}
}
local bosses = JDT.SpellList.Shadowlands.Tazavesh.Bosses

bosses.boss1 = { 
    EncounterId = "2425",
    additionalName = "] 01 ",
    Auras = {
        
        [JDT.GroupTypes.SpinToWin] = {
            ArmedSecurity = {
                enabled = true,
                spellId = 346204,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346204",
                    }

                }
            },

        },
        [JDT.GroupTypes.ShieldInc] = {
            RotaryBodyArmor = {
                enabled = true,
                spellId = 347992, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "347992",
                    }

                }
            },

        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            InterogationInc = {
                enabled = true,
                spellId = 348350, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"347949","348350"},
                        extraUnit = "boss1"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "348350",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
        [JDT.GroupTypes.CastIntoBuff] ={
            FullyArmed = {
                enabled = true,
                spellId = 348128, -- for spellname etc
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "348128",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "348128",
                    },

                }
            }
        },
        [JDT.GroupTypes.BossCastIntoCollect] = {
            ImpoundContraband = {
                enabled = true,
                spellId = 345770, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346006",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "345770",
                    },

                }
            }
        }
    }
}

bosses.boss2 = {
    EncounterId = "2441",
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.CollectBuff] ={
            GluttonousFeast = {
                enabled = true,
                spellId = 349627, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "349627",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "349627",
                    },

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            GripOfHunger = {
                enabled = true,
                spellId = 349663, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "349663",

                    },

                }
            },
            WhirlingAnnihilation = {
                enabled = true,
                spellId = 350090, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "350090",

                    },

                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            GrandConsumption = {
                enabled = true,
                spellId = 349797, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "349797",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            PurificationProtocol = {
                enabled = true,
                spellId = 349954, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "349954",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "349954",

                    },
                    [3] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "349954",
                    },

                }
            }
        },
        [JDT.GroupTypes.BreakShieldIntoInterrupt] ={
            FlagellationProtocol = {
                enabled = true,
                spellId = 349934, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "349934",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "349934",

                    },

                }
            }
        },
        [JDT.GroupTypes.DanceOrSoakIfDebuff] ={
            VentingProtocol = {
                enabled = true,
                spellId = 349987, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "349987",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "349498",

                    },

                }
            }
        },
        [JDT.GroupTypes.ChainToKill] ={
            ChainsOfDamnation = {
                enabled = true,
                spellId = 350101, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "350101",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "350101",

                    },
                    [3] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "350101",

                    },
                    [4] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        npcID = "177237",

                    },

                }
            }
        },
    }
} 

bosses.boss3 = {
    EncounterId = "2424",
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.UnavoidableAoe] ={
            FanMail = {
                enabled = true,
                spellId = 346742, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346742",

                    },

                }
            }
        },
        [JDT.GroupTypes.BossCastIntoStack] ={
            MoneyOrder = {
                enabled = true,
                spellId = 346962, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346962",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "346962",

                    },
                    [3] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "346962",

                    },

                }
            }
        },
        [JDT.GroupTypes.VoidSoak] ={
            MoneyOrder = {
                enabled = true,
                spellId = 346286, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346286",

                    },

                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            GrandConsumption = {
                enabled = true,
                spellId = 346844, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "346844",

                    },

                }
            }
        },
        [JDT.GroupTypes.Dispose] ={
            UnstableGoods = {
                enabled = true,
                spellId = 346947, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346947",

                    },
                    [2] = {
                        spellIdList = {},
                        extraUnit = ""

                    },

                }
            }
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            UnstableGoodsInc = {
                enabled = true,
                spellId = 346947, -- for spellname etc
                extraName = " inc",
                triggerData = {
                    [1] = {
                        spellIdList = {"346947"},
                        extraUnit = "boss1"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346947",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
    }
}

bosses.boss4 = {
    EncounterId = "2440",
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            CrowdControl = {
                enabled = true,
                spellId = 350919,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "350919",
                    }

                }
            },

        },
        [JDT.GroupTypes.HasteBuff] = {
            Jazzy = {
                enabled = true,
                spellId = 348567,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "348567",
                    }

                }
            },
        },
        [JDT.GroupTypes.DmgBuff] = {
            Accelerando = {
                enabled = true,
                spellId = 359019,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "359019",
                    }

                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] = {
            HyperlightBolt = {
                enabled = true,
                spellId = 353836,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "353836",
                    }

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            ThrowDrink = {
                enabled = true,
                spellId = 348566,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "348566",
                    }

                }
            },
        },
        [JDT.GroupTypes.InterruptableSuppresion] = {
            Suppresion = {
                enabled = true,
                spellId = 353835,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "353835",
                    }

                }
            },
        },
        [JDT.GroupTypes.InterruptableKickStomp] = {
            MenacingShout = {
                enabled = true,
                spellId = 350922,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "350922",
                    }

                }
            },
        },
    }
}
bosses.boss5 = {
    EncounterId = "2437",
    additionalName = "] 05 ",
    Auras = { 
        [JDT.GroupTypes.Dot] ={
            Quickblade = {
                enabled = true,
                spellId = 347744, -- for spellname etc
                type = "bleed",
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "347744",

                    },

                }
            }
        },
        [JDT.GroupTypes.RoomSplit] ={
            Divide = {
                enabled = true,
                spellId = 347249, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "347249",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            Shuri = {
                enabled = true,
                spellId = 347610, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "347610",

                    },
                    [2] = {
                        spellId = "347610",
                        duration = "10"

                    },

                }
            }
        },
        [JDT.GroupTypes.KickOrDie] ={
            DoubleTechnique = {
                enabled = true,
                spellId = 357188, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "357188",

                    },

                }
            }
        },
    }
}
bosses.boss6 = {
    EncounterId = "2437",
    additionalName = "] 05 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            ShearingSwings = {
                enabled = true,
                spellId = 346116,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346116",
                    }

                }
            },

        },
        [JDT.GroupTypes.CarryingDeBuff] = {
            BypassCode = {
                enabled = true,
                spellId = 348451,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = {
							"348451", -- [1]
							"348447", -- [2]
							"348450", -- [3]
							"348437", -- [4]
						},
                    }

                }
            },

        },
        [JDT.GroupTypes.ShockWave] = {
            TitanicCrash = {
                enabled = true,
                spellId = 347094,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "347094",
                    }

                }
            },

        },
        [JDT.GroupTypes.Orbs] = {
            PurifyingBurst = {
                enabled = true,
                spellId = 353312,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "353312",
                    }

                }
            },

        },
        [JDT.GroupTypes.LaserCombatlogSuccess ] = {
            PurgedByFire = {
                enabled = true,
                spellId = 346957,
                triggerData = {
                    {
                        duration = "3",
                        spellId = "346957",
                    }

                }
            },

        },
        [JDT.GroupTypes.MinusDmgTakenCCable] = {
            EmpoweredDefense = {
                enabled = true,
                spellId = 346980,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "346980",
                    }

                }
            },

        },
        [JDT.GroupTypes.InterruptableTargetedCast] = {
            ValorousBolt = {
                enabled = true,
                spellId = 352347,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "352347",
                    }

                }
            },

        },
        [JDT.GroupTypes.KillAddChanneling] = {
            KeepersProtection = {
                enabled = true,
                spellId = 347958,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "347958",
                    }

                }
            },

        },

        [JDT.GroupTypes.Consoles] = {
            SanitizingCycle = {
                enabled = true,
                spellId = 346766,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346766",
                    }

                }
            },

        },

    }
}

bosses.boss7 = {
    EncounterId = "2419",
    additionalName = "] 07 ",
    Auras = {  
            [JDT.GroupTypes.Breath] = {
                InfiniteBreath = {
                    enabled = true,
                    spellId = 347149,
                    triggerData = {
                       [1] = {
                            unit = JDT.Templates.Triggers.UnitTypes.boss,
                            spellId = "347149",
                        }

                    }
                },

        },
            [JDT.GroupTypes.Dot] = {
                ["Hook'd!"] = {
                    enabled = true,
                    spellId = 354334,
                    type = "bleed",
                    triggerData = {
                       [1] = {
                            unit = JDT.Templates.Triggers.UnitTypes.player,
                            spellId = "354334",
                        }

                    }
                },

        },
            [JDT.GroupTypes.CastIntoBuff] = {
                DoubleTime = {
                    enabled = true,
                    spellId = 350517,
                    triggerData = {
                       [1] = {
                            unit = JDT.Templates.Triggers.UnitTypes.boss,
                            spellId = "350517",
                        },
                        [2] ={
                            unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                            spellId = "350517",
                        },

                    }
                },

        },
        [JDT.GroupTypes.Hooking] = {
            AnchorShot = {
                enabled = true,
                spellId = 352345,
                triggerData = {
                   [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "352345",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCombatlog] = {
            CorsairBrute = {
                enabled = true,
                spellId = 352345,
                triggerData = {
                  [1] =  {
                        spellId = "355179",
                        duration = "3",
                    },

                }
            },
        },


    }
}
bosses.boss8 = {
    EncounterId = "2442",
    additionalName = "] 08 ",
    Auras = {  
        [JDT.GroupTypes.AddSummonCast] = {
            SummonAssasin = {
                enabled = true,
                spellId = 351124,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "351124",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            ShurikenBlitz = {
                enabled = true,
                spellId = 351119,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "351119",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            ShurikenBlitzDot = {
                enabled = true,
                spellId = 351119,
                extraName = " dot",
                type = "bleed",
                triggerData = {
                   [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "351119",
                    },

                }
            },
        },
        [JDT.GroupTypes.CollapsingStar] = {
            CollapsingStar = {
                enabled = true,
                spellId = 353635,
                triggerData = {
                   [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "353635",
                    },
                    [2]={
                        spellIdList = {},
                        extraUnit = ""

                    },
                }
            },
        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = {  
        [JDT.GroupTypes.Grenade] = {
            DisruptionGrenade = {
                enabled = true,
                spellId = 355900,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355900",
                    },

                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            HardLightBaton = {
                enabled = true,
                spellId = 355888,
                RoleLoad =  "TANK",
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355888",
                    },

                }
            },
            SpamFilter = {
                enabled = true,
                spellId = 347775,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "347775",
                    },

                }
            },
        },
        [JDT.GroupTypes.PulseCastIntoDot] = {
            RadiantPulse = {
                enabled = true,
                spellId = 356548,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356548",
                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "356548",

                    },

                }
            },
        },
        [JDT.GroupTypes.ShieldInc] ={
            HardLightBarrier = {
                enabled = true,
                spellId = 355934, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355934",

                    },

                }
            }
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            HyperlightBolt = {
                enabled = true,
                spellId = 354297, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "354297",

                    },

                }
            },
            SparkBurn = {
                enabled = true,
                spellId = 355930, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355930",

                    },

                }
            },
            BrackishBolt = {
                enabled = true,
                spellId = 356843, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356843",

                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableSuppresion] ={
            StasisBeam = {
                enabled = true,
                spellId = 356031, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356031",

                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptableMobCastIntoPlayerDebuffSlow] ={
            GlyphOfRestraint= {
                enabled = true,
                spellId = 356537, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356537",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = {
                            "356537",
                            "356324",
                            "356537",
                        },

                    },

                }
            }
        },
        [JDT.GroupTypes.LaserCast] ={
            BeamSlicer= {
                enabled = true,
                spellId = 356001, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356001",

                    },

                }
            }
        },
        [JDT.GroupTypes.LaserCastCombatLogStart] ={
            RiftBlasts= {
                enabled = true,
                spellId = 352390, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "352390",

                    },
                    [2] = {
                        spellId = "355306",
                        duration = "3"

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoRoot] ={
            Lockdown= {
                enabled = true,
                spellId = 356942, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356942",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "356942"
                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoAtackspeedSlow] ={
            AncientDread= {
                enabled = true,
                spellId = 356407, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356407",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "356407"
                    },

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            GroundStomp = {
                enabled = true,
                spellId = 356408, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356408",

                    },

                }
            },
            ChargedPulse = {
                enabled = true,
                spellId = 355584, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355584",

                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] ={
            LavaBreath= {
                enabled = true,
                spellId = 356404, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356404",

                    },

                }
            },
            WildThrash= {
                enabled = true,
                spellId = 357508, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "357508",

                    },

                }
            },
            SwordToss= {
                enabled = true,
                spellId = 356162, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356162",

                    },

                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            FrenziedCharge= {
                enabled = true,
                spellId = 357512, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "357512",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            FranticRip = {
                enabled = true,
                spellId = 357827, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "357827",

                    },

                }
            }
        },
        [JDT.GroupTypes.DashIntoDebuff] ={
            Quickblade = {
                enabled = true,
                spellId = 355830, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355830",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "355830",

                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptableBombCastIntoSpread] ={
            HyperlightBomb= {
                enabled = true,
                spellId = 357029, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "357029",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "357029",

                    },
                    [3] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "357029",
                    },

                }
            }
        },
        [JDT.GroupTypes.GlyphTp] ={
            LightshardRetrat = {
                enabled = true,
                spellId = 357197, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "357197",

                    },

                }
            }
        },
        [JDT.GroupTypes.BuffSlow] ={
            ChronolightEnhancer = {
                enabled = true,
                spellId = 357229, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "357229",

                    },

                }
            }
        },
        [JDT.GroupTypes.KnockCast] ={
            HyperlightBackhand = {
                enabled = true,
                spellId = 356967, -- for spellname etc
                RoleLoad =  "TANK",
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356967",

                    },

                }
            },
            PowerKick = {
                enabled = true,
                spellId = 355477, -- for spellname etc
                RoleLoad =  "TANK",
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355477",

                    },

                }
            },
            ShellCracker = {
                enabled = true,
                spellId = 355048, -- for spellname etc
                RoleLoad =  "TANK",
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355048",

                    },

                }
            },
        },
        [JDT.GroupTypes.GoMeleeCast ] ={
            QuellingStrike = {
                enabled = true,
                spellId = 355637, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355637",

                    },

                }
            }
        },
        [JDT.GroupTypes.StunableReflectCast] ={
            PhalanxField = {
                enabled = true,
                spellId = 355640, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355640",

                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptableMobCastIntoPlayerDebuffDmgTaken] ={
            Scintillate = {
                enabled = true,
                spellId = 355641, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355641",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "355641",

                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            HyperlightVolley = {
                enabled = true,
                spellId = 355642,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355642",
                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            ForceMultiplier = {
                enabled = true,
                spellId = 355782,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355782",
                    },

                }
            },
            CryOfMrrggllrrgg = {
                enabled = true,
                spellId = 355057,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355057",
                    },

                }
            },
            SuperSaison = {
                enabled = true,
                spellId = 356133,
                glowtype = "Ants",
                showGlow = true,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356133",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoLink] = {
            LethalForce = {
                enabled = true,
                spellId = 355479,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355479",
                    },
                    [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "355479",
                    },        

                }
            },
        },
        [JDT.GroupTypes.MinesCast] = {
            ShockMines = {
                enabled = true,
                spellId = 355473,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355473",
                    },

                }
            },
        },
        [JDT.GroupTypes.CageCast] = {
            OpenCage = {
                enabled = true,
                spellId = 347721,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "347721",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            MailShoot = {
                enabled = true,
                spellId = 347814,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "347814",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            LetterOpener = {
                enabled = true,
                spellId = 347716,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "347716",
                    },
                    [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "347716",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            PostageStamp = {
                enabled = true,
                spellId = 348008,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "348008",
                    }

                }
            },
            JunkMail = {
                enabled = true,
                spellId = 347903,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "347903",
                    }

                }
            },
            MrrggrrglrrlrLeap = {
                enabled = true,
                spellId = 355118,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355118",
                    }

                }
            },
            Waterbolt = {
                enabled = true,
                spellId = 355225,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355225",
                    }

                }
            },
        },
        [JDT.GroupTypes.StunableHealCast] = {
            InverogatingFishStick = {
                enabled = true,
                spellId = 355132,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355132",
                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            VolatilePufferfish = {
                enabled = true,
                spellId = 355234,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355234",
                    },

                }
            },
            BoulderThrow = {
                enabled = true,
                spellId = 355464,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355464",
                    },

                }
            },
            TidalBurst = {
                enabled = true,
                spellId = 356260,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "356260",
                    },

                }
            },
        },
        [JDT.GroupTypes.BigStackingAoeWithCD] = {
            TidalStomp = {
                enabled = true,
                spellId = 355429,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355429",
                    },
                    [2] = {
                        spellId = "355429",
                        duration = "15"

                    },
                    [3] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "355429",
                    },

                }
            },
        },
        
        [JDT.GroupTypes.DodgeCast] = {
            Crackle = {
                enabled = true,
                spellId = 355577,
                triggerData = {
                [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "355577",
                    },

                }
            },
            DriftingStar = {
                enabled = true,
                spellId = 357226,
                triggerData = {
                [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "357226",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptShout] = {
            DisruptiveShout = {
                enabled = true,
                spellId = 358344,
                triggerData = {
                [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "358344",
                    },
                [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.Pulsar] = {
            WanderingPulsar = {
                enabled = true,
                spellId = 357238,
                triggerData = {
                    [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "357238",
                    },
                    [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = 357243,
                   },
                    [3] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "180433",

                },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            Reinvigorate = {
                enabled = true,
                spellId = 357284,
                triggerData = {
                    [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "357284",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigAoeCast] = {
            UnstableRift = {
                enabled = true,
                spellId = 357260,
                triggerData = {
                    [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "357260",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            EnergySlash = {
                enabled = true,
                spellId = 357281,
                showStacks = 2,
                triggerData = {
                    [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "357281",
                    },
                    [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "357281",
                    },

                }
            },
        },
    }    
}