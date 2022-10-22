local _, JDT = ...

JDT.ExpansionValues = JDT.ExpansionValues or {}
JDT.ExpansionValues.Dragonflight = "https://wago.io/DF-Dungeons"
JDT.ExpansionValues.Shadowlands = "https://wago.io/SL-Dungeons"
JDT.ExpansionValues.BattleForAzeroth = "https://wago.io/BFA-Dungeons"
JDT.ExpansionValues.Legion = "https://wago.io/Legion-Dungeons"
JDT.ExpansionValues.WarlordOfDraenor = "https://wago.io/WOD-Dungeons"
JDT.ExpansionValues.MistOfPandaria = "https://wago.io/MOP-Dungeons"
JDT.ExpansionValues.Affixes = " "

setmetatable(JDT.ExpansionValues, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})