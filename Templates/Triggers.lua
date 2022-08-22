local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.Triggers = JDT.Templates.Triggers  or {}

JDT.Templates.Triggers.ActivationTypes = {
    und = "all",
    oder = "any",
    custom = "custom",
}

JDT.Templates.Triggers.TriggerTypes = {
    buffs = "Buffs",
    cast = "Cast",
    tsu = "TSU",
    unitResource = "UnitResource",
}

JDT.Templates.Triggers.ActivationTemplate = {
    activeTriggerMode = -10, -- default value? idk what it does but needs to be included
    disjunctive = "custom", -- JDT.Templates.Triggers.ActivationTypes
} 

JDT.Templates.Triggers.CustomActivationTemplate = {
	customTriggerLogic = "function(t)\n    return t[1]\nend",
}

JDT.Templates.Triggers.BuffTypes= {
    buff = "HELPFUL",
    debuff = "HARMFUL",
}

JDT.Templates.Triggers.UnitTypes = {
    player= "Player",
    boss = "boss",
    nameplate = "nameplate",
    smartGroup = "SmartGroup",
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
            unit = "nameplate", -- the unit to track the casts one ["SmartGroup","Boss","Player","Nameplate"]
            use_spellId = true,
            spellId = 5555,  -- spellid of the buff to track
            use_unit = true,
            debuffType = "HELPFUL",
        },
        untrigger = {
        },
    }

    JDT.Templates.Triggers.TSU = {
        trigger = {
            type = "custom",
            subeventSuffix = "_CAST_START",
            customVariables = "", -- if custom Variables are used this needs to have the data for it
            event = "Health",
            names = {
            },
            custom = "", -- this is the actual tsu function
            events = "", -- this is the event that triggers the tsu
            spellIds = {
            },
            custom_type = "stateupdate",
            check = "event",
            subeventPrefix = "SPELL",
            unit = "player",
            debuffType = "HELPFUL",
        },
        untrigger = {
        },
    }

    JDT.Templates.Triggers.UnitResource = {
        trigger = {
            type = "unit",
            use_absorbHealMode = true,
            use_absorbMode = true,
            event = "Power",
            use_unit = true,
            unit = "",
            use_percentpower = true, -- if it should be checked for percentpower
            percentpower_operator = "<", -- what operator to use 
            percentpower = "", -- the percent to check against
            debuffType = "HELPFUL",
        },
        untrigger = {
        },
    }