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
        [JDT.GroupTypes.DisposeSpellDamage] ={
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
                        removeID = 1218149,
                        additionalSpellID = 422969,
                        additionalStacks = 2,
                        additionalUnit = "boss1"
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
                        duration = "10",
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
        [JDT.GroupTypes.ShieldCast] ={
            Defend = {
                enabled = true,
                spellId = 427342, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427342",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            Impale = {
                enabled = true,
                spellId = 427621,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "427621",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "427621",
                    }
                }
            },
            BlazingStrike = {
                enabled = true,
                spellId = 435165,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "435165",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "435165",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.TargetedCast] = {
            Shoot = {
                enabled = true,
                spellId = 427629,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427629",
                    }
                }
            },
            PotShot = {
                enabled = true,
                spellId = 462859,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "462859",
                    }
                }
            },
            Purification = {
                enabled = true,
                spellId = 448787,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "448787",
                    }
                }
            }
        },
        [JDT.GroupTypes.TrapSpawn] ={
            Caltrops = {
                enabled = true,
                spellId = 453461, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "453461",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoToppableDot] ={
            Pounce = {
                enabled = true,
                spellId = 446776, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "446776",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "427635",
                    },
                }
            }
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            GreaterHeal = {
                enabled = true,
                spellId = 427356,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427356",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            HolySmite = {
                enabled = true,
                spellId = 427357, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427357",
                    },
                }
            },
            Fireball = {
                enabled = true,
                spellId = 427469, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427469",
                    },
                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            InnerFire = {
                enabled = true,
                spellId = 428916,
                type = JDT.AuraTypes.purge,
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "428916",
                    }
                }
            },
            SealOfFlame = {
                enabled = true,
                spellId = 427950,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427950",
                    }
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            Flamestrike = {
                enabled = true,
                spellId = 427484,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427484",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedKnockCast] ={
            ShieldSlam = {
                enabled = true,
                spellId = 448485, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "448485",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            Thunderclap = {
                enabled = true,
                spellId = 448492, -- for spellname etc
                type = JDT.AuraTypes.snare,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "448492",
                    },
                }
            },
            FanTheForge = {
                enabled = true,
                spellId = 427894, -- for spellname etc
                type = JDT.AuraTypes.snare,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427894",
                    },
                }
            },
            HeatWave = {
                enabled = true,
                spellId = 427897, -- for spellname etc
                type = JDT.AuraTypes.snare,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427897",
                    },
                }
            },
            HolyRadiance = {
                enabled = true,
                spellId = 424431, -- for spellname etc
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "424431",
                    },
                }
            },
            SacredToll = {
                enabled = true,
                spellId = 448791, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "448791",
                    },
                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            BurstOfLight = {
                enabled = true,
                spellId = 427601, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "427601",
                    },
                }
            },
            BrutalSmash = {
                enabled = true,
                spellId = 424621, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "424621",
                    },
                }
            },
            Consecration = {
                enabled = true,
                spellId = 424429, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "424429",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCastIntoDot] ={
            LungingStrike = {
                enabled = true,
                spellId = 424423, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "424423",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "424426",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedStunCast] = {
            Cinderblast = {
                enabled = true,
                spellId = 424420,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "424420",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            EmberStorm = {
                enabled = true,
                spellId = 424462, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "424462",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            FireballVolley = {
                enabled = true,
                spellId = 444743,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "444743",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoAoeDebuffWithNextTick] ={
            RadiantFlame = {
                enabled = true,
                spellId = 451763, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451763",
                    },
                    {
                        duration = "0.5",
                        spellId = "451763",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451763",
                    },

                }
            }
        },
    },
}
