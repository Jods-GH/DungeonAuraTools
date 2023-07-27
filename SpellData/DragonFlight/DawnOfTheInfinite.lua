local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.DawnOfTheInfinite= {
    groupName = "[DOI",
    zoneId = "g440", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1209, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.DawnOfTheInfinite.Bosses

bosses.boss1 = {  -- Chronikar
    EncounterId = "2666", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
        [JDT.GroupTypes.RunOutWithTargetDebuff] ={
            EonShatter = {
                enabled = true,
                spellId = 413105, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "413105",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "413142",
                    },

                }
            }
        },
        [JDT.GroupTypes.SpellcastSucceededSoak] ={
            EonResidue = {
                enabled = true,
                spellId = 403486, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "413105",
                        duration = "2",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] = {
            ResidueBlast= {
                enabled = true,
                spellId = 417480,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "417480",
                    },

                }
            },
        },
        [JDT.GroupTypes.PlayerGroupDebuffSpread ] ={
            SandStomp = {
                enabled = true,
                spellId = 401421, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "401421",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "401421",
                    },

                }
            }
        },
        [JDT.GroupTypes.KnockCast] ={
            Chronoshear = {
                enabled = true,
                spellId = 413013, -- for spellname etc
                RoleLoad = {
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "413013",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.IncreasedDmgTakenBuff] = {
            Recovering = {
                enabled = true,
                spellId = 413041,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "413041",
                    }

                }
            },

        },
        
    }
}

bosses.boss2 = {  -- Manifested Timeways
    EncounterId = "2667", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        
    }
}
bosses.boss3 = {  -- Blight of Galakrond
    EncounterId = "2668", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        
    }
}

bosses.boss4 = {  -- Iridikron the Stonescaled
    EncounterId = "2669", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        
    }
}

bosses.boss5 = {  -- Tyr, the Infinite Keeper
    EncounterId = "2670", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 05 ",
    Auras = { 
        
    }
}

bosses.boss6 = {  -- Morchie
    EncounterId = "2671", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 06 ",
    Auras = { 
        
    }
}

bosses.boss7 = {  -- Time-Lost Battlefield
    EncounterId = "2672", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 07 ",
    Auras = { 
        
    }
}

bosses.boss8 = {  -- Chrono-Lord Deios
    EncounterId = "2673", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 07 ",
    Auras = { 
        
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
      
    }
}