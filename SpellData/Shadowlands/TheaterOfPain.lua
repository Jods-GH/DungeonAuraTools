local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}
JDT.SpellList.Shadowlands.Dungeons = JDT.SpellList.Shadowlands.Dungeons or {}


JDT.SpellList.Shadowlands.Dungeons.TheaterOfPain = {
    groupName = "[TOP",
    zoneId = "g414", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1187, --https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.Shadowlands.Dungeons.TheaterOfPain.Bosses

bosses.boss1 = { -- An Affront of Challengers
    EncounterId = "2391",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {

    }
}

bosses.boss2 = { --Gorechop 
    EncounterId = "2365",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
      
    }
} 

bosses.boss3 = { --	Xav the Unfallen 
    EncounterId = "2366",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        
    }
}

bosses.boss4 = { --	Kul'tharok
    EncounterId = "2364",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        
        
    }
}

bosses.boss5 = { --	Mordretha, the Endless Empress
    EncounterId = "2404",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 05 ",
    Auras = {
        
        
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = {  
        
    }    
}