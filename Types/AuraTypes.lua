local _, JDT = ...

---@type table<string, string> table that contains all aura types
JDT.AuraTypes = JDT.AuraTypes  or {}
---@type string aura type that is used for magic auras
JDT.AuraTypes.magic = "magic"
---@type string aura type that is used for curse auras
JDT.AuraTypes.curse = "curse"
---@type string aura type that is used for disease auras
JDT.AuraTypes.disease = "disease"
---@type string aura type that is used for poison auras
JDT.AuraTypes.poison = "poison"
---@type string aura type that is used for bleed auras
JDT.AuraTypes.bleed = "bleed"
---@type string aura type that is used for enrage auras
JDT.AuraTypes.enrage = "enrage"
---@type string aura type that is used for interrupt auras
JDT.AuraTypes.interrupt = "interrupt"
---@type string aura type that is used for root auras
JDT.AuraTypes.root = "root"
---@type string aura type that is used for snare auras
JDT.AuraTypes.snare = "snare"
---@type string aura type that is used for stun auras
JDT.AuraTypes.stun = "stun"
---@type string aura type that is used for purgable auras
JDT.AuraTypes.purge = "purge"

setmetatable(JDT.AuraTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

JDT.WeakAurasTypes = JDT.WeakAurasTypes or {}
for key in pairs(JDT.Templates.Type) do
    JDT.WeakAurasTypes[key] = key
end

setmetatable(JDT.WeakAurasTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})
