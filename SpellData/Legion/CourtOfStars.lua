local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.CourtOfStars = {
    groupName = "[COS",
    zoneId = "g252", 
    EncounterJournalID = 800, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.CourtOfStars.Bosses

bosses.boss1 = { 
    EncounterId = "1868", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.ShockWave] = {
            ResonantSlash = {
                enabled = true,
                spellId = 207261,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207261",
                    }

                }
            },

        },
        [JDT.GroupTypes.CastIntoJumpWithDebuff] = {
            ArcaneLockdown = {
                enabled = true,
                spellId = 207278,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207278",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "207278",
                    }

                }
            },
        },
        [JDT.GroupTypes.AddSummonWithBuffStacks] = {
            SignalBeacon = {
                enabled = true,
                spellId = 207806,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207806",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227147",
                    }

                }
            },
        },
        [JDT.GroupTypes.BuffOrDeathCast] = {
            FlaskOFTheSolemnNight = {
                enabled = true,
                spellId = 207815,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "207815",
                    }

                }
            },

        },

    }
}
bosses.boss2 = { 
    EncounterId = "1869", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.UnavoidableAoe] ={
            BurningIntenisity = {
                enabled = true,
                spellId = 207906, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "207906",

                    },

                }
            }
        },

    }
}
bosses.boss3 = { 
    EncounterId = "1870", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.ShockWave] = {
            PiercingGale = {
                enabled = true,
                spellId = 209628,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "209628",
                    }

                }
            },

        },    
        [JDT.GroupTypes.VoidCast] = {
            SlicingMaelstrom = {
                enabled = true,
                spellId = 209676,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "209676",
                    },

                }
            },
        },    
        [JDT.GroupTypes.Charge] ={
            BladeSurge= {
                enabled = true,
                spellId = 209602, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "209602",

                    },

                }
            },
        },

    }
}