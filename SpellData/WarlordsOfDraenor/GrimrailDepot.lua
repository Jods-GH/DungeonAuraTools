local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.WarlordOfDraenor = JDT.SpellList.WarlordOfDraenor or {}

JDT.SpellList.WarlordOfDraenor.GrimrailDepot = {
    groupName = "[GRIMRAIL",
    zoneId = "g225", 
    EncounterJournalID = 536, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.WarlordOfDraenor.GrimrailDepot.Bosses

bosses.boss1 = { -- Rocketspark and Borka
    EncounterId = "1715", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.VoidCastWithSuccess] = {
            TargetEliminator = {
                enabled = true,
                spellId = 162500,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "162500",
                    },
                    {
                        spellId = "162500",
                        duration = "3"

                    },

                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            MadDash= {
                enabled = true,
                spellId = 161090, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "161090",

                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptShout] = {
            Slam = {
                enabled = true,
                spellId = 161087,
                triggerData = {
                [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "161087",
                    },
                [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            MissileBarrage = {
                enabled = true,
                spellId = 162407, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "162407",

                    },

                }
            }
        },
        [JDT.GroupTypes.IncreasedDmgTakenBuff] = {
            Recovering = {
                enabled = true,
                spellId = 163947,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "163947",
                    }

                }
            },

        },
       
    }
}
bosses.boss2 = { -- Nitrogg Thundertower
    EncounterId = "1732", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.ShockWave] ={
            BlackrockMortar = {
                enabled = true,
                spellId = 163550, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "163550",

                    },

                }
            },
        },
        [JDT.GroupTypes.Grenade] = {
            BlackrockGrenade = {
                enabled = true,
                spellId = 163539,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "163539",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoHideDebuff] = {
            SuppressiveFire = {
                enabled = true,
                spellId = 160681,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "160681",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "160681",

                    },
                    [3] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "160681",
                    },

                }
            },

        },
        [JDT.GroupTypes.CarryingBuff] = {
            BlackrockWeapons = {
                enabled = true,
                spellId = 160702,
                showStacks = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = {
							"160702", -- [1]
							"160703", -- [2]
							"156357", -- [3]
						},
                    }

                }
            },

        },
        
    }
}

bosses.boss3 = { -- Skylord Tovra
    EncounterId = "1736", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.TrapSpawn] ={
            FreezingSnare = {
                enabled = true,
                spellId = 162066, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "162066",

                    },

                }
            },
        },
        [JDT.GroupTypes.ShockWave] ={
            SpinningSpear = {
                enabled = true,
                spellId = 162058, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "162058",

                    },

                }
            },
        },
        [JDT.GroupTypes.BreathMonsterYell] ={
            ThunderousBreath = {
                enabled = true,
                spellId = 161801, -- for spellname etc
                triggerData = {
                    {
                        duration = "2.5",
                        destName = "Rakun",
                    },

                }
            },
        },

        
    }
}
bosses.Trash= { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.Charge] ={
            Dash= {
                enabled = true,
                spellId = 164168, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "164168",

                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableStunCast] ={
            FiftyThousandVolt= {
                enabled = true,
                spellId = 164192, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "164192",

                    },

                }
            },
        },

        [JDT.GroupTypes.ExplodingCast] = {
            Activating = {
                enabled = true,
                spellId = 163966,
                glowtype = "ActionButton",
                showGlow = true,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "163966",
                    }

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            ShrapnelBlast = {
                enabled = true,
                spellId = 160943,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "160943",
                    }

                }
            },
            CannonBarrage = {
                enabled = true,
                spellId = 176127,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "176127",
                    }

                }
            },
        },
        [JDT.GroupTypes.ShockWave] ={
            BlackrockMortar = {
                enabled = true,
                spellId = 163550, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "163550",

                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            FlameTongue = {
                enabled = true,
                spellId = 176032,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "176032",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoSpreadifDebuffed] = {
            LavaWreath = {
                enabled = true,
                spellId = 176025,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "176025",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "176025",
                    },

                }
            },
        },
    }
}