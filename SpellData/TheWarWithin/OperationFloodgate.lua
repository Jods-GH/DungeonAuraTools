local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.OperationFloodgate = {
    groupName = "[AK",
    zoneId = "g459", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1298, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.OperationFloodgate.Bosses


bosses.boss1 = { --	Big M.O.M.M.A.
    EncounterId = "3020", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
       
    }
}
bosses.boss2 = { --	Demolition Duo
    EncounterId = "3019", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
       
    }
}
bosses.boss3 = { --	Swampface
    EncounterId = "3053", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        
    }
}

bosses.boss4 = { --	Geezle Gigazap
    EncounterId = "3054", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
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
