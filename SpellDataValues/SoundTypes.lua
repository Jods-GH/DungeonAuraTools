local _, JDT = ...

JDT.SoundTypes= JDT.SoundTypes or {}

JDT.SoundTypes.debuff = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg"
JDT.SoundTypes.frontal = "Interface\\Addons\\SharedMedia_Causese\\sound\\Front.ogg"
JDT.SoundTypes.avoid = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg"
JDT.SoundTypes.soon = "Interface\\Addons\\SharedMedia_Causese\\sound\\Soon.ogg"
JDT.SoundTypes.spread = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg"
JDT.SoundTypes.highEnergy = "Interface\\Addons\\SharedMedia_Causese\\sound\\High Energy.ogg"
JDT.SoundTypes.collect= "Interface\\Addons\\SharedMedia_Causese\\sound\\Collect.ogg"
JDT.SoundTypes.move = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg"
JDT.SoundTypes.dance = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dance.ogg"
JDT.SoundTypes.switch = "Interface\\Addons\\SharedMedia_Causese\\sound\\Switch.ogg"
JDT.SoundTypes.selfcd = "Interface\\Addons\\SharedMedia_Causese\\sound\\Selfcd.ogg"
JDT.SoundTypes.stack = "Interface\\Addons\\SharedMedia_Causese\\sound\\Stack.ogg"
JDT.SoundTypes.interrupt = "Interface\\Addons\\SharedMedia_Causese\\sound\\Interrupt.ogg"
JDT.SoundTypes.soak = "Interface\\Addons\\SharedMedia_Causese\\sound\\Soak.ogg"
JDT.SoundTypes.targeted = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg"
JDT.SoundTypes.orb = "Interface\\Addons\\SharedMedia_Causese\\sound\\Orb.ogg"
JDT.SoundTypes.cc = "Interface\\Addons\\SharedMedia_Causese\\sound\\CC.ogg"
JDT.SoundTypes.add = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg"
JDT.SoundTypes.adds = "Interface\\Addons\\SharedMedia_Causese\\sound\\Adds.ogg"
JDT.SoundTypes.aoe = "Interface\\Addons\\SharedMedia_Causese\\sound\\AoE.ogg"


setmetatable(JDT.SoundTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})