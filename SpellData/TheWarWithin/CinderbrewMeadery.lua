local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.CinderbrewMeadery = {
    groupName = "[CM",
    zoneId = "2335", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(2335)
    EncounterJournalID = 1272, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.CinderbrewMeadery.Bosses


bosses.boss1 = { --	Brew Master Aldryr
    EncounterId = "2900", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.TargetedKnockCast] ={
            KegSmash = {
                enabled = true,
                spellId = 432229, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "432229",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            ThrowCinderbrew = {
                enabled = true,
                spellId = 432179,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "432179",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "432179",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.Frontal] = {
            BlazingBelch = {
                enabled = true,
                spellId = 432198,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "432198",
                    }

                }
            },
        },
        [JDT.GroupTypes.DisposeSuccessWithStacks] ={
            HappyHour = {
                enabled = true,
                spellId = 442525, -- for spellname etc
                showStacks = 2,
                HideCooldownText = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "442525",
                    },
                    {
                        summonID = 442525,
                        duration = 30,
                        removeID = 431896,
                        stacks = 5,
                    },
                }
            }
        },
        [JDT.GroupTypes.SpellcastSucceededDance] ={
            CrawlingBrawl = {
                enabled = true,
                spellId = 445180, -- for spellname etc
                triggerData = {
                    {
                        spellId = "445243",
                        duration = "3"
                    },

                }
            }
        },
    }
}
bosses.boss2 = { --	I'pa 
    EncounterId = "2929", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            SpoutingStout = {
                enabled = true,
                spellId = 439365, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439365",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedKnockCast] ={
            BottomsUppercut = {
                enabled = true,
                spellId = 439031, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439031",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            BurningFermentation  = {
                enabled = true,
                spellId = 439202, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "439202",
                    },
                }
            }
        },
    }
}
bosses.boss3 = { --	Benk Buzzbee
    EncounterId = "2931", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            HoneyMarinade = {
                enabled = true,
                spellId = 440134, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "440134",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "440134",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "440134",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            ShreddingSting = {
                enabled = true,
                spellId = 438971,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "438971",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "438971",
                    },

                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            FlutteringWing = {
                enabled = true,
                spellId = 439524, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "439524",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            BeeVenom  = {
                enabled = true,
                spellId = 441397, -- for spellname etc
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "441397",
                    },
                }
            }
        },
        [JDT.GroupTypes.DisposeUnitDied] ={
            SnackTime = {
                enabled = true,
                spellId = 438025, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "438025",
                    },
                    {
                        summonID = 438651,
                        duration = 30,
                        removeID = 219005
                    },
                }
            }
        },
    }
}

bosses.boss4 = { --	Goldie Baronbottom 
    EncounterId = "2930", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.DisposeSuccessRemove] ={
            SpreadtheLove = {
                enabled = true,
                spellId = 435560, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "435560",
                    },
                    {
                        summonID = 452705,
                        duration = 45,
                        removeID = 435797
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            CashCannon = {
                enabled = true,
                spellId = 436592,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "436592",
                    }

                }
            },
        },
        [JDT.GroupTypes.CastIntoCastSuccessDance] ={
            CinderBOOM= {
                enabled = true,
                spellId = 435797, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "435797",

                    },
                    {
                        spellId = "435797",
                        duration = "5"

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            BurningRicochet= {
                enabled = true,
                spellId = 436637, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "436637",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "436637",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "436637",
                    },

                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            CinderingWounds  = {
                enabled = true,
                spellId = 435789, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "435789",
                    },
                }
            }
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.Dot] ={
            MeanMug  = {
                enabled = true,
                spellId = 434773, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "434773",
                    },
                }
            },
            BeeVenom  = {
                enabled = true,
                spellId = 441397, -- for spellname etc
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "441397",
                    },
                }
            }
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            BoilingFlames = {
                enabled = true,
                spellId = 437721, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "437721",
                    },
                }
            },
            FreeSamples = {
                enabled = true,
                spellId = 441242, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "441242",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            EruptingInferno = {
                enabled = true,
                spellId = 437956, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "437956",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "437956",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "437956",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            CinderbrewToss = {
                enabled = true,
                spellId = 434706,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "434706",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            ThrowChair = {
                enabled = true,
                spellId = 434756,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "434756",
                    }
                }
            },
            BeeZooka = {
                enabled = true,
                spellId = 441119,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "441119",
                    }
                }
            },
            Shoot = {
                enabled = true,
                spellId = 456891,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "456891",
                    }
                }
            },
            FinalSting = {
                enabled = true,
                spellId = 443487,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "443487",
                    }
                }
            },
        },
        [JDT.GroupTypes.VolleyIntoDot] ={
            VolatileKeg = {
                enabled = true,
                spellId = 463218, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "463218",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "463218",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            HighSteaks = {
                enabled = true,
                spellId = 435004, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "435004",
                    },
                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            Tenderize = {
                enabled = true,
                spellId = 463206, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "463206",
                    },
                }
            },
        },
        [JDT.GroupTypes.ExplodingCast] = {
            ExplosiveBrew = {
                enabled = true,
                spellId = 441518,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "441518",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            RejuvenatingHoney = {
                enabled = true,
                spellId = 441627,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "441627",
                    },

                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            RecklessDelivery= {
                enabled = true,
                spellId = 448619, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "448619",
                    },
                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            SpillDrink = {
                enabled = true,
                spellId = 441214,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "441214",
                    },
                }
            },
            BeeStialWrath = {
                enabled = true,
                spellId = 441351,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "441351",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            ShreddingSting = {
                enabled = true,
                spellId = 441410,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "441410",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "441410",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            Beeswax = {
                enabled = true,
                spellId = 442589, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "442589",
                    },
                }
            },
        },
        [JDT.GroupTypes.BigStackingAoeWithCD] = {
            SwarmingSurprise = {
                enabled = true,
                spellId = 442995,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "442995",
                    },
                    {
                        spellId = "442995",
                        duration = "0"
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "442995",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            HoneyVolley = {
                enabled = true,
                spellId = 440687, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "440687",
                    },
                }
            },
        },
        [JDT.GroupTypes.Jump] ={
            DownwardTrend = {
                enabled = true,
                spellId = 439467, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "439467",
                    },
                }
            },
        },
    },
}
