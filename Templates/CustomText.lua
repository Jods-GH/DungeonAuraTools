local _, JDT = ...

JDT.Templates = JDT.Templates  or {}

JDT.Templates.CustomText = JDT.Templates.CustomText  or {}
JDT.Templates.CustomTextTemplates = JDT.Templates.CustomTextTemplates or {}
JDT.Templates.CustomTextGenerator = JDT.Templates.CustomTextGenerator or {}

JDT.Templates.CustomText.DurationStacks = "DurationStacks"
JDT.Templates.CustomText.StacksPerUnit = "StacksPerUnit"

setmetatable(JDT.Templates.CustomText, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

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
