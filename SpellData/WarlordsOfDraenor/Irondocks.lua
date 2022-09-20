local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.WarlordOfDraenor = JDT.SpellList.WarlordOfDraenor or {}

JDT.SpellList.WarlordOfDraenor.Irondocks = {
    groupName = "[IRONDOCKS",
    zoneId = "595", 
    EncounterJournalID = 558, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.WarlordOfDraenor.Irondocks.Bosses

bosses.boss1 = { --	Fleshrender Nok'gar
    EncounterId = "1749", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
        
    }
}
bosses.boss2 = { --	Grimrail Enforcers
    EncounterId = "1748", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        
       
    }
}
bosses.boss3 = { --	Oshir
    EncounterId = "1750", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        
        
    }
}
bosses.boss4 = { --	Skulloc, Son of Gruul
    EncounterId = "1754", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        
        
    }
}