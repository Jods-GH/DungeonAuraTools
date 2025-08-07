local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}

JDT.SpellList.Seasons = JDT.SpellList.Seasons or {}

local seasons = JDT.SpellList.Seasons

seasons.current = {
    groupName = "The War Within Season 2",
    dungeons = {
         HallsOfAtonement= {
            expansion = "Shadowlands",
            dungeon = "HallsOfAtonement",   
         },
         Tazavesh = {
            expansion = "Shadowlands",
            dungeon = "Tazavesh",
         },
         OperationFloodgate = {
            expansion = "TheWarWithin",
            dungeon = "OperationFloodgate",
         },
         EcoDomeAldani={
            expansion = "TheWarWithin",
            dungeon = "EcoDomeAldani",
         },
         TheDawnbreaker={
            expansion = "TheWarWithin",
            dungeon = "TheDawnbreaker",   
         },
         AraKara={
            expansion = "TheWarWithin",
            dungeon = "AraKara",   
         },
         PrioryOfTheSacredFlame={
            expansion = "TheWarWithin",
            dungeon = "PrioryOfTheSacredFlame",   
         },
    }
}
--[[
seasons.previous = {
   groupName = "The War Within Season 1",
   dungeons = {
     MistOfTirnaScithe = {
           expansion = "Shadowlands",
           dungeon = "MistOfTirnaScithe",
        },
        NecroticWake = {
           expansion = "Shadowlands",
           dungeon = "NecroticWake",
        },
        SiegeOfBoralus= {
           expansion = "BattleForAzeroth",
           dungeon = "SiegeOfBoralus",   
        },
        GrimBatol={
           expansion = "Cataclysm",
           dungeon = "GrimBatol",   
        },
        AraKara={
           expansion = "TheWarWithin",
           dungeon = "AraKara",   
        },
        CityOfThreads={
           expansion = "TheWarWithin",
           dungeon = "CityOfThreads",   
        },
        TheDawnbreaker={
           expansion = "TheWarWithin",
           dungeon = "TheDawnbreaker",   
        },
        TheStonevault={
           expansion = "TheWarWithin",
           dungeon = "TheStonevault",   
        },
   }
}
]]
