local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}


JDT.SpellList.Affixes = {
    groupName = "[Affixes]",
    instanceSizeType = "party",
    instanceDifficulty = "challenge",

    Auras = {
        
        [JDT.GroupTypes.Trader] = {
            BusyTrader = {
                enabled = true,
                spellId = 394754,
                triggerData = {
                    {
                        duration = "300",
                        spellId = "394754",
                    }

                }
            },

        },
             
        [JDT.GroupTypes.BargainAscendant] = {
            XalatathsBargainAscendant = {
                enabled = true,
                affixId = 148,
                spellId = 461904,
                triggerData = {
                    {
                        triggerNum = 2,
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "461904",
                    },

                }
            },
        },
        
         

    }
}
