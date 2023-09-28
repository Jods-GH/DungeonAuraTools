local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.WarlordOfDraenor = JDT.SpellList.WarlordOfDraenor or {}
JDT.SpellList.WarlordOfDraenor.Dungeons = JDT.SpellList.WarlordOfDraenor.Dungeons or {}

JDT.SpellList.WarlordOfDraenor.Dungeons.Everbloom = {
    groupName = "[EB",
    zoneId = "595", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 556, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.WarlordOfDraenor.Dungeons.Everbloom.Bosses

bosses.boss1 = { --	Witherbark
    EncounterId = "1746", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
    }
}
bosses.boss2 = { --	Ancient Protectors
    EncounterId = "1757", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        
    }
}
bosses.boss3 = { --	Archmage Sol 
    EncounterId = "1751", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        
    }
}
bosses.boss4 = { --	Xeri'tac
    EncounterId = "1752", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        
    }
}
bosses.boss5 = { --	Yalnu 
    EncounterId = "1756", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 05 ",
    Auras = {
        
    }
}
