local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.TheRookery = {
    groupName = "[TR",
    zoneId = "g447", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1268, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.TheRookery.Bosses


bosses.boss1 = { --	Kyrioss
    EncounterId = "2816", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.VoidCast] = {
            WildLightning = {
                enabled = true,
                spellId = 474018,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "474018",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            LightningTorrent = {
                enabled = true,
                spellId = 444034, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "444034",
                    },
                }
            },
        },
    
    }
}
bosses.boss2 = { --	Stormguard Gorren 
    EncounterId = "2861", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.SoakableTargetedDebuffWithCantSoakDebuff] ={
            ChaoticCorruption = {
                enabled = true,
                spellId = 424737, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "424737",
                        exactSpellId = "true", 

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "424739",
                        exactSpellId = "true", 

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "424737",
                        exactSpellId = "true", 
                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            CrushReality= {
                enabled = true,
                spellId = 425113, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "425113",

                    },
                    {
                        spellId = "425113",
                        duration = "5"

                    },

                }
            }
        },
        [JDT.GroupTypes.StayAwayCastIntoSpellAuraApplied] = {
            DarkGravity = {
                enabled = true,
                spellId = 425048,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "425048",
                    },
                    {
                        spellId = "425048",
                        duration = "6"
                    },

                }
            },
        },
    }
}
bosses.boss3 = { --	Voidstone Monstrosity 
    EncounterId = "2836", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.VoidCast] = {
            OblivionWave = {
                enabled = true,
                spellId = 445457,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "445457",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            UnleashCorruption= {
                enabled = true,
                spellId = 429487, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "429487",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "429493",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "429493",
                    },

                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            NullUpheaval = {
                enabled = true,
                spellId = 423305, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423305",
                    },
                }
            },
        },
        [JDT.GroupTypes.IncreasedDmgTakenChannel] = {
            StormsVengeance = {
                enabled = true,
                spellId = 424371,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "424371",
                    }

                }
            },

        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        
    },
}
