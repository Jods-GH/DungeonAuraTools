local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}

JDT.SpellList.Seasons = JDT.SpellList.Seasons or {}

local seasons = JDT.SpellList.Seasons

seasons.current = {
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

