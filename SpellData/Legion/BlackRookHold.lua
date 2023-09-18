local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.BlackRookHold = {
    groupName = "[BRH",
    zoneId = "g245", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 740, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.BlackRookHold.Bosses

bosses.boss1 = {  -- The Amalgam of Souls
    EncounterId = "1832", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
           SoulHarvest = {
                enabled = true,
                spellId = 194956,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "194956",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            SoulHarvest  = {
                enabled = true,
                spellId = 194956, -- for spellname etc
                extraName = " dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "265168",

                    },

                }
            }
        },
        [JDT.GroupTypes.TargetedCastWithTargetAnounce] ={
            SwirlingScythe = {
                enabled = true,
                spellId = 195254, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "195254",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoKeepMovingWithDebuff] = {
            SoulEchoes = {
                enabled = true,
                spellId = 194966,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "194966",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "194966",
                    }
                }
            },
        },
        [JDT.GroupTypes.RestlessSoul] = {
            RestlessSoul = {
                enabled = true,
                spellId = 196078,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "196078",
                    },
                    {
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgBuff] = {
            Soulgorge = {
                enabled = true,
                spellId = 196930,
                showStacks = 1,
                glowtype = "Ants",
                showGlow = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "196930",
                    }

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            SoulBurst = {
                enabled = true,
                spellId = 196587, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "196587",
    
                    },
    
                }
            }
        },
    }  
}

bosses.boss2 = {  -- Ilysanna Ravencrest
    EncounterId = "1833", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.SpreadCast] = {
            BrutailGlaive = {
                enabled = true,
                spellId = 197546,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "197546",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            BrutailGlaive  = {
                enabled = true,
                spellId = 197546, -- for spellname etc
                extraName = " dot",
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "197546",

                    },

                }
            }
        },
        [JDT.GroupTypes.TankBusterCast] = {
            VengefulShear = {
                enabled = true,
                spellId = 197418,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "197418",
                    },
                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            VengefulShear = {
                enabled = true,
                spellId = 197418,
                extraName = " dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "197418",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastSuccessDashWithCountdownIfDebuffed] = {
            DarkRush = {
                enabled = true,
                spellId = 197478,
                triggerData = {
                    {
                        spellId = "197478",
                        duration = "6"
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "197484",
                    },

                }
            }
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            EyeBeams = {
                enabled = true,
                spellId = 197696, -- for spellname etc
                extraName = " soon",
                triggerData = {
                    {
                        spellIdList = {"197696"},
                        extraUnit = "boss1",
                        PowerRegen = 1,
                        castDelay = 4.7,

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "197696",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
        [JDT.GroupTypes.PlayerGroupDebuffSpread ] ={
            EyeBeams = {
                enabled = true,
                spellId = 197687, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "197687",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "197687",
                    },

                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            BoneCrushingStrike = {
                 enabled = true,
                 spellId = 197974,
                 triggerData = {
                     {
                         unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                         spellId = "197974",
                     }
 
                 }
             },
         },
         [JDT.GroupTypes.InterruptableCastWithStackBuff] = {
            ArcaneBlitz = {
                 enabled = true,
                 spellId = 200248,
                 triggerData = {
                     {
                         unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                         spellId = "200248",
                     },
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200248",
                    }
 
                 }
             },
         },
    }, 
}
bosses.boss3 = {  -- 	Smashspite the Hateful
    EncounterId = "1834", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            BrutalHaymaker = {
                enabled = true,
                spellId = 198245,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                glowtype = "Ants",
                showGlow = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198245",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "198245",
                    },
                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            EarthShakingStomp = {
                enabled = true,
                spellId = 198073, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198073",

                    },

                }
            },
        },
        [JDT.GroupTypes.PlayerGroupDebuff] ={
            FelVomit = {
                enabled = true,
                spellId = 198446, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "198446",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "198446",
                    },

                }
            }
        },
        [JDT.GroupTypes.SoakableTargetedDebuffWithCantSoakDebuff] ={
            HatefulGaze = {
                enabled = true,
                spellId = 198079, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "198079",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "224188",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "198079",
                    },

                }
            }
        },
    }  
}
bosses.boss4 = {  -- 	Lord Kur'talos Ravencrest
    EncounterId = "1835", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.TargetableVoidCast] ={
            WhirlingBlade = {
                enabled = true,
                spellId = 198641, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "198641",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastStartAvoid] ={
            DarkBlast = {
                enabled = true,
                spellId = 198820, -- for spellname etc
                triggerData = {
                    {
                        spellId = "198820",
                        duration = "1.5"
                    },

                }
            },
        },
        [JDT.GroupTypes.VulnerableAfterUnitDied] ={
            LegacyoftheRavencrest = {
                enabled = true,
                spellId = 199368, -- for spellname etc
                triggerData = {
                    {
                        spellId = "98965",
                        duration = "23.3"
                    },

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoeBigAoeIfBuffMissing] ={
            ShadowBoltVolley = {
                enabled = true,
                spellId = 202019, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "202019",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "199368",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            CloudOfHypnosis = {
                enabled = true,
                spellId = 199143,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "199143",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            DreadlordsGuile = {
                enabled = true,
                spellId = 199193, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "199193",

                    },

                }
            }
        },
        [JDT.GroupTypes.SwarmDebuffAddNeedsToBeKilledWhileActive] ={
            StingingSwarm = {
                enabled = true,
                spellId = 201733, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "201733",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "201733",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "201733",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "101008",
                    }

                }
            }
        },
    }  
}



bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            DarkMending = {
                enabled = true,
                spellId = 225573,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "225573",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            ArrowBarrage= {
                 enabled = true,
                 spellId = 200345,
                 triggerData = {
                     {
                         unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                         spellId = "200345",
                     }
                 }
             },
             BokeBreakingStrike= {
                enabled = true,
                spellId = 200261,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200261",
                    }
                }
            },
         },
         [JDT.GroupTypes.VoidCast] = {
            ThrowPricelessArtifact = {
                enabled = true,
                spellId = 201176,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201176",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            SouldBlade = {
                enabled = true,
                spellId = 200084,
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200084",
                    },
                }
            },
            SouldVenom = {
                enabled = true,
                spellId = 225908,
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "225908",
                    },
                }
            },
            BloodThirstyLeap = {
                enabled = true,
                spellId = 225962,
                type = JDT.AuraTypes.bleed,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "225962",
                    },
                }
            },
        },
        [JDT.GroupTypes.StunableAuraCastIntoBuff] = {
            SacrificeSoul = {
                enabled = true,
                spellId = 200105,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200105",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200105",
                    },

                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            StrikeDown = {
                enabled = true,
                spellId = 225732,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "225732",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastWithTargetAnounce] ={
            GlaiveToss = {
                enabled = true,
                spellId = 196916, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "196916",
                    },
                }
            },
            PhasedExplosion = {
                enabled = true,
                spellId = 200256, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200256",
                    },
                }
            },
            RavensDive = {
                enabled = true,
                spellId = 214001, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "214001",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            SpiritBlast = {
                enabled = true,
                spellId = 196883, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "196883",

                    },

                }
            },
        },
        [JDT.GroupTypes.PlayerGroupDebuff] ={
            SoulEchoes = {
                enabled = true,
                spellId = 194966, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "194966",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "194966",
                    },

                }
            }
        },
        [JDT.GroupTypes.ExplodingCombatlogStart] ={
            InternalRupture = {
                enabled = true,
                glowtype = "Ants",
                showGlow = true,
                spellId = 225917, -- for spellname etc
                triggerData = {
                    {
                        duration = "3",
                        spellId = "225917",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoAoeBuff] ={
            KnifeDance = {
                enabled = true,
                spellId = 200291, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200291",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200291",
                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoTankBusterWhileBuffIsActive] = {
            BrutalAssault = {
                enabled = true,
                spellId = 201139,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201139",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201139",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoFrontalWhileBuffed] ={
            AncientPotionIndigestion= {
                enabled = true,
                spellId = 200913, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200913",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200913",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoSpinToWinWhileBuffed] ={
            AncientPotionHyperactive= {
                enabled = true,
                spellId = 201063, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201063",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "201063",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoChaseWithBuffEffect] = {
            SicBats = {
                enabled = true,
                spellId = 203163,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "203163",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "203163",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "203163",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "227913",
                    },
                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            Felfrenzy = {
                enabled = true,
                spellId = 227913,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "227913",
                    }
                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            CoupDeGrace = {
                enabled = true,
                spellId = 214003,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "214003",
                    },
                }
            },
        },
    }
}

