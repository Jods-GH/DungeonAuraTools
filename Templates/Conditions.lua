local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.Conditions = JDT.Templates.Conditions or {}
JDT.Templates.Conditions.changes = JDT.Templates.Conditions.changes or {}

JDT.Templates.Conditions.ConditionsTemplate= {
        check = {     
        },
        changes = {
            
        },
}


JDT.Templates.Conditions.changes.text2 ={
        value = false, -- if checkbox is ticked or not aka what the property is changed to 
        property = "sub.3.text_visible", -- property to be changed (text needs to be 1 higher then actual text number cause background counts)
}
JDT.Templates.Conditions.changes.text3 ={
        value = false, -- if checkbox is ticked or not aka what the property is changed to 
        property = "sub.4.text_visible", -- property to be changed (text needs to be 1 higher then actual text number cause background counts)
}


JDT.Templates.Conditions.simpleCheck = {
            trigger = 1, -- triggernumber to check
            variable = "show", -- if all of, any of or simple check
            value = 1, -- if the trigger should be true (1) or false (0)
}

JDT.Templates.Conditions.NumberCheck ={
                trigger = 1, -- the triggernumber to check
				variable = "expirationTime", -- the variable to check for
				op = "<", -- the operator to check with
				value = "3", -- the value to compare the variable to
}


JDT.Templates.Conditions.AndCheck = {
        trigger = -2, -- -2 is the value for non specific trigger to check aka and/or checks
        variable = "AND",
        checks = {
        },
}

JDT.Templates.Conditions.OrCheck = {
        trigger = -2,
        variable = "OR",
        checks = {
        },
}

JDT.Templates.Conditions.ConditionGenerator = JDT.Templates.Conditions.ConditionGenerator or {}

JDT.Templates.Conditions.ConditionGenerator.ifTrigger1TrueThenHideText2andShowText3 = function () 
    local ConditionTemplate =  {}
    ConditionTemplate[1] = CopyTable(JDT.Templates.Conditions.ConditionsTemplate)
    ConditionTemplate[1].check = CopyTable(JDT.Templates.Conditions.simpleCheck)
    ConditionTemplate[1].check.value = 0

   
    local ConditionValueToChange1 = CopyTable(JDT.Templates.Conditions.changes.text2)
    ConditionValueToChange1.value = false
    local ConditionValueToChange2 = CopyTable(JDT.Templates.Conditions.changes.text3)
    ConditionValueToChange2.value = true
    table.insert(ConditionTemplate[1].changes,ConditionValueToChange1)
    table.insert(ConditionTemplate[1].changes,ConditionValueToChange2)
    return ConditionTemplate
end


   


JDT.Templates.Conditions.ConditionGenerator.advanced = function(ConditionTable)
    local GeneratedCondition = {}
    for ConditionKey,Conditionvalue in pairs(ConditionTable) do
        local ConditionTemplate = CopyTable(JDT.Templates.Conditions.ConditionsTemplate)
        ConditionTemplate.check = JDT.Templates.Conditions.ConditionGenerator[Conditionvalue.condition.type](Conditionvalue.condition)
        for ChangesKey, ChangesValue in pairs(Conditionvalue.changes) do
            DevTools_Dump(ChangesValue)
        ChangesTemplate =  CopyTable(JDT.Templates.Conditions.changes[ChangesValue.type])
        ChangesTemplate.value = ChangesValue.value
        table.insert(ConditionTemplate.changes,ChangesTemplate)
        end
        table.insert(GeneratedCondition,ConditionTemplate)
    end
    return GeneratedCondition
end

JDT.Templates.Conditions.ConditionGenerator.And = function(Condition)
    local GeneratedCheck = CopyTable(JDT.Templates.Conditions.AndCheck)
    for CheckKey,CheckValue in pairs(Condition.checks) do
        local check = JDT.Templates.Conditions.ConditionGenerator[CheckValue.type](CheckValue)
        table.insert(GeneratedCheck.checks,check)
    end
    return GeneratedCheck
end

JDT.Templates.Conditions.ConditionGenerator.Or = function(Condition)
    local GeneratedCheck = CopyTable(JDT.Templates.Conditions.OrCheck) 
    for CheckKey,CheckValue in pairs(Condition.checks) do
        local check = JDT.Templates.Conditions.ConditionGenerator[CheckValue.type](CheckValue)
        table.insert(GeneratedCheck.checks,check)
    end
    return GeneratedCheck
end

JDT.Templates.Conditions.ConditionGenerator.simplecheck = function(check)
    local checkTemplate = CopyTable(JDT.Templates.Conditions.simpleCheck)
    checkTemplate.trigger = check.trigger
    if check.value == true then -- converts true and false to 1 or 0 as expected from weakauras
        checkTemplate.value = 1
    else
        checkTemplate.value = 0
    end
    return checkTemplate
end

JDT.Templates.Conditions.ConditionGenerator.NumberCheck = function(check)
    local checkTemplate = CopyTable(JDT.Templates.Conditions.NumberCheck)
    checkTemplate.trigger = check.trigger
    checkTemplate.variable = check.variable
    checkTemplate.op = check.op
    checkTemplate.value = check.value

    return checkTemplate
end