local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.CinderbrewMeadery = {
    groupName = "[CM",
    zoneId = "2335", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(2335)
    EncounterJournalID = 1272, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.CinderbrewMeadery.Bosses


bosses.boss1 = { --	Brew Master Aldryr
    EncounterId = "2900", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.TargetedKnockCast] ={
            KegSmash = {
                enabled = true,
                spellId = 432229, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "432229",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            ThrowCinderbrew = {
                enabled = true,
                spellId = 432179,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "432179",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "432179",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.Frontal] = {
            BlazingBelch = {
                enabled = true,
                spellId = 432198,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "432198",
                    }

                }
            },
        },
        [JDT.GroupTypes.DisposeSuccessWithStacks] ={
            HappyHour = {
                enabled = true,
                spellId = 442525, -- for spellname etc
                showStacks = 2,
                HideCooldownText = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "442525",
                    },
                    {
                        summonID = 442525,
                        duration = 30,
                        removeID = 431896,
                        stacks = 5,
                    },
                }
            }
        },
        [JDT.GroupTypes.SpellcastSucceededDance] ={
            CrawlingBrawl = {
                enabled = true,
                spellId = 445180, -- for spellname etc
                triggerData = {
                    {
                        spellId = "445243",
                        duration = "3"
                    },

                }
            }
        },
    }
}
bosses.boss2 = { --	I'pa 
    EncounterId = "2929", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            SpoutingStout = {
                enabled = true,
                spellId = 439365, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439365",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedKnockCast] ={
            BottomsUppercut = {
                enabled = true,
                spellId = 439031, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439031",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            BurningFermentation  = {
                enabled = true,
                spellId = 439202, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "439202",
                    },
                }
            }
        },
    }
}
bosses.boss3 = { --	Benk Buzzbee
    EncounterId = "2931", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            HoneyMarinade = {
                enabled = true,
                spellId = 440134, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "440134",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "440134",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "440134",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            ShreddingSting = {
                enabled = true,
                spellId = 438971,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "438971",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "438971",
                    },

                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            FlutteringWing = {
                enabled = true,
                spellId = 439524, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439524",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            BeeVenom  = {
                enabled = true,
                spellId = 441397, -- for spellname etc
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "441397",
                    },
                }
            }
        },
        [JDT.GroupTypes.DisposeUnitDied] ={
            SnackTime = {
                enabled = true,
                spellId = 438025, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "438025",
                    },
                    {
                        summonID = 438651,
                        duration = 30,
                        removeID = 219005
                    },
                }
            }
        },
    }
}

bosses.boss4 = { --	Goldie Baronbottom 
    EncounterId = "2930", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.DisposeSuccessRemove] ={
            SpreadtheLove = {
                enabled = true,
                spellId = 435560, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "435560",
                    },
                    {
                        summonID = 452705,
                        duration = 45,
                        removeID = 435797
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            CashCannon = {
                enabled = true,
                spellId = 436592,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "436592",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            CinderBOOM= {
                enabled = true,
                spellId = 435797, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "435797",

                    },
                    {
                        spellId = "435797",
                        duration = "5"

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            BurningRicochet= {
                enabled = true,
                spellId = 436637, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "436637",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "436637",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "436637",
                    },

                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            CinderingWounds  = {
                enabled = true,
                spellId = 435789, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "435789",
                    },
                }
            }
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        
    },
}
