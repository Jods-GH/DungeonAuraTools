local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.AtalDazar= {
    groupName = "[AD",
    zoneId = "g275", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1022, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.AtalDazar.Bosses

bosses.boss1 = {  -- Priestess Alun'za
    EncounterId = "2084", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
    }
}
bosses.boss2 = {  -- Vol'kaal
    EncounterId = "2085", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        
    }
}
bosses.boss3 = {  -- Rezan
    EncounterId = "2086", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        
    }
}
bosses.boss4 = {  -- Yazma
    EncounterId = "2087", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
       
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        

    }
}