local _, JDT = ...

JDT.AuraTypes = JDT.AuraTypes  or {}
JDT.AuraTypes.none= "none"
JDT.AuraTypes.magic = "magic"
JDT.AuraTypes.curse = "curse"
JDT.AuraTypes.disease = "disease"
JDT.AuraTypes.poison = "poison"
JDT.AuraTypes.bleed = "bleed"
JDT.AuraTypes.enrage = "enrage"
JDT.AuraTypes.interrupt = "interrupt"
JDT.AuraTypes.root = "root"
JDT.AuraTypes.snare = "snare"
JDT.AuraTypes.stun = "stun"
JDT.AuraTypes.purge = "purge"

setmetatable(JDT.AuraTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

JDT.AuraTypesForOptions = function()
    local returntable = {}
    for key, value in pairs(JDT.AuraTypes) do
        returntable[key] = JDT.getLocalisation(value)
    end
    return returntable
end