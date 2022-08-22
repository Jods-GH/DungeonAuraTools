local _, JDT = ...

JDT.Templates = JDT.Templates  or {}

JDT.Templates.CustomTriggers = JDT.Templates.CustomTriggers  or {}

JDT.Templates.CustomTriggers.EnergyTrackSoonCast = function(spellIdList,extraUnit)

    local trigger = {
        customTrigger = "",
        customEvents = "",
    }
    local spellIds = ""
    for k in pairs(spellIdList) do
        if k ~= 1 then
            spellIds=spellIds.." or "
        end
        spellIds = spellIds.."spellId == "..spellIdList[k]
    end
    
   trigger.customTrigger = "function(s,e,unit,powerType,spellId)\n    if unit == \""..extraUnit.."\" then\n        if e == \"UNIT_POWER_UPDATE\" then\n            if not s[\"\"] then\n                local calculatedDuration = (100-UnitPower(unit))/3 + 1.3\n                s[\"\"] = {\n                    duration = calculatedDuration,\n                    expirationTime = GetTime()+calculatedDuration,\n                    progressType = \"timed\",\n                    autoHide = true,\n                    changed = true,\n                    show = true,\n                }\n                return true\n            else\n                local calculatedDuration = (100-UnitPower(unit))/3 + 1.3\n                if s[\"\"].expirationTime-GetTime() ~= calculatedDuration then\n                    s[\"\"].expirationTime = GetTime()+calculatedDuration\n                    s[\"\"].changed = true\n                    return true\n                end\n                \n            end\n        elseif e == \"UNIT_SPELLCAST_SUCCEEDED\" and "..spellIds.." then\n            if s[\"\"] then\n                s[\"\"].show = false\n                s[\"\"].changed = true\n                return true\n            end\n            \n        end\n    end\n    \nend\n\n\n"
   trigger.customEvents = "UNIT_POWER_UPDATE:"..extraUnit..", UNIT_SPELLCAST_SUCCEEDED"

    return trigger
end
