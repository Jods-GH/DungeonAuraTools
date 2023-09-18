local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.DarkheartThicket = {
    groupName = "[DHT",
    zoneId = "733", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 762, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.DarkheartThicket.Bosses


bosses.boss1 = {  -- Archdruid Glaidalis
    EncounterId = "1836", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.ToppableDot] = {
           GriviousTear = {
                enabled = true,
                spellId = 196376,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "196376",
                    }
                }
            },
        },
        [JDT.GroupTypes.Charge] = {
            PrimalRage = {
                enabled = true,
                spellId = 198376,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198376",
                    }
                }
            },
        },
        
    }  
}

bosses.boss2 = {  -- Oakheart
    EncounterId = "1837", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.CastIntoRoot] ={
            StranglingRoots= {
                enabled = true,
                spellId = 204574, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "204574",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "204574"
                    },
                }
            }
        },
        [JDT.GroupTypes.KillAddDebuff] ={
            StranglingRootsAlive= {
                enabled = true,
                spellId = 199063, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "199063",
                        ignoreSelf = false,
                    },
                }
            }
        },
        [JDT.GroupTypes.KnockCast] ={ -- this is the wrong type needs to be changed
            ShatteredEarth = {
                enabled = true,
                spellId = 204666, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "204666",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastWithTargetAnounce] ={
            CrushingGrip= {
                enabled = true,
                spellId = 204611, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "204611",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            NightmareBreath = {
                enabled = true,
                spellId = 204667,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "204667",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            NightmareBreathDot  = {
                enabled = true,
                spellId = 204667, -- for spellname etc
                extraName = " debuff",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "204667",

                    },

                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            Uproot = {
                enabled = true,
                spellId = 212786,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "212786",
                    }
                }
            },
        },
       
    }  
}
bosses.boss3 = {  -- 	Dresaron
    EncounterId = "1838", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.StayCloseCast] = {
            DownDraft = {
                enabled = true,
                spellId = 199345,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "199345",
                    }
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            EarthShakingRoar= {
                enabled = true,
                spellId = 199389,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "199389",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            BreathOfCorruption = {
                enabled = true,
                spellId = 191325,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "191325",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            BreathOfCorruptionDot  = {
                enabled = true,
                spellId = 191325, -- for spellname etc
                extraName = " debuff",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "191325",

                    },

                }
            }
        },
    }  
}
bosses.boss4 = {  -- 	Shade of Xavius
    EncounterId = "1839", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
       
    }  
}



bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        
    }
}