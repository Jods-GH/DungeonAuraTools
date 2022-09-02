local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}

JDT.SpellList.Shadowlands.Tazavesh = {
    groupName = "[TAZAVESH",
    zoneId = "g423", 
    EncounterJournalID = 1194,
    Bosses = {}
}

JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss1 = { 
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
        [JDT.GroupTypes.BossCastIntoBuff] ={
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

JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss2 = {
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

JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss3 = {
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
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
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

JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss4 = {
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
JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss5 = {
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
JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss6 = {
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

JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss7 = {
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
            [JDT.GroupTypes.BossCastIntoBuff] = {
                DoubleTime = {
                    enabled = true,
                    spellId = 350517,
                    type = "bleed",
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
JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss8 = {
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
JDT.SpellList.Shadowlands.Tazavesh.Bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = {  
    }
}