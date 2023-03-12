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
    unitHealth = "UnitHealth",
    combatlog = "CombatLog", 
    monsterYell = "MonsterYell",
    unitSpellcastSucceeded = "UnitSpellcastSucceeded"
}
setmetatable(JDT.Templates.Triggers.TriggerTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

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
setmetatable(JDT.Templates.Triggers.BuffTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

JDT.Templates.Triggers.UnitTypes = {
    player= "player",
    boss = "boss",
    nameplate = "nameplate",
    smartGroup = "group",
}

setmetatable(JDT.Templates.Triggers.UnitTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

JDT.Templates.Triggers.CombatLogTypes = {
    summon = "_SUMMON",
}

setmetatable(JDT.Templates.Triggers.CombatLogTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

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
            },
            debuffType = "HARMFUL", -- if buff or debuff
            useMatch_count = true,
            match_countOperator = ">",
			match_count = "0",
            ignoreSelf = true,
            
        },
        untrigger = {
        },
    }




    JDT.Templates.Triggers.Cast = {
        trigger = {
            type = "unit",
            event = "Cast",
            unit = "nameplate", -- the unit to track the casts one ["SmartGroup","Boss","Player","Nameplate"]
            use_spellId = false,
            spellId = nil,  -- spellid of the buff to track
            use_unit = true,
            subeventSuffix = "_CAST_START",
            spellIds = {},
			names = {},
			subeventPrefix = "SPELL",
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
            unit = "player",
            use_percentpower = true, -- if it should be checked for percentpower
            percentpower_operator = "<", -- what operator to use 
            percentpower = "", -- the percent to check against
            debuffType = "HELPFUL",
            subeventSuffix = "_CAST_START",
            spellIds = {},
			names = {},
			subeventPrefix = "SPELL",
        },
        untrigger = {
        },
    }

    JDT.Templates.Triggers.UnitHealth = {
        trigger = {
            -- use_npcId = true, -- if npc id should be used
            -- npcId = "", -- npc id to use
            type = "unit",
            use_absorbHealMode = true,
            subeventSuffix = "_CAST_START",
            use_absorbMode = true,
            event = "Health",
            subeventPrefix = "SPELL",
            spellIds = {
            },
            names = {
            },
            use_unit = true, -- if it should check for unit type
            unit = "player", -- unit to check for
            debuffType = "HELPFUL",
            
        },
        untrigger = {
        },
    }
    JDT.Templates.Triggers.CombatLog = {
        trigger = {
            type = "combatlog",
            event = "Combat Log",
            subeventPrefix = "SPELL", -- subevent1
            subeventSuffix = "_CAST_SUCCESS", -- subevent2
            use_spellId = true,
            spellId = "", -- spellid
            duration = "10",
            spellIds = {},
			names = {},
			debuffType = "HELPFUL",
            unit = "player",
        },
        untrigger = {
        },
    }

    JDT.Templates.Triggers.MonsterYell = {
        trigger = {
            type = "event",
            event = "Chat Message",
            use_messageType = true,
            messageType = "CHAT_MSG_MONSTER_YELL",
            duration = "2.5",
           -- destName = "Rakun",
           -- use_destName = true,
           subeventSuffix = "_CAST_START",
           spellIds = {},
           names = {},
           subeventPrefix = "SPELL",
           debuffType = "HELPFUL",
           unit = "player",
        },
    untrigger = {
    },
}
JDT.Templates.Triggers.UnitSpellcastSucceeded = {
    trigger = {
        type = "event",
        duration = "30",
        event = "Spell Cast Succeeded",
        use_specific_unit = false,
        use_unit = false,
        unit = "boss1",
        spellId = "12345",
		use_spellId = true,
        subeventSuffix = "_CAST_START",
        spellIds = {},
        names = {},
        subeventPrefix = "SPELL",
        debuffType = "HELPFUL",
    },
    untrigger = {
    }, 
}

