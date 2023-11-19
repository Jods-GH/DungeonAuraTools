local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.BattleForAzeroth = JDT.SpellList.BattleForAzeroth or {}
JDT.SpellList.BattleForAzeroth.Dungeons = JDT.SpellList.BattleForAzeroth.Dungeons or {}


JDT.SpellList.BattleForAzeroth.Dungeons.AtalDazar= {
    groupName = "[AD",
    zoneId = "g275", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 968, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.BattleForAzeroth.Dungeons.AtalDazar.Bosses

bosses.boss1 = {  -- Priestess Alun'za
    EncounterId = "2084", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = { 

        
        [JDT.GroupTypes.SoakCastSafeWithDebuff ] ={
            Transfusion = {
                enabled = true,
                spellId = 255577, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "255577",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "255558",
                    },
                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            GildedClaws = {
                enabled = true,
                spellId = 255579,
                type = JDT.AuraTypes.purge,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "255579",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            MoltenGold  = {
                enabled = true,
                spellId = 255582, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "255582",
                    },
                }
            }
        },
        [JDT.GroupTypes.KillAddAlive] = {
            SpiritofGold = {
                enabled = true,
                spellId = 259205,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "131009",
                    },
                }
            },
        },
    }
}
bosses.boss2 = {  -- Vol'kaal
    EncounterId = "2085", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
       
        [JDT.GroupTypes.HpCompare] ={
            ReanimationTotem = {
                enabled = true,
                spellId = 250190, -- for spellname etc
                triggerData = {
                    {
                        spellIdList = {},
                        extraUnit = ""
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.target,
                        npcID = "125977",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        npcID = "125977",
                    },
                }
            }
        },
        [JDT.GroupTypes.HealCast] = {
            Reanimate= {
                enabled = true,
                spellId = 259531,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259531",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            ToxicLeap = {
                enabled = true,
                spellId = 250258,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "250258",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigAoeCast] = {
            NoxiousStench = {
                enabled = true,
                spellId = 259572,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259572",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            LingeringNausea  = {
                enabled = true,
                spellId = 267523, -- for spellname etc
                type = JDT.AuraTypes.disease,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "250372",
                    },
                }
            }
        },
    }
}
bosses.boss3 = {  -- Rezan
    EncounterId = "2086", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.AddSummonCast] = {
            AncientDryBones = {
                enabled = true,
                spellId = 255365,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "255365",
                    },
                }
            },
            BoneQuake = {
                enabled = true,
                spellId = 260683,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "260683",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            Pursuit = {
                enabled = true,
                spellId = 257407,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "257407",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "257407",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "257407",
                    },
                }
            },
        },
        [JDT.GroupTypes.LosCast] ={
            TerrifyingVisage = {
                enabled = true,
                spellId = 255371, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "255371",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            SerratedTeeth  = {
                enabled = true,
                spellId = 255434, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "255434",
                    },
                }
            }
        },
    }
}
bosses.boss4 = {  -- Yazma
    EncounterId = "2087", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.AddSummonCast] = {
            Soulrend = {
                enabled = true,
                spellId = 259190,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "259190",
                    }
                }
            },
            EchosOfShadra = {
                enabled = true,
                spellId = 250050,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "250050",
                    }
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            Soulfeast  = {
                enabled = true,
                spellId = 256577, -- for spellname etc
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "256577",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCast] = {
            Skewer = {
                enabled = true,
                spellId = 249919,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "249919",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableCastIntoCurseDot] = {
            WrackingPain = {
                enabled = true,
                spellId = 250096,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "250096",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "250096",
                    }
                }
            },
        }, 
        
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = { 
        [JDT.GroupTypes.TargetedCast] = {
            FerventStrike = {
                enabled = true,
                spellId = 256138,
                type = JDT.AuraTypes.stun,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "256138",
                    }
                }
            },
            Soulburn = {
                enabled = true,
                spellId = 254959,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "254959",
                    }
                }
            },
            DeadeyeAim = {
                enabled = true,
                spellId = 256846,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "256846",
                    }
                }
            },
            Quickshot = {
                enabled = true,
                spellId = 256864,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "256864",
                    }
                }
            },
            ShieldBash = {
                enabled = true,
                spellId = 273185,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "273185",
                    }
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            VenomBlast = {
                enabled = true,
                spellId = 252923, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "252923",
                    },
                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            FanaticsRage = {
                enabled = true,
                spellId = 255824,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "255824",
                    },
                }
            },
        },
        [JDT.GroupTypes.Charge] = {
            MercilessAssault = {
                enabled = true,
                spellId = 253239,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "253239",
                    }
                }
            },
            FrenziedCharge = {
                enabled = true,
                spellId = 255567,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "255567",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableCCImmunityCast] = {
            BwonsamdisMantle= {
                enabled = true,
                spellId = 253544,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "253544",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            MendingWord = {
                enabled = true,
                spellId = 253517,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "253517",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            FieryEnchant = {
                enabled = true,
                spellId = 253583,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "253583",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            WildFire = {
                enabled = true,
                spellId = 253562,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "253562",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "253562",
                    },
                }
            },
            RendingMaul = {
                enabled = true,
                spellId = 255814,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "255814",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "255814",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff] = {
            VenomfangStrike = {
                enabled = true,
                spellId = 252687,
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "252687",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "252687",
                    },

                }
            },
        },
        [JDT.GroupTypes.SoakCastSafeWithDebuff ] ={
            Transfusion = {
                enabled = true,
                spellId = 260666, -- for spellname etc
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "260666",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "255558",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableAoeFear] ={
            TerrifyingScreech= {
                enabled = true,
                spellId = 255041, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "255041",
                    },
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            WildThrash = {
                enabled = true,
                spellId = 256882, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "256882",
                    },
                }
            },
        },
        [JDT.GroupTypes.HealCast] = {
            DinoMight= {
                enabled = true,
                spellId = 256849,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "256849",
                    },
                }
            },
        },
        [JDT.GroupTypes.MinusDmgTakenCCable] = {
            BulwarkofJuju = {
                enabled = true,
                spellId = 253721,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "253721",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableCastIntoCurseHex] = {
            UnstableHex = {
                enabled = true,
                spellId = 252781,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "252781",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "252781",
                    }
                }
            },
        },
    }
}