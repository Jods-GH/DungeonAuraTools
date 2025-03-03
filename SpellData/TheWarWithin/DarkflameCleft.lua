local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.DarkflameCleft = {
    groupName = "[DC",
    zoneId = "2303", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1210, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.DarkflameCleft.Bosses


bosses.boss1 = { --	Ol' Waxbeard
    EncounterId = "2829", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
       
    }
}
bosses.boss2 = { --	Blazikon  
    EncounterId = "2826", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
       
    }
}
bosses.boss3 = { --	The Candle King 
    EncounterId = "2787", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        
    }
}

bosses.boss4 = { --	The Darkness
    EncounterId = "2788", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        -- add spells
        
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        
    },
}
