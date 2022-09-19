local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Legion = JDT.SpellList.Legion or {}

JDT.SpellList.Legion.ReturnToKarazhan = {
    groupName = "[KARAZHAN ",
    zoneId = "g260", 
    EncounterJournalID = 860,
    Bosses = {}
}
local bosses = JDT.SpellList.Legion.ReturnToKarazhan.Bosses

bosses.boss1 = {  -- Opera Hall Wikket
    EncounterId = "1957", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = " - LOWER] 01 - 01 ",
    Auras = { 
        [JDT.GroupTypes.TrapSoak] ={
            MagicMagnificent = {
                enabled = true,
                spellId = 227776, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227776",

                    },

                }
            },
        },
        [JDT.GroupTypes.TrapSpawn] ={
            DefyGravity = {
                enabled = true,
                spellId = 227444, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227444",

                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            WonderusRadiance = {
                enabled = true,
                spellId = 227410,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227410",
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            FlashyBolt = {
                enabled = true,
                spellId = 227341, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227341",

                    },

                }
            },
            DrearyBolt = {
                enabled = true,
                spellId = 227543, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227543",

                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            SummonAssasins = {
                enabled = true,
                spellId = 227477,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227477",
                    },

                }
            },
        },

    }
}

bosses.boss2 = {  -- Opera Hall Westfall Story
    EncounterId = "1957", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = " - LOWER] 01 - 02 ",
    Auras = { 
        [JDT.GroupTypes.RunOut] ={
            BurningLegSweep = {
                enabled = true,
                spellId = 227568, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227568",

                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            BurningLegSweepDot = {
                enabled = true,
                spellId = 227568,
                extraName = " dot",
                type = JDT.AuraTypes.magic,
                triggerData = {
                   [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "227568",
                    },

                }
            },
            PoisonousShank = {
                enabled = true,
                spellId = 227325,
                type = JDT.AuraTypes.poison,
                triggerData = {
                   [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "227325",
                    },

                }
            },
        },
        [JDT.GroupTypes.StackCast] = {
            DashingFlameGale = {
                enabled = true,
                spellId = 227453,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227453",
                    }

                }
            },

        },
        [JDT.GroupTypes.CastIntoDebuffSpread] = {
            ThunderRitual = {
                enabled = true,
                spellId = 227777,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227777",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "227777",
                    }

                }
            },

        },
        [JDT.GroupTypes.WaveCast] = {
            WashAway = {
                enabled = true,
                spellId = 227783,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227783",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableBubblelCast] = {
            BubbleBlast = {
                enabled = true,
                spellId = 227420,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227420",
                    }
                }
            },
        },

    }
}

bosses.boss3 = {  -- Opera Hall Beauty and the Beast
    EncounterId = "1957", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = " - LOWER] 01 - 03 ",
    Auras = {
        
        [JDT.GroupTypes.CastIntoChaseWithBuffEffect] = {
            SevereDusting = {
                enabled = true,
                spellId = 228221,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "228221",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "228221",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "228221",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "228225",
                    },


                }
            },

        },
        [JDT.GroupTypes.SoakWithDebuff] ={
            Drenched = {
                enabled = true,
                spellId = 228013, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "228013",

                    },

                }
            }
        },
        [JDT.GroupTypes.InteruptableBigAoeCast] = {
            HeatWave = {
                enabled = true,
                spellId = 228025,
                triggerData = {
                    [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "228025",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            Leftovers = {
                enabled = true,
                spellId = 228019, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "228019",

                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            KaraKazham = {
                enabled = true,
                spellId = 232153,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "232153",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] = {
            BloodyJab = {
                enabled = true,
                spellId = 232135,
                type = "bleed",
                triggerData = {
                   [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "232135",
                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            FlashingForks = {
                enabled = true,
                spellId = 232142,
                triggerData = {
                  [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "232142",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            DentArmor = {
                enabled = true,
                spellId = 227985,
                triggerData = {
                    [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227985",
                    },
                    [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "227985",
                    },

                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            DinnerBell = {
                enabled = true,
                spellId = 227987,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    [1] ={
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "227987",
                    },

                }
            },
        },
    }
}
bosses.boss4 = { -- Maiden of Virtue
    EncounterId = "1954", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = " - LOWER] 02 ",
    Auras = { 
        [JDT.GroupTypes.SoakCastSafeWithDebuff ] ={
            MassRepentance = {
                enabled = true,
                spellId = 227508, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227508",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "227848",

                    },

                }
            },
        },
        [JDT.GroupTypes.BreakShieldIntoInterrupt] ={
            HolyWrath = {
                enabled = true,
                spellId = 227823, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss, --cast
                        spellId = "227823",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss, --buff
                        spellId = "227817",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            SacredGround= {
                enabled = true,
                spellId = 227789, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227789",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "227789",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "227789",
                    },

                }
            }
        },
        [JDT.GroupTypes.Dot] = {
            SacredGround = {
                enabled = true,
                spellId = 227848,
                showStacks = 1,
                extraName = " dot",
                triggerData = {
                   [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "227848",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            HolyBolt = {
                enabled = true,
                spellId = 227809,
                triggerData = {
                  {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227809",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableTargetedCastIntoDmgTakenDebuff] = {
            HolyShock = {
                enabled = true,
                spellId = 227800,
                showStacks = 2,
                triggerData = {
                    [1] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "227800",
                    },
                    [2] =  {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "227800",
                    },

                }
            },
        },
       
    }
}
bosses.boss5 = { -- Attumen the Huntsman
    EncounterId = "1960", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = " - LOWER] 03 ",
    Auras = {
        [JDT.GroupTypes.LosCast] ={
            MightyStomp = {
                enabled = true,
                spellId = 227363, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227363",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            Mezair= {
                enabled = true,
                spellId = 227339, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227339",

                    },

                }
            },
            SpectralCharge= {
                enabled = true,
                spellId = 227365, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227365",

                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            MortalStrike = {
                enabled = true,
                spellId = 227493,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227493",
                    }

                }
            },

        },
        [JDT.GroupTypes.HealthDeBuff ] = {
            MortalStrike = {
                enabled = true,
                spellId = 227493,
                extraName = " debuff",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227493",
                    }

                }
            },
        },
        [JDT.GroupTypes.StackCast] = {
            SharedSuffering = {
                enabled = true,
                spellId = 228852,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "228852",
                    }

                }
            },

        },
        [JDT.GroupTypes.DmgBuff] = {
            Enrage = {
                enabled = true,
                spellId = 228895,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "228895",
                    }

                }
            },

        },
        
   }
} 

bosses.boss6 = { -- Moroes
    EncounterId = "1961", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = " - LOWER] 04 ",
    Auras = {
        [JDT.GroupTypes.InteruptableCastIntoBuff] = {
            EmpoweredArms = {
                enabled = true,
                spellId = 227616,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227616",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227616",
                    },
        
                }
            },
        
        },
        [JDT.GroupTypes.SummonAxeCast] ={
            WhirlingEdge = {
                enabled = true,
                spellId = 227463, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227463",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.ShockWave] ={
            WillBreaker = {
                enabled = true,
                spellId = 227672, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227672",

                    },

                }
            },
        },
        [JDT.GroupTypes.SpinToWin] = {
            IronWhirlwind = {
                enabled = true,
                spellId = 227646,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227646",
                    }
                }
            },
        },
        [JDT.GroupTypes.ManaDrain] = {
            ManaDrain = {
                enabled = true,
                spellId = 227545,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227545",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            HealingStream = {
                enabled = true,
                spellId = 227578,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "227578",
                    },

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            Garrote = {
                enabled = true,
                spellId = 346844, -- for spellname etc
                showStacks = 1,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "227742",

                    },

                }
            }
        },
        [JDT.GroupTypes.ArmorDeBuff] = {
            SledgeHammer = {
                enabled = true,
                spellId = 299438,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "299438",
                    }

                }
            },
        },
   }
} 
