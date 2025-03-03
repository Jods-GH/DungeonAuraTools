local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.CinderbrewMeadery = {
    groupName = "[CM",
    zoneId = "2335", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(2335)
    EncounterJournalID = 1272, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.CinderbrewMeadery.Bosses


bosses.boss1 = { --	Brew Master Aldryr
    EncounterId = "2900", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
       
    }
}
bosses.boss2 = { --	I'pa 
    EncounterId = "2929", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
       
    }
}
bosses.boss3 = { --	Benk Buzzbee
    EncounterId = "2931", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        
    }
}

bosses.boss4 = { --	Goldie Baronbottom 
    EncounterId = "2930", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
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
