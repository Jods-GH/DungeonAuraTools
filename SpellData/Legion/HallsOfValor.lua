local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}
JDT.SpellList.Legion.Dungeons = JDT.SpellList.Legion.Dungeons or {}


JDT.SpellList.Legion.Dungeons.HallsOfValor = {
    groupName = "[HOV",
    --zoneId = "g252", 
    EncounterJournalID = 721, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.Dungeons.HallsOfValor.Bosses

bosses.boss1 = { --hymdall
    EncounterId = "1805", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.Frontal] = {
            BloodlettingSweep = {
                enabled = true,
                spellId = 193092,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193092",
                    }

                }
            },

        },
        [JDT.GroupTypes.SummonAxeCast] ={
            DancingBlade = {
                enabled = true,
                spellId = 193235, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193235",
    
                    },
    
                }
            },
        },
        
        [JDT.GroupTypes.CastIntoCastStartDance] ={
            HornofValor = {
                enabled = true,
                spellId = 191284, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "191284",

                    },
                    [2] = {
                        spellId = "188404",
                        duration = "4"

                    },

                }
            }
        },
       
    }
}

bosses.boss2 = { --hyrja
    EncounterId = "1806", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.PlayerGroupDebuffSpread] ={
            ExpelLight= {
                enabled = true,
                spellId = 192067, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "192067",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "192067",

                    },

                }
            }
        },
        [JDT.GroupTypes.DmgBuff] = {
            MysticEmpowerment = {
                enabled = true,
                spellId = 192133,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = {"192133","192132"},
                    }

                }
            },

        },
        [JDT.GroupTypes.Dance] ={
            Sanctify = {
                enabled = true,
                spellId = 192307, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "192307",

                    },

                }
            }
        },
        [JDT.GroupTypes.ShockWave] = {
            ShieldofLight = {
                enabled = true,
                spellId = 192018,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "192018",
                    }

                }
            },

        },
        [JDT.GroupTypes.CastWithSafeBuff] = {
            EyeoftheStorm = {
                enabled = true,
                spellId = 200901,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200901",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "200901",
                    },
                    {
                        duration = "2",
                        spellId = "200902",
                    },
                }
            },
        },
       
    }
}

bosses.boss3 = { --fenryr
    EncounterId = "1807", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.InteruptShout] = {
            UnnervingHowl = {
                enabled = true,
                spellId = 196543,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "196543",
                    },
                {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            RavenousLeap = {
                enabled = true,
                spellId = 197558, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "197558",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "197558",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "197558",
                    },

                }
            }
        },
        [JDT.GroupTypes.PhaseChangeCast] = {
            LickingWounds = {
                enabled = true,
                spellId = 200561,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200561",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            ScentofBlood = {
                enabled = true,
                spellId = 196838,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "196838",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "196838",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "196838",
                    },


                }
            },

        },
       
    }
}

bosses.boss4 = { --skovald
    EncounterId = "1808", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.CastWithSafeBuff] = {
            Ragnarok = {
                enabled = true,
                spellId = 193826,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "193826",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193826",
                    },
                    {
                        duration = "9",
                        spellId = "193983",
                    },
                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            FelblazeRush= {
                enabled = true,
                spellId = 193659, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "193659",

                    },

                }
            },
        },
       
    }
}

bosses.boss5 = { -- odyn
    EncounterId = "1809", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 05 ",
    Auras = {
        [JDT.GroupTypes.SpellcastSucceededAvoid] ={
            SpearOfLight = {
                enabled = true,
                spellId = 198058, -- for spellname etc
                triggerData = {
                    {
                        spellId = "198396",
                        duration = "3"

                    },

                }
            }
        },
        [JDT.GroupTypes.SpellcastSucceededAdds] ={
            SummonStormforgedObliterator= {
                enabled = true,
                spellId = 201215, -- for spellname etc
                triggerData = {
                    {
                        spellId = "201221",
                        duration = "4"

                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptableKillAddWithStackingBuff] ={
            Surge= {
                enabled = true,
                spellId = 198750, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "198750",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199787",
                    },

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            RadiantTempest = {
                enabled = true,
                spellId = 198263, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198263",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            ShatterSpears = {
                enabled = true,
                spellId = 198077, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "198077",

                    },

                }
            },
            RunicBrand = {
                enabled = true,
                spellId = 197961, -- for spellname etc
                extraName = " inc",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "197961",

                    },

                }
            }
        },
        [JDT.GroupTypes.CarryingDeBuff] = {
            RunicBrand = {
                enabled = true,
                spellId = 197963,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "197963"
                    }

                }
            },

        },
       
    }
}
bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff] = {
            WickedDagger = {
                enabled = true,
                spellId = 199674,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199674",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "199674",
                    },

                }
            },
        },
       
        [JDT.GroupTypes.InteruptShout] = {
            UnrulyYell = {
                enabled = true,
                spellId = 199726,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199726",
                    },
                {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            Sever = {
                enabled = true,
                spellId = 199652,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199652",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "199652",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            CallAncestor = {
                enabled = true,
                spellId = 200969,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200969",
                    },

                }
            },
        },
        [JDT.GroupTypes.TrapSpawn] ={
            BearTrap = {
                enabled = true,
                spellId = 199341, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199341",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            BearTrap = {
                enabled = true,
                spellId = 199341, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                extraName = " dot",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "199341",

                    },

                }
            }
        },
        [JDT.GroupTypes.KnockCast] ={
            RumblingStomp= {
                enabled = true,
                spellId = 199090, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199090",

                    },

                }
            },
        },
        [JDT.GroupTypes.DodgeCast] = {
            Crackle = {
                enabled = true,
                spellId = 199805,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199805",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            ChargedPuls = {
                enabled = true,
                spellId = 210875, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "210875",

                    },

                }
            },
        },
        [JDT.GroupTypes.AvoidCombatLogSuccess] ={
            Thunderstrike = {
                enabled = true,
                spellId = 215430, -- for spellname etc
                triggerData = {
                    {
                        spellId = "215430",
                        duration = "3"

                    },

                }
            }
        },
        [JDT.GroupTypes.ShockWave] = {
            PenetratingShot = {
                enabled = true,
                spellId = 199210,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199210",
                    }

                }
            },

        },
        [JDT.GroupTypes.CastWithSafeBuff] = {
            EyeoftheStorm = {
                enabled = true,
                spellId = 200901,
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "200901",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "200901",
                    },
                    {
                        duration = "9",
                        spellId = "200902",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            Sanctify = {
                enabled = true,
                spellId = 192158, -- for spellname etc
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "192158",

                    },

                }
            }
        },
        [JDT.GroupTypes.ArmorDeBuff] = {
            BreachArmor = {
                enabled = true,
                spellId = 198944,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "198944",
                    }

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            MortalHew = {
                enabled = true,
                spellId = 199050,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "199050",
                    }

                }
            },
            LightningBreath = {
                enabled = true,
                spellId = 198888,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "198888",
                    }

                }
            },

        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            HolyRadiance = {
                enabled = true,
                spellId = 215433,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "215433",
                    },

                }
            },
            RuneofHealing = {
                enabled = true,
                spellId = 198934,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "198934",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigDotCast] = {
            Etch = {
                enabled = true,
                spellId = 198959,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "198959",
                    }

                }
            },

        },
        [JDT.GroupTypes.VoidCast] = {
            CracklingStorm = {
                enabled = true,
                spellId = 198892,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "198892",
                    },

                }
            },
        },


    }
}
