local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Cataclysm = JDT.SpellList.Cataclysm or {}
JDT.SpellList.Cataclysm.Dungeons = JDT.SpellList.Cataclysm.Dungeons or {}


JDT.SpellList.Cataclysm.Dungeons.ThroneoftheTides = {
    groupName = "[TOT",
    zoneId = "322", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 65, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Cataclysm.Dungeons.ThroneoftheTides.Bosses


bosses.boss1 = { --	Lady Naz'jar
    EncounterId = "1045", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
    }
}
bosses.boss2 = { --	Commander Ulthok, the Festering Prince
    EncounterId = "1044", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        
    }
}
bosses.boss3 = { --	Mindbender Ghur'sha
    EncounterId = "1046", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        
    }
}
bosses.boss4 = { --	Ozumat
    EncounterId = "1047", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        
    }
}

