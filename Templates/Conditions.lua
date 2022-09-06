local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.Conditions = JDT.Templates.Conditions or {}
JDT.Templates.Conditions.changes = JDT.Templates.Conditions.changes or {}

JDT.Templates.Conditions.ConditionsAdvancedGeneratorTemplate={
    {
        {
            condition={
                type = "And",
                checks = {
                    {
                        type = "simplecheck",
                        trigger= 1,
                        value = true,
                    },
                    {
                        type = "NumberCheck",
                        trigger= 3,
                        op = ">",
                        variable = "stacks",
                        value = "1",
                    },
                },
        },
            changes = {
                {
                    property = "sub.3.text_visible",
                    value = false,
                },
                {
                    property = "sub.4.text_visible",
                    value = true,
                },
                {
                    property = "sub.6.text_visible",
                    value = true,
                },
                {
                    property = "sub.7.border_visible",
                    value = true,
                },
            },
    }
}
}



JDT.Templates.Conditions.ConditionsTemplate= {
        check = {     
        },
        changes = {
            
        },
}


JDT.Templates.Conditions.changes ={
        value = false, -- if checkbox is ticked or not aka what the property is changed to 
        property = "sub.3.text_visible", -- property to be changed (text needs to be 1 higher then actual text number cause background counts)
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


JDT.Templates.Conditions.ConditionGenerator.advanced = function(ConditionTable)
    local GeneratedCondition = {}
    for ConditionKey,Conditionvalue in pairs(ConditionTable) do -- iterate through  provided table
        local ConditionTemplate = CopyTable(JDT.Templates.Conditions.ConditionsTemplate) -- copy conditions template
        ConditionTemplate.check = JDT.Templates.Conditions.ConditionGenerator[Conditionvalue.condition.type](Conditionvalue.condition) -- generate checks based on condition type 
        if Conditionvalue.linked == true then
            ConditionTemplate.linked = true
        end
        for ChangesKey, ChangesValue in pairs(Conditionvalue.changes) do -- iterates through changes
        local ChangesTemplate =  CopyTable(JDT.Templates.Conditions.changes) -- copy changes template
        ChangesTemplate.value = ChangesValue.value
        ChangesTemplate.property = ChangesValue.property
        table.insert(ConditionTemplate.changes,ChangesTemplate)
        end
        table.insert(GeneratedCondition,ConditionTemplate)
    end
    return GeneratedCondition
end

JDT.Templates.Conditions.ConditionGenerator.And = function(Condition)
    local GeneratedCheck = CopyTable(JDT.Templates.Conditions.AndCheck) -- copy from template
    for CheckKey,CheckValue in pairs(Condition.checks) do
        local check = JDT.Templates.Conditions.ConditionGenerator[CheckValue.type](CheckValue) -- generate check based of type (can call itself)
        table.insert(GeneratedCheck.checks,check)
    end
    return GeneratedCheck
end

JDT.Templates.Conditions.ConditionGenerator.Or = function(Condition)
    local GeneratedCheck = CopyTable(JDT.Templates.Conditions.OrCheck) 
    for CheckKey,CheckValue in pairs(Condition.checks) do -- copy from template
        local check = JDT.Templates.Conditions.ConditionGenerator[CheckValue.type](CheckValue) -- generate check based of type (can call itself)
        table.insert(GeneratedCheck.checks,check)
    end
    return GeneratedCheck
end

JDT.Templates.Conditions.ConditionGenerator.simplecheck = function(check)
    local checkTemplate = CopyTable(JDT.Templates.Conditions.simpleCheck) -- copy from template
    checkTemplate.trigger = check.trigger
    if check.value == true then -- converts true and false to 1 or 0 as expected from weakauras
        checkTemplate.value = 1
    else
        checkTemplate.value = 0
    end
    return checkTemplate
end

JDT.Templates.Conditions.ConditionGenerator.NumberCheck = function(check)
    local checkTemplate = CopyTable(JDT.Templates.Conditions.NumberCheck) -- copy from template
    checkTemplate.trigger = check.trigger
    checkTemplate.variable = check.variable
    checkTemplate.op = check.op
    checkTemplate.value = check.value

    return checkTemplate
end