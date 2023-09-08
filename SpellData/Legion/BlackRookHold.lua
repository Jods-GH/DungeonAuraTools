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
