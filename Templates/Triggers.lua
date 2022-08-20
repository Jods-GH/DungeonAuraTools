local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.Triggers = JDT.Templates.Triggers  or {}

JDT.Templates.Triggers.ActivationTypes = {
    und = "all",
    oder = "any",
    custom = "custom",
}

JDT.Templates.Triggers.ActivationTemplate = {
    activeTriggerMode = -10, -- default value? idk what it does but needs to be included
    disjunctive = "custom", -- JDT.Templates.Triggers.ActivationTypes
} 

JDT.Templates.Triggers.CustomActivationTemplate = {
	["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
}

JDT.Templates.Triggers.BuffTypes= {
    buff = "HELPFUL",
    debuff = "HARMFUL",
}
JDT.Templates.Triggers.Buffs = {
        trigger = {
            type = "aura2",
            subeventSuffix = "_CAST_START",
            event = "Health",
            unit = "player", -- unit to track the debuff on
            spellIds = {
            },
            names = {
            },
            subeventPrefix = "SPELL",
            useName = true,
            auranames = { -- spellid from aura names
                "12345", -- [1]
            },
            debuffType = "HARMFUL", -- if buff or debuff
        },
        untrigger = {
        },
    }




    JDT.Templates.Triggers.Cast = {
        trigger = {
            type = "unit",
            use_absorbHealMode = true,
            use_absorbMode = true,
            event = "Cast",
            unit = "nameplate", -- the unit to track the casts one
            use_spellId = true,
            spellId = 5555,  -- spellid of the buff to track
            use_unit = true,
            debuffType = "HELPFUL",
        },
        untrigger = {
        },
    }