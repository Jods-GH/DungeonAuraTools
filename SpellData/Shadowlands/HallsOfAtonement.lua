local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}
JDT.SpellList.Shadowlands.Dungeons = JDT.SpellList.Shadowlands.Dungeons or {}


JDT.SpellList.Shadowlands.Dungeons.HallsOfAtonement = {
    groupName = "[HOA",
    zoneId = "409", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1185, --https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.Shadowlands.Dungeons.HallsOfAtonement.Bosses

bosses.boss1 = { -- Halkias, the Sin-Stained Goliath
    EncounterId = "2401",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
       
    }
}

bosses.boss2 = { -- Echelon 
    EncounterId = "2380",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        
    }
} 

bosses.boss3 = { -- High Adjudicator Aleez 
    EncounterId = "2403",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        
    }
}

bosses.boss3 = { -- Lord Chamberlain 
    EncounterId = "2381",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = {  
        
        
    }    
}