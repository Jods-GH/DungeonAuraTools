local _, JDT = ...

JDT.Templates = JDT.Templates  or {}

JDT.Templates.CustomTriggers = JDT.Templates.CustomTriggers  or {}

JDT.Templates.CustomTriggers.EnergyTrackSoonCast = function(triggerData)
    local spellIdList,extraUnit = triggerData.spellIdList,triggerData.extraUnit
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
    local PowerRegen = triggerData.PowerRegen or 3
    local castDelay = triggerData.castDelay or 1.3
    
   trigger.customTrigger = "function(s,e,unit,powerType,spellId)\n    if unit == \""..extraUnit.."\" then\n        if e == \"UNIT_POWER_UPDATE\" then\n            if not s[\"\"] then\n                local calculatedDuration = (100-UnitPower(unit))/"..PowerRegen.." + "..castDelay.."\n                s[\"\"] = {\n                    duration = calculatedDuration,\n                    expirationTime = GetTime()+calculatedDuration,\n                    progressType = \"timed\",\n                    autoHide = true,\n                    changed = true,\n                    show = true,\n                }\n                return true\n            else\n                local calculatedDuration = (100-UnitPower(unit))/3 + 1.3\n                if s[\"\"].expirationTime-GetTime() ~= calculatedDuration then\n                    s[\"\"].expirationTime = GetTime()+calculatedDuration\n                    s[\"\"].changed = true\n                    return true\n                end\n                \n            end\n        elseif e == \"UNIT_SPELLCAST_SUCCEEDED\" and "..spellIds.." then\n            if s[\"\"] then\n                s[\"\"].show = false\n                s[\"\"].changed = true\n                return true\n            end\n            \n        end\n    end\n    \nend\n\n\n"
   trigger.customEvents = "UNIT_POWER_UPDATE:"..extraUnit..", UNIT_SPELLCAST_SUCCEEDED"

    return trigger
end


JDT.Templates.CustomTriggers.TazaveshDispose = function()
    local trigger = {
        customTrigger = "function(s,event,_,subevent,_,_,_,_,_,destGUID,_,_,_,spellID)\n    \n    if subevent == \"SPELL_SUMMON\" and spellID == 346381 then\n        if not s[\"\"] then\n            \n            s[\"\"] = {\n                duration = 30,\n                expirationTime = GetTime()+30,\n                stacks = 1,\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            }\n        else\n            s[\"\"].stacks = s[\"\"].stacks+1\n            s[\"\"].changed = true\n            s[\"\"].expirationTime = GetTime()+30\n        end\n        \n        return true\n        \n        \n    elseif subevent == \"SPELL_AURA_REMOVED\" and spellID == 346296 then\n        \n        if s[\"\"] then\n            \n            s[\"\"].stacks = s[\"\"].stacks-1\n            if s[\"\"].stacks == 0 then\n                s[\"\"].show = false\n            end\n            s[\"\"].changed = true\n            return true \n        end\n        \n    end\nend",
        customEvents = "COMBAT_LOG_EVENT_UNFILTERED:Spell_Summon,COMBAT_LOG_EVENT_UNFILTERED:Spell_Aura_Removed",
        customVariables = "{\n    expirationTime = true,\n    duration = true,\n    stacks = true,\n}",
    }
    return trigger
end

JDT.Templates.CustomTriggers.CollapsingStar = function()
    local trigger = {
        customTrigger = "function(allstates, event, ...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID, _,_, auraType = ...\n        if (subEvent == \"SPELL_AURA_APPLIED\" or subEvent == \"SPELL_AURA_APPLIED_DOSE\")\n        and spellID == 350804\n        and destGUID == WeakAuras.myGUID\n        then\n            local state = allstates[\"star\"]\n            if state then\n                state.count = state.count - 1 \n                state.changed = true\n                if state.count <= 0 then\n                    state.show = false\n                end\n                return true\n            end\n        elseif subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 353635 then\n            allstates[\"star\"] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = 25,\n                expirationTime = 25 + GetTime(),\n                autoHide = true,\n                count = 4,\n            }\n            return true\n        end\n    end\nend",				
        customEvents = "CLEU:SPELL_CAST_SUCCESS:SPELL_AURA_APPLIED:SPELL_AURA_APPLIED_DOSE",
    }
    return trigger 
end

JDT.Templates.CustomTriggers.ShatteringStrike = function()
    local trigger = {
        customTrigger = 'function(allstates,event,unit, castGUID, spellID)\n if spellID == 172982 then\n if castGUID then\n local _,_,_,_,_,npc_id,_ = strsplit("-",castGUID)\n        local calculatedDuration = 0\n       if npc_id ==83026 then\n        if not aura_env.isSecond or aura_env.isSecond==false then\n          calculatedDuration = 6.9 \n     else\n         calculatedDuration = 13.8 \n        end \n      else \n      if not aura_env.isSecond or aura_env.isSecond==false then \n           calculatedDuration = 7.3 \n        else\n           calculatedDuration = 13.4 \n              end \n           end  \n        allstates[""] = {\n              duration = calculatedDuration, \n              expirationTime = GetTime()+calculatedDuration,\n             progressType = "timed", \n             autoHide = true, \n                 changed = true, \n                show = true, \n        } \n         return true \n      end \n      end \n    end',
        customEvents = "UNIT_SPELLCAST_START",
    }
    return trigger
end

JDT.Templates.CustomTriggers.Spiteful = function()
    local trigger = {
        customTrigger = 'function(s,e,...)\n    \n    if e == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local _,_,_,_,_,_,_,destGUID,_,_,_,_ = ...\n        if destGUID and s[destGUID] then\n            s[destGUID].show = false\n            s[destGUID].changed = true\n            aura_env.guidList= {}\n            return true  \n        elseif aura_env.guidList and aura_env.guidList[guid] then\n            for _,v in pairs(s) do\n                v.stacks = v.stacks-1\n            end\n            return true \n        end\n        \n    elseif e == \"FRAME_UPDATE\" and (not aura_env.last or aura_env.last < GetTime() - 0.2) then \n        aura_env.last = GetTime()\n        local list = C_NamePlate.GetNamePlates() -- get active nameplates\n        \n        if #list > 0 then\n            \n            local t2 = WeakAuras.GetTriggerStateForTrigger(aura_env.id, 2) --get debuffed units\n            for _, frame in ipairs(list) do\n                local unit = frame.namePlateUnitToken\n                if unit and UnitExists(unit) and t2[unit] then\n                    local guid = UnitGUID(unit)\n                    local _,_,_,_,_,npc_id,_ = strsplit(\"-\",guid)\n                    if guid and npc_id and not s[guid] and not aura_env.guidList[guid]\n                    and npc_id == \"174773\"\n                    and UnitIsUnit(unit..\"target\", \"player\")\n                    then\n                        local max_health = UnitHealthMax(unit);\n                        local health = UnitHealth(unit);\n                        local healthPercent = health/max_health\n                        local calculatedDuration = healthPercent/0.08\n                        \n                        s[guid] = {\n                            duration = calculatedDuration,\n                            expirationTime = GetTime()+calculatedDuration,\n                            progressType = \"timed\",\n                            autoHide = true,\n                            changed = true,\n                            show = true,\n                            unit = unit,\n                            guid = guid,\n                            index = 0, \n                            stacks = 0\n                        }\n                        --this functions as a queue; the oldest clones will be deleted first \n                        local statesAmount = 0\n                        for _,v in pairs(s) do\n                            statesAmount = statesAmount + 1\n                            \n                        end\n                        if statesAmount > (aura_env.config[\"SpitefulLimit\"]) then \n                            local shortestDuration = math.huge\n                            local shortestDurationState = nil\n                            for _,v in pairs(s) do\n                                local remainingDuration = v.expirationTime-GetTime()\n                                if remainingDuration < shortestDuration then\n                                    shortestDuration = remainingDuration\n                                    shortestDurationState = v.guid\n                                end\n                            end\n                            s[shortestDurationState].show = false\n                            s[shortestDurationState].changed = true\n                            aura_env.guidList[shortestDurationState] = true\n                            if aura_env.config[\"SpitefulLimit\"] == 1 then\n                                for _,v in pairs(s) do\n                                    v.stacks = v.stacks+1\n                                end\n                                \n                            end\n                            \n                        end\n                        \n                        \n                        return true\n                    end\n                end\n            end\n        end\n    end\nend\n\n\n\n\n\n',
        customEvents = "NAME_PLATE_UNIT_ADDED,  COMBAT_LOG_EVENT_UNFILTERED:UNIT_DIED FRAME_UPDATE",
    }
    return trigger
end

JDT.Templates.CustomTriggers.WashAway = function()
    local trigger = {
        customTrigger = "function(s,e,RunAmount,_,spellId) \n    if e == \"UNIT_SPELLCAST_START\" and spellId == 397783 then \n        s[\"\"] = { \n            duration = 3.3, \n            expirationTime = GetTime()+3.3,\n            progressType = \"timed\", \n            autoHide = true, \n            changed = true, \n            show = true, \n        } \n        C_Timer.After(3.3, function() WeakAuras.ScanEvents(\"JODS_WASH_AWAY_EVENT\",1) end) \n        return true \n    elseif e == \"JODS_WASH_AWAY_EVENT\" then \n        if RunAmount<3 then \n            s[\"\"] = { \n                duration = 5, \n                expirationTime = GetTime()+5, \n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            } \n            C_Timer.After(5, function() WeakAuras.ScanEvents(\"JODS_WASH_AWAY_EVENT\",RunAmount+1) end) \n            return true \n        end \n    end   \nend",
        customEvents = "UNIT_SPELLCAST_START:boss1, JODS_WASH_AWAY_EVENT",
    }
    return trigger
end