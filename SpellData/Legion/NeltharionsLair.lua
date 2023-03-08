local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.NeltharionsLair = {
    groupName = "[NL",
    zoneId = "731", 
    EncounterJournalID = 767, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.NeltharionsLair.Bosses

bosses.boss1 = {  -- Rokmora
    EncounterId = "1790", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            RazorShards = {
                enabled = true,
                spellId = 188169,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "188169",
                    }

                }
            },
        },
    }
}


bosses.boss2 = {  -- Ularogg Cragshaper
    EncounterId = "1791", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            StanceOfTheMountain = {
                enabled = true,
                spellId = 388283, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"198565"},
                        extraUnit = "boss1"
        
                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198565",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }
        
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            StrikeOfTheMountain = {
                enabled = true,
                spellId = 198428, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198428",

                    },

                }
            }, 
        },
    }
}

bosses.boss3 = {  -- Naraxas
    EncounterId = "1792", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.VoidCast] = {
            RancidMaw = {
                enabled = true,
                spellId = 205549, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "205549",

                    },

                }
            }, 
        },
        [JDT.GroupTypes.Breath] = {
            ToxicRetch = {
                enabled = true,
                spellId = 210150,
                triggerData = {
                   [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "210150",
                    }

                }
            },

    },
    [JDT.GroupTypes.Dot] = {
        ToxicRetchDot = {
            enabled = true,
            spellId = 217851,
            extraName = " dot",
            type = JDT.AuraTypes.poison,
            triggerData = {
               [1] = {
                    unit = JDT.Templates.Triggers.UnitTypes.player,
                    spellId = "217851",
                },

            }
        },
    },
    }
}

bosses.boss4 = {  -- Dargrul the Underking
    EncounterId = "1793", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            LandSlide = {
                enabled = true,
                spellId = 200700,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200700",
                    }

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            MagmaSculptor = {
                enabled = true,
                spellId = 200637,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200637",
                    },

                }
            },
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            MagmaWave = {
                enabled = true,
                spellId = 200418, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"200418"},
                        extraUnit = "boss1"
        
                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200418",
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


