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
        [JDT.GroupTypes.Spiteful] = {
            Spiteful= {
                enabled = true,
                affixId = 123,
                spellId = 343553,
                triggerData = {
                    {
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "343553",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "350209",
                    },

                }
            },

        },
        
        [JDT.GroupTypes.Thundering] = {
            Thundering= {
                enabled = true,
                affixId = 132,
                spellId = 396411,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "396369",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "396364",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "396369",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "396364",
                    },

                }
            },

        },
        [JDT.GroupTypes.HealBuff] = {
            Sanguine = {
                enabled = true,
                affixId = 8,
                spellId = 226510,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "226510",
                    },

                }
            }, 
        },


        [JDT.GroupTypes.Dot] = {
            Bursting = {
                enabled = true,
                affixId = 11,
                spellId = 240443,
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "240443",
                    },

                }
            },
            Necrotic = {
                enabled = true,
                affixId = 4,
                spellId = 209858,
                showStacks = 1,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "209858",
                    },

                }
            },
        },

    }
}
