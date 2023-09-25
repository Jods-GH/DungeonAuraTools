local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.AtalDazar= {
    groupName = "[AD",
    zoneId = "g275", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 968, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.AtalDazar.Bosses

bosses.boss1 = {  -- Priestess Alun'za
    EncounterId = "2084", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 

        
        [JDT.GroupTypes.SoakCastSafeWithDebuff ] ={
            Transfusion = {
                enabled = true,
                spellId = 255577, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "255577",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "255558",
                    },
                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            GildedClaws = {
                enabled = true,
                spellId = 255579,
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "255579",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            MoltenGold  = {
                enabled = true,
                spellId = 255582, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "255582",
                    },
                }
            }
        },
        [JDT.GroupTypes.KillAddAlive] = {
            SpiritofGold = {
                enabled = true,
                spellId = 259205,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "131009",
                    },
                }
            },
        },
    }
}
bosses.boss2 = {  -- Vol'kaal
    EncounterId = "2085", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
       
        [JDT.GroupTypes.HpCompare] ={
            ReanimationTotem = {
                enabled = true,
                spellId = 250190, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        npcID = "125977",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        npcID = "125977",
                    },
                    {
                        spellIdList = {},
                        extraUnit = ""
                    },
                }
            }
        },
        [JDT.GroupTypes.HealCast] = {
            Reanimate= {
                enabled = true,
                spellId = 259531,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259531",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            ToxicLeap = {
                enabled = true,
                spellId = 250258,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "250258",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigAoeCast] = {
            NoxiousStench = {
                enabled = true,
                spellId = 259572,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259572",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            LingeringNausea  = {
                enabled = true,
                spellId = 267523, -- for spellname etc
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "250372",
                    },
                }
            }
        },
    }
}
bosses.boss3 = {  -- Rezan
    EncounterId = "2086", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.AddSummonCast] = {
            AncientDryBones = {
                enabled = true,
                spellId = 255365,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "255365",
                    },
                }
            },
            BoneQuake = {
                enabled = true,
                spellId = 260683,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260683",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            Pursuit = {
                enabled = true,
                spellId = 257407,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257407",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "257407",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "257407",
                    },
                }
            },
        },
        [JDT.GroupTypes.LosCast] ={
            TerrifyingVisage = {
                enabled = true,
                spellId = 255371, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "255371",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            SerratedTeeth  = {
                enabled = true,
                spellId = 255434, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "255434",
                    },
                }
            }
        },
    }
}
bosses.boss4 = {  -- Yazma
    EncounterId = "2087", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.AddSummonCast] = {
            Soulrend = {
                enabled = true,
                spellId = 259190,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259190",
                    }
                }
            },
            EchosOfShadra = {
                enabled = true,
                spellId = 250050,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "250050",
                    }
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            Soulfeast  = {
                enabled = true,
                spellId = 256577, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "256577",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCast] = {
            Skewer = {
                enabled = true,
                spellId = 249919,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "249919",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableCastIntoCurseDot] = {
            WrackingPain = {
                enabled = true,
                spellId = 250096,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "250096",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "250096",
                    }
                }
            },
        }, 
        
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        

    }
}