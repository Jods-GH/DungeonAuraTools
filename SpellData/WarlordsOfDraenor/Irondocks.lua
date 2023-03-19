local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.WarlordOfDraenor = JDT.SpellList.WarlordOfDraenor or {}
JDT.SpellList.WarlordOfDraenor.Dungeons = JDT.SpellList.WarlordOfDraenor.Dungeons or {}

JDT.SpellList.WarlordOfDraenor.Dungeons.Irondocks = {
    groupName = "[IRONDOCKS",
    zoneId = "595", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 558, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.WarlordOfDraenor.Dungeons.Irondocks.Bosses

bosses.boss1 = { --	Fleshrender Nok'gar
    EncounterId = "1749", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            BurningArrows = {
                enabled = true,
                spellId = 164632, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "164632",
    
                    },
    
                }
            },
            BarbedArrowBarrage = {
                enabled = true,
                spellId = 164648, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "164648",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.FeastCast] ={
            SavageMauling= {
                enabled = true,
                spellId = 164837, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "164837",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.CastIntoStopAtackingShield] ={
            RecklessProvocation= {
                enabled = true,
                spellId = 164426, -- for spellname etc
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "164426",
    
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "164426",
    
                    },
    
                }
            },
        },
        
    }
}
bosses.boss2 = { --	Grimrail Enforcers
    EncounterId = "1748", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.CastIntoStopAtackingShield] ={
            SanguineSphere= {
                enabled = true,
                spellId = 163689, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "163689",
    
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "163689",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.Charge] = {
            FlamingSlash = {
                enabled = true,
                spellId = 163668,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "163668",
                    }

                }
            },
        }, 
        [JDT.GroupTypes.TrapSpawn] ={
            OgreTraps = {
                enabled = true,
                spellId = 163390, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "163390",

                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            BigBoom = {
                enabled = true,
                spellId = 163379,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "163379",
                    },

                }
            },
        },
        [JDT.GroupTypes.WaveCast] = {
            LavaSweep = {
                enabled = true,
                spellId = 165152,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "165152",
                    }

                }
            },

        },
       
    }
}
bosses.boss3 = { --	Oshir
    EncounterId = "1750", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.FeastCast] ={
            TimeToFeed= {
                enabled = true,
                spellId = 162415, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "162415",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.Charge] = {
            PrimalAssault = {
                enabled = true,
                spellId = 161256,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "161256",
                    }

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            AcidSpit = {
                enabled = true,
                spellId = 178155,
                type = JDT.AuraTypes.stun,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "178155",
                    },

                }
            },
        },
        
    }
}
bosses.boss4 = { --	Skulloc, Son of Gruul
    EncounterId = "1754", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            CannonBarrage = {
                enabled = true,
                spellId = 168929, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "168929",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.SpellCastStartIntoPlayerGroupDebuffSpread] ={
            RapidFire = {
                enabled = true,
                spellId = 168398, -- for spellname etc
                triggerData = {
                    {
                            duration = "3",
                            spellId = "168398",


                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "168398",

                    },
                    [3] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "168398",
                    },
    
                }
            },
        },
    }
}
bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.SpinToWin] = {
            BladeStorm = {
                enabled = true,
                spellId = 167232,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "167232",
                    }

                }
            },
        },
        [JDT.GroupTypes.Hooking] = {
            ChainDrag= {
                enabled = true,
                spellId = 172860,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "172860",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            LavaBlast = {
                enabled = true,
                spellId = 173514,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "173514",
                    }

                }
            },
        }, 
        [JDT.GroupTypes.Dance] ={
            LavaBarrage = {
                enabled = true,
                spellId = 173480, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "173480",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.NoCastVoid] ={
            GreaseVial = {
                enabled = true,
                spellId = 172649, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "172649",
    
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = {
							"172636", -- [1]
							"172649", -- [2]
						},
                    }
    
                }
            },
        },
        [JDT.GroupTypes.Grenade] = {
            HighExplosiveGrenade = {
                enabled = true,
                spellId = 178298,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "178298",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            BarbedArrowBarrage = {
                enabled = true,
                spellId = 164648, -- for spellname etc
                loadInBossfight = false,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "164648",
    
                    },
    
                }
            },
            BurningArrows = {
                enabled = true,
                spellId = 164632, -- for spellname etc
                loadInBossfight = false,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "164632",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            FlamingArrows = {
                enabled = true,
                spellId = 173148,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "173148",
                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            BrutalInspiration = {
                enabled = true,
                spellId = 172943,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "172943",
                    },

                }
            },
        },
        [JDT.GroupTypes.SummonAxeCast] ={
            ThrowGatecrasher = {
                enabled = true,
                spellId = 172952, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "172952",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.ShatteringStrike] ={
            ShatteringStrike = {
                enabled = true,
                spellId = 172982, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "172982",
    
                    },
                    {
                        spellIdList = {},
                        extraUnit = ""

                    },
    
                }
            },
        },
    }
}