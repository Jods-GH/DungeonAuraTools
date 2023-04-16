local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.Neltharus = {
    groupName = "[NR",
    zoneId = "g431", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)2082
    EncounterJournalID = 1199, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.Neltharus.Bosses

bosses.boss1 = {  -- 	Chargath, Bane of Scales
    EncounterId = "2613", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 
       
        

    }
}

bosses.boss2 = {  -- 	Forgemaster Gorek
    EncounterId = "2612", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        
    }
}
bosses.boss3 = {  -- Magmatusk
    EncounterId = "2610", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
       
        
    }
}
bosses.boss4 = {  -- Warlord Sargha
    EncounterId = "2611", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
       
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 

    }
}