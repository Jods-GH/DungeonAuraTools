local _, JDT = ...

JDT.Templates = JDT.Templates  or {}

JDT.Templates.CustomText = JDT.Templates.CustomText  or {}
JDT.Templates.CustomTextTemplates = JDT.Templates.CustomTextTemplates or {}
JDT.Templates.CustomTextGenerator = JDT.Templates.CustomTextGenerator or {}

JDT.Templates.CustomText.DurationStacks = "DurationStacks"

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
