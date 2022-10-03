local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.HallsOfValor = {
    groupName = "[HOV",
    --zoneId = "g252", 
    EncounterJournalID = 721, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.HallsOfValor.Bosses

bosses.boss1 = { --hymdall
    EncounterId = "1805", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.Frontal] = {
            BloodlettingSweep = {
                enabled = true,
                spellId = 193092,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193092",
                    }

                }
            },

        },
        [JDT.GroupTypes.SummonAxeCast] ={
            DancingBlade = {
                enabled = true,
                spellId = 193235, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193235",
    
                    },
    
                }
            },
        },
        
        [JDT.GroupTypes.CastIntoCastStartDance] ={
            HornofValor = {
                enabled = true,
                spellId = 191284, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "191284",

                    },
                    [2] = {
                        spellId = "188404",
                        duration = "4"

                    },

                }
            }
        },
       
    }
}

bosses.boss2 = { --hyrja
    EncounterId = "1806", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
       
    }
}

bosses.boss3 = { --fenryr
    EncounterId = "1807", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
       
    }
}

bosses.boss4 = { --skovald
    EncounterId = "1808", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.CastWithSafeBuff] = {
            Ragnarok = {
                enabled = true,
                spellId = 193826,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "193826",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193826",
                    },
                    {
                        duration = "9",
                        spellId = "193983",
                    },
                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            FelblazeRush= {
                enabled = true,
                spellId = 193659, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193659",

                    },

                }
            },
        },
       
    }
}

bosses.boss5 = { -- odyn
    EncounterId = "1809", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 05 ",
    Auras = {
        [JDT.GroupTypes.SpellcastSucceededAvoid] ={
            SpearOfLight = {
                enabled = true,
                spellId = 198058, -- for spellname etc
                triggerData = {
                    {
                        spellId = "198396",
                        duration = "3"

                    },

                }
            }
        },
        [JDT.GroupTypes.SpellcastSucceededAdds] ={
            SummonStormforgedObliterator= {
                enabled = true,
                spellId = 201215, -- for spellname etc
                triggerData = {
                    {
                        spellId = "201221",
                        duration = "4"

                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptableKillAddWithStackingBuff] ={
            Surge= {
                enabled = true,
                spellId = 198750, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "198750",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199787",
                    },

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            RadiantTempest = {
                enabled = true,
                spellId = 198263, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198263",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            ShatterSpears = {
                enabled = true,
                spellId = 198077, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198077",

                    },

                }
            },
            RunicBrand = {
                enabled = true,
                spellId = 197961, -- for spellname etc
                extraName = " inc",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "197961",

                    },

                }
            }
        },
        [JDT.GroupTypes.CarryingDeBuff] = {
            RunicBrand = {
                enabled = true,
                spellId = 197963,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "197963"
                    }

                }
            },

        },
       
    }
}