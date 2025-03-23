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
        [JDT.GroupTypes.CastIntoLinkAppliedCheck] = {
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
                    {
                        spellId = "472819",
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
        [JDT.GroupTypes.RageBuffCast] = {
            BloodthirstyCackle = {
                enabled = true,
                spellId = 463058,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "463058",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            LethargicVenom = {
                enabled = true,
                spellId = 465813,
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "465813",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "465813",
                    }
                }
            },
            Nailgun = {
                enabled = true,
                spellId = 1213805,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1213805",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1213803",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.SummoningCast] = {
            RapidConstruction = {
                enabled = true,
                spellId = 465408,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "465408",
                    }
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            RPGG = {
                enabled = true,
                spellId = 1216039,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1216039",
                    },
                }
            },
        },
        [JDT.GroupTypes.ActivatingCast] = {
            Reload = {
                enabled = true,
                spellId = 461796,
                type = JDT.AuraTypes.stun,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "461796",
                    }
                }
            },
        },
        [JDT.GroupTypes.AbsorbDebuffWithProgress] ={
            WarpBlood = {
                enabled = true,
                spellId = 465827, -- for spellname etc
                customTextInfo = { tooltip = 1, inverse = true},
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "465827",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            BloodBlast = {
                enabled = true,
                spellId = 465871, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "465871",
                    },
                }
            },
            SurveyingBeam = {
                enabled = true,
                spellId = 462771, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "462771",
                    },
                }
            },
            LightningBolt = {
                enabled = true,
                spellId = 465595, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "465595",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            BlackBloodWound  = {
                enabled = true,
                spellId = 462737, -- for spellname etc
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "462737",
                    },
                }
            }
        },
        [JDT.GroupTypes.SpreadCast] = {
            Trickshot = {
                enabled = true,
                spellId = 1214468,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1214468",
                    }

                }
            },

        },
        [JDT.GroupTypes.Frontal] = {
            Flamethrower = {
                enabled = true,
                spellId = 465754,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "465754",
                    }
                }
            },
            SurpriseInspection = {
                enabled = true,
                spellId = 465682,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "465682",
                    }
                }
            },
            SplishSplash = {
                enabled = true,
                spellId = 1217496,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1217496",
                    }
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            Shreddation = {
                enabled = true,
                spellId = 474337,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "474337",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            WindUp = {
                enabled = true,
                spellId = 465120,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "465120",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "465120",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "465120",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff] = {
            ViciousChomp = {
                enabled = true,
                spellId = 465820,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "465820",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "465820",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            EZThroDynamiteIII = {
                enabled = true,
                spellId = 463169,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "463169",
                    }
                }
            },
        },
        [JDT.GroupTypes.Hooking] = {
            Harpoon = {
                enabled = true,
                spellId = 468631,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "468631",
                    },

                }
            },
        },
        [JDT.GroupTypes.MinesCast] = {
            PlantSeaforiumCharge = {
                enabled = true,
                spellId = 468726,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "468726",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            RestorativeAlgae = {
                enabled = true,
                spellId = 471733,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "471733",
                    },

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            JettisonKelp = {
                enabled = true,
                spellId = 471736, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "471736",
                    },
                }
            }
        },
        [JDT.GroupTypes.VolleyIntoDot] ={
            Backwash = {
                enabled = true,
                spellId = 469721, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "469721",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "469721",
                    },
                }
            },
        },
        [JDT.GroupTypes.Orbs] = {
            BubbleBurp = {
                enabled = true,
                spellId = 469818,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "469818",
                    },

                }
            },
        },
        [JDT.GroupTypes.StunDot] = {
            Overcharge = {
                enabled = true,
                spellId = 469799,
                type = JDT.AuraTypes.magic,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "469799",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            BatteryDischarge = {
                enabled = true,
                spellId = 1216607, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1216607",
                    },
                }
            },
        },
    },
}
