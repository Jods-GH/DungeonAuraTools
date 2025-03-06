local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.Motherlode= {
    groupName = "[ML",
    zoneId = "1010", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1012, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.Motherlode.Bosses

bosses.boss1 = {  -- Coin-Operated Crowd Pummeler
    EncounterId = "2105", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.DisposeSpellAura] ={
            FootbombLauncher = {
                enabled = true,
                spellId = 269493, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "269493",
                    },
                    {
                        stacks = 6,
                        summonID = 269493,
                        duration = 15,
                        removeID = 256493
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            ShockingClaw = {
                enabled = true,
                spellId = 257337,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257337",
                    }
                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            StaticPulse = {
                enabled = true,
                spellId = 262347, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "262347",
                    },
                }
            }
        },
        [JDT.GroupTypes.BuffCast] = {
            PayToWin = {
                enabled = true,
                spellId = 271859,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "271859",
                    }
                }
            },
        },
    }
}
bosses.boss2 = {  -- Azerokk
    EncounterId = "2106", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.AddSummonCast] = {
            CallEarthrager = {
                enabled = true,
                spellId = 257593,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257593",
                    }
                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            RagingGaze = {
                enabled = true,
                spellId = 257582,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257582",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "257582",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "257582",
                    },
                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            AzeriteInfusion = {
                enabled = true,
                spellId = 257597,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257597",
                    }
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] = {
            ResonantPulse = {
                enabled = true,
                spellId = 258622,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "258622",
                    }
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            TectonicSmash = {
                enabled = true,
                spellId = 275907,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "275907",
                    }
                }
            },
        },
    }
}
bosses.boss3 = {  -- Rixxa Fluxflame
    EncounterId = "2107", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.Frontal] = {
            AzeriteCatalyst = {
                enabled = true,
                spellId = 259022,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259022",
                    }
                }
            },
            PropellantBlast= {
                enabled = true,
                spellId = 259940,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259940",
                    }
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            ChemicalBurn  = {
                enabled = true,
                spellId = 259853, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "259853",
                    },
                }
            }
        },
    }
}
bosses.boss4 = {  -- Mogul Razdunk
    EncounterId = "2108", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.Dance] ={
            GatlingGun = {
                enabled = true,
                spellId = 260279, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260279",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            HomingMissile = {
                enabled = true,
                spellId = 257582,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260811",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "260811",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "260811",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            DrillSmash = {
                enabled = true,
                spellId = 260202,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260202",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            BusterShot = {
                enabled = true,
                spellId = 260372,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260372",
                    }
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff] = {
            AzeriteHeartseeker = {
                enabled = true,
                spellId = 262513,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "262513",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "262513",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            BigRedRocket  = {
                enabled = true,
                spellId = 270277, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "270277",
                    },
                }
            }
        },
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        
        

    }
}