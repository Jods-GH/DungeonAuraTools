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
        [JDT.GroupTypes.Frontal] = {
           SoulHarvest = {
                enabled = true,
                spellId = 194956,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "194956",
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
        
    }  
}
bosses.boss3 = {  -- 	Dresaron
    EncounterId = "1838", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        
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