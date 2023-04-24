local _, JDT = ...

JDT.ExpansionValues = JDT.ExpansionValues or {}
JDT.ExpansionValues.Dragonflight = { [1] = "https://wago.io/DungeonAuras_Dragonflight", [2] = LE_EXPANSION_DRAGONFLIGHT, [3] = "Dragonflight",[4]="DF-Dungeons"}
JDT.ExpansionValues.Shadowlands = { [1] = "https://wago.io/DungeonAuras_Shadowlands", [2] = 	LE_EXPANSION_SHADOWLANDS, [3] = "Shadowlands",[4]="SL-Dungeons"}
JDT.ExpansionValues.BattleForAzeroth = { [1] = "https://wago.io/DungeonAuras_BattleForAzeroth", [2] = LE_EXPANSION_BATTLE_FOR_AZEROTH, [3] = "Battle for Azeroth",[4]="BFA-Dungeons"}
JDT.ExpansionValues.Legion = { [1] = "https://wago.io/DungeonAuras_Legion", [2] = LE_EXPANSION_LEGION, [3] = "Legion",[4]="Legion-Dungeons"}
JDT.ExpansionValues.WarlordOfDraenor = { [1] = "https://wago.io/DungeonAuras_WarlordOfDraenor", [2] = 	LE_EXPANSION_WARLORDS_OF_DRAENOR, [3] = "Warlords of Draenor",[4]="WOD-Dungeons"}
JDT.ExpansionValues.MistOfPandaria = { [1] = "https://wago.io/DungeonAuras_MistOfPandaria", [2] = LE_EXPANSION_MISTS_OF_PANDARIA,[3] = "Mists of Pandaria",[4]="MOP-Dungeons"} 
JDT.ExpansionValues.Cataclysm = { [1] = "https://wago.io/DungeonAuras_Cataclysm", [2] = LE_EXPANSION_CATACLYSM,[3] = "Cataclysm",[4]="CATA-Dungeons"} 
JDT.ExpansionValues.Affixes = { [1] = "https://wago.io/DungeonAuras_Affixes", [2] = "", [3] = "Affixes",[4]="Affixes"}

setmetatable(JDT.ExpansionValues, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})