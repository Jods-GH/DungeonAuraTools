local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.PrioryOfTheSacredFlame = {
    groupName = "[POTSF",
    zoneId = "g446", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1267, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.PrioryOfTheSacredFlame.Bosses


bosses.boss1 = { --	Captain Dailcry
    EncounterId = "2847", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            PierceArmor = {
                enabled = true,
                spellId = 424414,
                showStacks = 2,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "424414",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "424414",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            DivineJudgment = {
                enabled = true,
                spellId = 448515,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "448515",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "448515",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            HurlSpear = {
                enabled = true,
                spellId = 447270,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "447270",
                    },
                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            BattleCry = {
                enabled = true,
                spellId = 424419,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "424419",
                    }
                }
            },
        },
        [JDT.GroupTypes.FeastCast] ={
            SavageMauling = {
                enabled = true,
                spellId = 447443, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "447443",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            FantheForge = {
                enabled = true,
                spellId = 427894, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "427894",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            HolyRadiance = {
                enabled = true,
                spellId = 424431, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "424431",
                    },
                }
            }
        },
    }
}
bosses.boss2 = { --	Baron Braunpyke
    EncounterId = "2835", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            HammerOfPurity = {
                enabled = true,
                spellId = 423062, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423062",
                    },
                }
            },
        },
        [JDT.GroupTypes.DisposeSpellAura] ={
            SacrificialPyre = {
                enabled = true,
                spellId = 446368, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "446368",
                    },
                    {
                        stacks = 3,
                        summonID = 446368,
                        duration = 30,
                        removeID = 446403
                    },
                }
            }
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            BurningLight = {
                enabled = true,
                spellId = 423051,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423051",
                    },

                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            VindictiveWrath = {
                enabled = true,
                spellId = 422969,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "422969",
                    }
                }
            },
        },
    }
}
bosses.boss3 = { --	Prioress Murrpray 
    EncounterId = "2848", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.LookAwayCast] = {
            BlindingLight = {
                enabled = true,
                spellId = 428169,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "428169",
                    }

                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            HolySmite = {
                enabled = true,
                spellId = 423536, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423536",

                    },

                }
            },
        },
        [JDT.GroupTypes.LaserCast] ={
            Purify= {
                enabled = true,
                spellId = 444546, -- for spellname etc
                extraName = " cast",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "444546",

                    },

                }
            }
        },
        [JDT.GroupTypes.LaserCombatlogSuccess ] = {
            Purify = {
                enabled = true,
                spellId = 444546,
                triggerData = {
                    {
                        duration = "5",
                        spellId = "444546",
                    }

                }
            },

        },
        [JDT.GroupTypes.BuffCast] = {
            InnerFire = {
                enabled = true,
                spellId = 444608,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "444608",
                    }
                }
            },
        },
        [JDT.GroupTypes.VoidCast] ={
            HolyFlame = {
                enabled = true,
                spellId = 451605, -- for spellname etc 
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451605",
                    },
                }
            }
        },
        [JDT.GroupTypes.BreakShieldIntoInterrupt] ={
            EmbracetheLight = {
                enabled = true,
                spellId = 423682, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423588",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "423682",
                    },

                }
            }
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.InteruptShout] = {
            DisruptingShout = {
                enabled = true,
                spellId = 427609,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427609",
                    },
                {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                },

                }
            },
        },
    },
}
