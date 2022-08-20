local _, JDT = ...

JDT.Templates = JDT.Templates  or {}

JDT.Templates.Conditions = JDT.Templates.Conditions or {}

JDT.Templates.Conditions.ConditionsTemplate= {
    {
        check = {     
        },
        changes = {
            {
                value = false, -- if checkbox is ticked or not aka what the property is changed to 
                property = "sub.3.text_visible", -- property to be changed
            }, 
        },
    }
}

JDT.Templates.Conditions.simpleCheck = {
        check = {
            trigger = 1, -- triggernumber to check
            variable = "show", -- if all of any of or simple check
            value = 1, -- if the trigger should be true (1) or false (0)
        },
}



JDT.Templates.Conditions.AndCheck = {
    check = {
        trigger = -2, -- -2 is the value for non specific trigger to check aka and/or checks
        variable = "AND",
        checks = {
            {
                trigger = 1,
                variable = "show",
                value = 1,
            }, 
            {
                trigger = 2,
                variable = "show",
                value = 0,
            }, -- [2]
        },
}

JDT.Templates.Conditions.OrCheck = {
    check = {
        trigger = -2,
        variable = "OR",
        checks = {
            {
                trigger = 1,
                variable = "show",
                value = 1,
            }, -- [1]
            {
                trigger = 2,
                variable = "show",
                value = 0,
            }, -- [2]
        },
    },
   
}