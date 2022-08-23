local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}

JDT.SpellList.Shadowlands.Tazavesh = {
    groupName = "[TAZAVESH] ",
    zoneId = "g423", 
    Bosses = {}
}

JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss1 = { -- needs alot of additional stuff thats alot more work keep only these for now
    EncounterId = "2425",
    additionalName = "01 ",
    Auras = {
        
        [JDT.GroupTypes.SpinToWin] = {
            ArmedSecurity = {
                enabled = true,
                spellId = 346204,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346204",
                    }

                }
            },

        },
        [JDT.GroupTypes.ShieldInc] = {
            RotaryBodyArmor = {
                enabled = true,
                spellId = 347992, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "347992",
                    }

                }
            },

        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            InterogationInc = {
                enabled = true,
                spellId = 348350, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"347949","348350"},
                        extraUnit = "boss1"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "348350",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
        [JDT.GroupTypes.BossCastIntoBuff] ={
            FullyArmed = {
                enabled = true,
                spellId = 348128, -- for spellname etc
                RoleLoad = {
                    HEALER = true,
					TANK = true,
					DAMAGER = false,
                },
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "348128",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "348128",
                    },

                }
            }
        },
        [JDT.GroupTypes.BossCastIntoCollect] = {
            ImpoundContraband = {
                enabled = true,
                spellId = 345770, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "346006",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "345770",
                    },

                }
            }
        }
    }
}

JDT.SpellList.Shadowlands.Tazavesh.Bosses.boss2 = {
    EncounterId = "2441",
    additionalName = "02 ",
    Auras = {
        [JDT.GroupTypes.CollectBuff] ={
            GluttonousFeast = {
                enabled = true,
                spellId = 349627, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "349627",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "349627",
                    },

                }
            }
        },
    }
} 
