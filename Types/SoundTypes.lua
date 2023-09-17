local _, JDT = ...

JDT.SoundTypes= JDT.SoundTypes or {}

JDT.SoundTypes.debuff = {
    name = "|cFFFF0000Debuff|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg";
    key = "debuff";
}

JDT.SoundTypes.frontal = {
    name = "|cFFFF0000Front|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Front.ogg";
    key = "frontal";
}
JDT.SoundTypes.avoid = {
    name = "|cFFFF0000Avoid|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg";
    key = "avoid";
}
JDT.SoundTypes.soon = {
    name = "|cFFFF0000Soon|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Soon.ogg";
    key = "soon";
}
JDT.SoundTypes.spread = {
    name = "|cFFFF0000Spread|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg";
    key = "spread";
}
JDT.SoundTypes.highEnergy = {
    name = "|cFFFF0000High Energy|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\High Energy.ogg";
    key = "highEnergy";
}
JDT.SoundTypes.collect= {
    name = "|cFFFF0000Collect|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Collect.ogg";
    key = "collect";
}
JDT.SoundTypes.move = {
    name = "|cFFFF0000Dont Move|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg";
    key = "move";
}
JDT.SoundTypes.dance = {
    name = "|cFFFF0000Dance|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dance.ogg";
    key = "dance";
}
JDT.SoundTypes.switch = {
    name = "|cFFFF0000Switch|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Switch.ogg";
    key = "switch";
}
JDT.SoundTypes.selfcd = {
    name = "|cFFFF0000Selfcd|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Selfcd.ogg";
    key = "selfcd";
}
JDT.SoundTypes.stack = {
    name = "|cFFFF0000Stack|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Stack.ogg";
    key = "stack";
}
JDT.SoundTypes.interrupt = {
    name = "|cFFFF0000Interrupt|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Interrupt.ogg";
    key = "interrupt";
}
JDT.SoundTypes.soak = {
    name = "|cFFFF0000Soak|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Soak.ogg";
    key = "soak";
}
JDT.SoundTypes.targeted = {
    name = "|cFFFF0000Targeted|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg";
    key = "targeted";
}
JDT.SoundTypes.orb = {
    name = "|cFFFF0000Orb|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Orb.ogg";
    key = "orb";
}
JDT.SoundTypes.cc = {
    name = "|cFFFF0000CC|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\CC.ogg";
    key = "cc";
}
JDT.SoundTypes.add = {
    name = "|cFFFF0000Add|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg";
    key = "add";
}
JDT.SoundTypes.adds = {
    name = "|cFFFF0000Adds|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Adds.ogg";
    key = "adds";
}
JDT.SoundTypes.aoe = {
    name = "|cFFFF0000AoE|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\AoE.ogg";
    key = "aoe";
}
JDT.SoundTypes.beam = {
    name = "|cFFFF0000Beam|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Beam.ogg";
    key = "beam";
}
JDT.SoundTypes.knock = {
    name = "|cFFFF0000Knock|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Knock.ogg";
    key = "knock";
}
JDT.SoundTypes.dodge = {
    name = "|cFFFF0000Dodge|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dodge.ogg";
    key = "dodge";
}
JDT.SoundTypes.stopcast = {
    name = "|cFFFF0000Stopcast|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Stopcast.ogg";
    key = "stopcast";
}
JDT.SoundTypes.stack = {
    name = "|cFFFF0000High Stacks|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Stack.ogg";
    key = "stack";
}
JDT.SoundTypes.hide = {
    name = "|cFFFF0000Hide|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Hide.ogg";
    key = "hide";
}
JDT.SoundTypes.bloodlust = {
    name = "|cFFFF0000Bloodlust|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Bloodlust.ogg";
    key = "bloodlust";
}
JDT.SoundTypes.melee = {
    name = "|cFFFF0000Melee|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Melee.ogg";
    key = "melee";
}
JDT.SoundTypes.turn = {
    name = "|cFFFF0000Turn|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Turn.ogg";
    key = "turn";
}
JDT.SoundTypes.breakshield = {
    name = "|cFFFF0000Break|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Break.ogg";
    key = "breakshield";
}
JDT.SoundTypes.dispell = {
    name = "|cFFFF0000Dispell|r";
    sound = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dispell.ogg";
    key = "dispell";
}

JDT.SoundDefaults = {}
for k,v in pairs(JDT.SoundTypes) do
    JDT.SoundDefaults[k]=v.name
end

setmetatable(JDT.SoundTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})