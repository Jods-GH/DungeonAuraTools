local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}

JDT.SpellList.Seasons = JDT.SpellList.Seasons or {}

local seasons = JDT.SpellList.Seasons

seasons.current = {
    groupName = "The War Within Season 2",
    dungeons = {
         Motherlode= {
            expansion = "BattleForAzeroth",
            dungeon = "Motherlode",   
         },
         OperationMechagon={
            expansion = "BattleForAzeroth",
            dungeon = "OperationMechagon",   
         },
         TheaterOfPain = {
            expansion = "Shadowlands",
            dungeon = "TheaterOfPain",
         },
         OperationFloodgate = {
            expansion = "TheWarWithin",
            dungeon = "OperationFloodgate",
         },
         DarkflameCleft={
            expansion = "TheWarWithin",
            dungeon = "DarkflameCleft",   
         },
         CinderbrewMeadery={
            expansion = "TheWarWithin",
            dungeon = "CinderbrewMeadery",   
         },
         TheRookery={
            expansion = "TheWarWithin",
            dungeon = "TheRookery",   
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
