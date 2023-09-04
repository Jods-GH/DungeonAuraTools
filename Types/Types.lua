local _, JDT = ...

JDT.Types = JDT.Types  or {}

JDT.Types.AuraIcon = "AuraIcon"
JDT.Types.AuraBar = "AuraBar"

setmetatable(JDT.Types, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})