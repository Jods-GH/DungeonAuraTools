local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.MistOfPandaria = JDT.SpellList.MistOfPandaria or {}
JDT.SpellList.MistOfPandaria.Dungeons = JDT.SpellList.MistOfPandaria.Dungeons or {}


JDT.SpellList.MistOfPandaria.Dungeons.TempleOfTheJadeSerpent = {
    groupName = "[TOTJS",
    zoneId = "g201", 
    EncounterJournalID = 313, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.MistOfPandaria.Dungeons.TempleOfTheJadeSerpent.Bosses

bosses.boss1 = { -- Wise Mari
    EncounterId = "1418", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.LaserCast] ={
            Hydrolance= {
                enabled = true,
                spellId = 106055, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "106055",

                    },

                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            CallWater = {
                enabled = true,
                spellId = 106526,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "106526",
                    },

                }
            },
        },
        [JDT.GroupTypes.PhaseChangeCast] = {
            BubbleBurst = {
                enabled = true,
                spellId = 106612,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "106612",
                    },
                }
            },
        },
    }
}

bosses.boss2 = { -- Lorewalker Stonestep
    EncounterId = "1417", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        
    }
}

bosses.boss3 = { --liu flameheart
    EncounterId = "1416", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.Dot] ={
            SerpentStrike = {
                enabled = true,
                type = JDT.AuraTypes.magic,
                spellId = 106823, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "106823",

                    },

                }
            },
            JadeSerpentStrike = {
                enabled = true,
                spellId = 106841, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "106841",

                    },

                }
            }
        },
        [JDT.GroupTypes.RunOutUnitSpellcastSucceeded] ={
            SerpentKick = {
                enabled = true,
                spellId = 106856, -- for spellname etc
                triggerData = {
                    {
                        spellId = "106823",
                        duration = "1"

                    },

                }
            },
            JadeSerpentKick = {
                enabled = true,
                spellId = 106864, -- for spellname etc
                triggerData = {
                    {
                        spellId = "106864",
                        duration = "1"

                    },

                }
            }
        },
        [JDT.GroupTypes.SpreadCast] = {
            JadeFire = {
                enabled = true,
                spellId = 107045,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "107045",
                    },

                }
            },
        },
    }
}

bosses.boss4 = { -- sha of doubt
    EncounterId = "1439", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.PlayerGroupDebuffSpread] ={
            TouchofNothingness = {
                enabled = true,
                spellId = 106113, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "106113",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "106113",

                    },

                }
            }
        },
        [JDT.GroupTypes.KillAddDebuff] ={
            GatheringDoubt= {
                enabled = true,
                spellId = 117570, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "117570",
                        ignoreSelf = false,

                    },

                }
            }
        },
        
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.Dot] ={
            SerratedSlash = {
                enabled = true,
                type = JDT.AuraTypes.bleed,
                spellId = 128051, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "128051",

                    },

                }
            },
        },
    }
}