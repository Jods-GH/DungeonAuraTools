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

JDT.Templates.CustomTriggers.Dispose = function(triggerData)
    local summonID,duration,removeID = triggerData.summonID,triggerData.duration,triggerData.removeID
    local trigger = {
        customTrigger = "function(s,event,_,subevent,_,_,_,_,_,destGUID,_,_,_,spellID)\n    \n    if subevent == \"SPELL_SUMMON\" and spellID == "..summonID.." then\n        if not s[\"\"] then\n            \n            s[\"\"] = {\n                duration = "..duration..",\n                expirationTime = GetTime()+"..duration..",\n                stacks = 1,\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            }\n        else\n            s[\"\"].stacks = s[\"\"].stacks+1\n            s[\"\"].changed = true\n            s[\"\"].expirationTime = GetTime()+"..duration.."\n        end\n        \n        return true\n        \n        \n    elseif subevent == \"SPELL_AURA_REMOVED\" and spellID == "..removeID.." then\n        \n        if s[\"\"] then\n            \n            s[\"\"].stacks = s[\"\"].stacks-1\n            if s[\"\"].stacks == 0 then\n                s[\"\"].show = false\n            end\n            s[\"\"].changed = true\n            return true \n        end\n        \n    end\nend",
        customEvents = "COMBAT_LOG_EVENT_UNFILTERED:Spell_Summon,COMBAT_LOG_EVENT_UNFILTERED:Spell_Aura_Removed",
        customVariables = "{\n    expirationTime = true,\n    duration = true,\n    stacks = true,\n}",
    }
    return trigger
end

JDT.Templates.CustomTriggers.DisposeApplied = function(triggerData)
    local summonID,duration,removeID = triggerData.summonID,triggerData.duration,triggerData.removeID
    local trigger = {
        customTrigger = "function(s,event,_,subevent,_,_,_,_,_,destGUID,_,_,_,spellID)\n    \n    if subevent == \"SPELL_SUMMON\" and spellID == "..summonID.." then\n        if not s[\"\"] then\n            \n            s[\"\"] = {\n                duration = "..duration..",\n                expirationTime = GetTime()+"..duration..",\n                stacks = 1,\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            }\n        else\n            s[\"\"].stacks = s[\"\"].stacks+1\n            s[\"\"].changed = true\n            s[\"\"].expirationTime = GetTime()+"..duration.."\n        end\n        \n        return true\n        \n        \n    elseif subevent == \"SPELL_AURA_APPLIED\" and spellID == "..removeID.." then\n        \n        if s[\"\"] then\n            \n            s[\"\"].stacks = s[\"\"].stacks-1\n            if s[\"\"].stacks == 0 then\n                s[\"\"].show = false\n            end\n            s[\"\"].changed = true\n            return true \n        end\n        \n    end\nend",
        customEvents = "COMBAT_LOG_EVENT_UNFILTERED:Spell_Summon,COMBAT_LOG_EVENT_UNFILTERED:Spell_Aura_Applied:player",
        customVariables = "{\n    expirationTime = true,\n    duration = true,\n    stacks = true,\n}",
    }
    return trigger
end

JDT.Templates.CustomTriggers.DisposeSuccessWithStacks = function(triggerData)
    local summonID,duration,removeID,stacks = triggerData.summonID,triggerData.duration,triggerData.removeID,triggerData.stacks
    local trigger = {
        customTrigger = "function(s,event,_,subevent,_,_,_,_,_,destGUID,_,_,_,spellID)\n    \n    if subevent == \"SPELL_CAST_SUCCESS\" and spellID == "..summonID.." then\n        if not s[\"\"] then\n            \n            s[\"\"] = {\n                duration = "..duration..",\n                expirationTime = GetTime()+"..duration..",\n                stacks = "..stacks..",\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            }\n        else\n            s[\"\"].stacks = s[\"\"].stacks+"..stacks.."\n            s[\"\"].changed = true\n            s[\"\"].expirationTime = GetTime()+"..duration.."\n        end\n        \n        return true\n        \n        \n    elseif subevent == \"SPELL_AURA_REMOVED\" and spellID == "..removeID.." then\n        \n        if s[\"\"] then\n            \n            s[\"\"].stacks = s[\"\"].stacks-1\n            if s[\"\"].stacks == 0 then\n                s[\"\"].show = false\n            end\n            s[\"\"].changed = true\n            return true \n        end\n        \n    end\nend",
        customEvents = "COMBAT_LOG_EVENT_UNFILTERED:SPELL_CAST_SUCCESS,COMBAT_LOG_EVENT_UNFILTERED:Spell_Aura_Removed",
        customVariables = "{\n    expirationTime = true,\n    duration = true,\n    stacks = true,\n}",
    }
    return trigger
end

JDT.Templates.CustomTriggers.DisposeSpellAura = function(triggerData)
    local summonID,duration,removeID,stacks  = triggerData.summonID,triggerData.duration,triggerData.removeID, triggerData.stacks
    local trigger = {
        customTrigger = "function(s,event,_,subevent,_,_,_,_,_,destGUID,_,_,_,spellID)\n    \n    if subevent == \"SPELL_CAST_SUCCESS\" and spellID == "..summonID.." then\n        if not s[\"\"] then\n            \n            s[\"\"] = {\n                duration = "..duration..",\n                expirationTime = GetTime()+"..duration..",\n                stacks = "..stacks..",\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            }\n        else\n            s[\"\"].stacks = s[\"\"].stacks+"..stacks.."\n            s[\"\"].changed = true\n            s[\"\"].expirationTime = GetTime()+"..duration.."\n        end\n        \n        return true\n        \n        \n    elseif (subevent == \"SPELL_AURA_APPLIED\" or subevent == \"SPELL_AURA_APPLIED_DOSE\") and spellID == "..removeID.." then\n        \n        if s[\"\"] then\n            \n            s[\"\"].stacks = s[\"\"].stacks-1\n            if s[\"\"].stacks == 0 then\n                s[\"\"].show = false\n            end\n            s[\"\"].changed = true\n            return true \n        end\n        \n    end\nend",
        customEvents = "COMBAT_LOG_EVENT_UNFILTERED:SPELL_CAST_SUCCESS,COMBAT_LOG_EVENT_UNFILTERED:SPELL_AURA_APPLIED, COMBAT_LOG_EVENT_UNFILTERED:SPELL_AURA_APPLIED_DOSE",
        customVariables = "{\n    expirationTime = true,\n    duration = true,\n    stacks = true,\n}",
    }
    return trigger
end

JDT.Templates.CustomTriggers.DisposeUnitDied = function(triggerData)
    local summonID,duration,removeID = triggerData.summonID,triggerData.duration,triggerData.removeID
    local trigger = {
        customTrigger = "function(s,event,_,subevent,_,_,_,_,_,destGUID,_,_,_,spellID)\n    if subevent == \"SPELL_SUMMON\" and spellID == "..summonID.." then\n        if not s[\"\"] then\n            s[\"\"] = {\n                duration = "..duration..",\n                expirationTime = GetTime()+"..duration..",\n                stacks = 1,\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            }\n        else\n            s[\"\"].stacks = s[\"\"].stacks+1\n            s[\"\"].changed = true\n            s[\"\"].expirationTime = GetTime()+"..duration.."\n        end\n        return true\n    elseif subevent == \"UNIT_DIED\" then \n        local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit(\"-\",destGUID) \n        if npc_id == "..removeID.." then\n            if s[\"\"] then\n                \n                s[\"\"].stacks = s[\"\"].stacks-1\n                if s[\"\"].stacks == 0 then                \n                    s[\"\"].show = false      \n                end\n                s[\"\"].changed = true\n                return true \n            end\n        end\n        \n    end\n    \nend",
        customEvents = "COMBAT_LOG_EVENT_UNFILTERED:Spell_Summon,COMBAT_LOG_EVENT_UNFILTERED:UNIT_DIED",
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

JDT.Templates.CustomTriggers.Afflicted = function()
    local trigger = {
        customTrigger = "function(s, event, ...) -- credits to sune https://wago.io/S2Affixes\n if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\nlocal subEvent = select(2, ...)\nif subEvent == \"SPELL_CAST_START\" then\nlocal spellID = select(12, ...)\nlocal guid = select(4, ...)\nif spellID == 409492 then\ns[guid] = {\n show = true,\n changed = true, \n autoHide = true,\n progressType = \"timed\",\n duration = 10,\n expirationTime = 10 + GetTime(), \nicon = 237555,  \n} \n return true \n end \n elseif subEvent == \"SPELL_DISPEL\" or subEvent == \"SPELL_STOLEN\" then \n  local spellID = select(15, ...) \n local guid = select(8, ...)\n if (spellID == 409465 or spellID == 409470 or spellID == 409472) and s[guid] then\n s[guid].changed = true\ns[guid].show = false \nreturn true \nend \nend\n elseif event == \"UNIT_SPELLCAST_STOP\"  and ... then\nlocal unit, _, spellID = ... \nlocal guid = UnitGUID(unit)\nif spellID == 409492 and s[guid] then\n s[guid].changed = true\n s[guid].show = false\n  return true\n  end\nend\nend",
        customEvents = "CLEU:SPELL_CAST_START:SPELL_DISPEL:SPELL_STOLEN UNIT_SPELLCAST_STOP",
    }
    return trigger
end

JDT.Templates.CustomTriggers.RestlessSoul= function()
    local trigger = {
        customTrigger = 'function(s,event,unit,...) \n if event == "UNIT_SPELLCAST_SUCCEEDED" and select(2,...) == 196078 then\n s[""] = { \n duration = 16,\n expirationTime = GetTime()+16,\n progressType = "timed",\n autoHide = true,\n changed = true,\n show = true,\n stacks = 7,\n }\n aura_env.guidList = {}\n return true\n elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then\n local _,_,_,_,_,_,destGUID,_,_,_,_ = ...\n if destGUID then\n local _,_,_,_,_,npc_id,_ = strsplit("-",destGUID)\n if npc_id == "99664" and not aura_env.guidList[destGUID] then\n if s[""] then\n s[""].stacks = s[""].stacks-1\n s[""].changed = true\n if s[""].stacks == 0 then\n s[""].show = false\n end\n end\n aura_env.guidList[destGUID] = true\n return true \n end\n end\n end\n end',
        customEvents = "UNIT_SPELLCAST_SUCCEEDED:boss1 , COMBAT_LOG_EVENT_UNFILTERED:UNIT_DIED",
    }
    return trigger
end

JDT.Templates.CustomTriggers.HpCompare = function()
    local trigger = {
        customVariables = "{\n    value = true,\n    isLowest = \"bool\",\n    isHighest = \"bool\",\n    lowestDif = \"number\",\n    highestDif = \"number\",\n}",
        customEvents = "TRIGGER:2:3",
        customTrigger = "function(allstates,event, triggerNum, triggerStates)\n    if event == \"TRIGGER\" and triggerNum then\n        if triggerNum == 2 then\n            if triggerStates[\"\"] then\n                aura_env.TriggerInfo.target = triggerStates[\"\"].percenthealth\n            else\n                allstates[\"\"] = {\n                    show = false,\n                    changed = true,\n                }\n                aura_env.TriggerInfo.target = 0\n                return true\n            end\n            \n        elseif triggerNum == 3 then\n            for k,v in pairs(triggerStates) do\n                if UnitIsUnit(\"target\", k) then\n                    aura_env.TriggerInfo.bosses[k] = nil\n                else\n                    aura_env.TriggerInfo.bosses[k] = v.percenthealth                    \n                end\n            end\n        end\n        if aura_env.TriggerInfo.target and aura_env.TriggerInfo.target> 0 and next(aura_env.TriggerInfo.bosses)then\n            local hplist = {}\n            for k,v in pairs(aura_env.TriggerInfo.bosses) do\n                table.insert(hplist,v)\n            end\n            \n            local lowest = math.min(unpack(hplist))\n            local highest = math.max(unpack(hplist))\n            allstates[\"\"] = {\n                show = true,\n                changed = true,\n                progressType = \"static\",\n                value = aura_env.TriggerInfo.target,\n                total = 100,\n                icon = 538571,\n                autoHide = true,\n                isLowest = aura_env.TriggerInfo.target<lowest,\n                isHighest = aura_env.TriggerInfo.target>highest,\n                lowestDif = lowest-aura_env.TriggerInfo.target,\n                highestDif = highest-aura_env.TriggerInfo.target,\n                DifToHighest = aura_env.TriggerInfo.target-highest\n            }\n            return true\n        end\n    end\nend\n\n\n",
		customInit = "aura_env.TriggerInfo = {}\naura_env.TriggerInfo.target = 0\naura_env.TriggerInfo.bosses = {}",			
        customFinish = "aura_env.TriggerInfo = {}\naura_env.TriggerInfo.target = 0\naura_env.TriggerInfo.bosses = {}",	
    }
    return trigger
end


JDT.Templates.CustomTriggers.TargetChangeChecker = function(triggerData)
    local spellIdList = triggerData.spellIdList
    local trigger = {
        customTrigger = "",
        customEvents = "",
    }
    local spellIdTable = "{"
    for k in pairs(spellIdList) do
        if k ~= 1 then
            spellIdTable=spellIdTable.." , "
        end
        spellIdTable = spellIdTable..spellIdList[k]
    end
    spellIdTable = spellIdTable.."}"
    
   trigger.customTrigger = "  function(allstates, event, unit,castGuid,spellId2)     \n if event == \"UNIT_TARGET\" \n and unit \n and UnitExists(unit) \n and not UnitIsUnit(unit..\"target\", \"player\")  \n then  \n    local _,_,_,startMS,endMS,_,_,_,spellId = UnitCastingInfo(unit)  \n    local guid = UnitGUID(unit) \n    local spellIdList = "..spellIdTable.." \n    if spellIdList  \n    and (spellId and spellIdList [spellId] or spellId2 and spellIdList[spellId2])  \n    and guid \n    and not allstates[guid] then \n        allstates[guid] = { \n            show = true,  \n            changed =  true, \n           progressType = \"timed\",  \n            duration = 3, \n            expirationTime = GetTime()+3, \n            unit = unit..\"target\", \n            autoHide = true, \n        } \n        return true \n    end  \n    end \n end"
   trigger.customEvents = "UNIT_TARGET UNIT_SPELLCAST_START"

    return trigger
end
   

JDT.Templates.CustomTriggers.AmountOfCasts = function (triggerData)
    local triggerNum = triggerData.triggerNum
    local trigger = {
        customTrigger = "",
        customEvents = "",
    }
    trigger.customEvents = "TRIGGER:"..triggerNum
    trigger.customTrigger = "function(allstates, event, triggerNum, triggerStates)\n    if event == \"TRIGGER\" and triggerNum ==2 then\n        local lastExpiration = GetTime()\n        local firststate\n        local stacks = 0 \n        for _, state in pairs(triggerStates) do  \n            if state.expirationTime > lastExpiration  then \n                lastExpiration = state.expirationTime \n            end \n            if not firststate then  \n                firststate = state  \n            end  \n            stacks = stacks+1 \n        end \n        if not allstates[\"\"] then \n            if firststate then \n                allstates[\"\"] = {\n                    show = true, \n                    changed = true,\n                    progressType = \"timed\",\n                    duration = firststate.duration , \n                    expirationTime = lastExpiration,\n                    autoHide = true,\n                    name = firststate.name, \n                    icon = firststate.icon, \n                    stacks = stacks, \n                    index = firststate.index, \n                } \n            end \n        elseif stacks == 0 then \n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"].changed = true \n            allstates[\"\"].exprationTime = lastExpiration\n            allstates[\"\"].stacks =  stacks\n        end\n        return true\n    end\nend"
    return trigger
end
    
