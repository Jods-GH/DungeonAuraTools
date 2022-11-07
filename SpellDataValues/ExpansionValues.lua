local _, JDT = ...

JDT.ExpansionValues = JDT.ExpansionValues or {}
JDT.ExpansionValues.Dragonflight = { [1] = "https://wago.io/DF-Dungeons", [2] = LE_EXPANSION_DRAGONFLIGHT}
JDT.ExpansionValues.Shadowlands = { [1] = "https://wago.io/SL-Dungeons", [2] = 	LE_EXPANSION_SHADOWLANDS}
JDT.ExpansionValues.BattleForAzeroth = { [1] = "https://wago.io/BFA-Dungeons", [2] = LE_EXPANSION_BATTLE_FOR_AZEROTH}
JDT.ExpansionValues.Legion = { [1] = "https://wago.io/Legion-Dungeons", [2] = LE_EXPANSION_LEGION}
JDT.ExpansionValues.WarlordOfDraenor = { [1] = "https://wago.io/WOD-Dungeons", [2] = 	LE_EXPANSION_WARLORDS_OF_DRAENOR}
JDT.ExpansionValues.MistOfPandaria = { [1] = "https://wago.io/MOP-Dungeons", [2] = LE_EXPANSION_MISTS_OF_PANDARIA}
JDT.ExpansionValues.Affixes = { [1] = " "}

setmetatable(JDT.ExpansionValues, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})