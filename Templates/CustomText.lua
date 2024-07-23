local _, JDT = ...

JDT.Templates = JDT.Templates  or {}

JDT.Templates.CustomText = JDT.Templates.CustomText  or {}
JDT.Templates.CustomTextTemplates = JDT.Templates.CustomTextTemplates or {}
JDT.Templates.CustomTextGenerator = JDT.Templates.CustomTextGenerator or {}

JDT.Templates.CustomText.DurationStacks = "DurationStacks"
JDT.Templates.CustomText.StacksPerUnit = "StacksPerUnit"
JDT.Templates.CustomText.TooltipProgress = "TooltipProgress"

setmetatable(JDT.Templates.CustomText, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

JDT.Templates.CustomTextTemplates.TooltipProgress = function(ProgressInfo)
    local tooltipNumber = ProgressInfo.tooltip;
    local inverse = ProgressInfo.inverse;
    local onHideCode = "aura_env.maximumValue = 0"
    return JDT.Templates.CustomTextGenerator.ProgressInfoAutoMax(tooltipNumber,inverse), onHideCode
end

JDT.Templates.CustomTextGenerator.ProgressInfoAutoMax = function(tooltipNumber,inverse)
    local durationFunction; 
    -- special handling incase we want the progress to be inverted
    if(inverse) then
        durationFunction = "aura_env.maximumValue - aura_env.state.tooltip"..tooltipNumber..", aura_env.maximumValue,true"
    else
        durationFunction= "aura_env.state.tooltip"..tooltipNumber..", aura_env.maximumValue,true"
    end
    return "function() \n if aura_env.state and aura_env.state.tooltip"..tooltipNumber.." then\n        if not aura_env.maximumValue or aura_env.maximumValue == 0 or aura_env.maximumValue < aura_env.state.tooltip"..tooltipNumber.." then \n            aura_env.maximumValue = aura_env.state.tooltip"..tooltipNumber.." \n        end\n        aura_env.region:SetDurationInfo("..durationFunction..")  \n   end \n end"    
end

JDT.Templates.CustomTextTemplates.DurationStacks = function(maxProgress)
    return JDT.Templates.CustomTextGenerator.ProgressInfo(maxProgress,"aura_env.state.stacks")
end

JDT.Templates.CustomTextGenerator.ProgressInfo = function(maxProgress,state)
    return "function() \n if aura_env.state and "..state.." then \n  aura_env.region:SetDurationInfo("..maxProgress.."-"..state..", "..maxProgress..", true)  \n  end \n  end"
end

JDT.Templates.CustomTextTemplates.StacksPerUnit = function(trigger)
    return JDT.Templates.CustomTextGenerator.UnitStackInfo(trigger)
end
JDT.Templates.CustomTextGenerator.UnitStackInfo = function(trigger)
    return "function()\n if aura_env.states["..trigger.."] and aura_env.states["..trigger.."].totalStacks and aura_env.states["..trigger.."].unitCount then \n return Round(aura_env.states[2].totalStacks/aura_env.states[2].unitCount)\n end\nend"
end
