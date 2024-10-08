local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Cataclysm = JDT.SpellList.Cataclysm or {}
JDT.SpellList.Cataclysm.Dungeons = JDT.SpellList.Cataclysm.Dungeons or {}


JDT.SpellList.Cataclysm.Dungeons.GrimBatol = {
    groupName = "[GB",
    zoneId = "293", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(293)
    EncounterJournalID = 71, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.Cataclysm.Dungeons.GrimBatol.Bosses


bosses.boss1 = { --	General Umbriss
    EncounterId = "1051", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.Dot] = {
            BleedingWound = {
                 enabled = true,
                 spellId = 447261,
                 showStacks = 1,
                 type = JDT.AuraTypes.bleed,
                 triggerData = {
                     {
                         unit = JDT.Templates.Triggers.UnitTypes.player,
                         spellId = "447261",
                     }
                 }
             },
         },


        [JDT.GroupTypes.VoidCastWithDoubleSuccess] = {
            CommandingRoar = {
                enabled = true,
                spellId = 448847,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "448847",
                    },
                    {
                        spellId = "448847",
                        duration = "8"
                    },
                    {
                        spellId = "448847",
                        delay = 12,
                        duration = 8
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            RockSpike= {
                enabled = true,
                spellId = 448877, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "448877",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "448877",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "448877",
                    },

                }
            }
        },
    }
}
bosses.boss2 = { --	Forgemaster Throngus
    EncounterId = "1050", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.CastIntoKiteEnemyWhenBuffed] ={
            MoltenMace = {
                enabled = true,
                spellId = 449687, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "449687",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "449687",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDropVoid] ={
            MoltenSpark= {
                enabled = true,
                spellId = 449474, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "449474",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "449474",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "449474",
                    },

                }
            }
        },
        [JDT.GroupTypes.TankBusterCast] = {
            MoltenFlurry = {
                enabled = true,
                spellId = 449444,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "449444",
                    },
                }
            },
        },
    }
}
bosses.boss3 = { --	Drahga Shadowburner
    EncounterId = "1048", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.CastIntoDot] ={
            CurseofEntropy = {
                enabled = true,
                spellId = 450095, -- for spellname etc
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "450095",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "450095",
                    },
                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            InvocationOfShadowflame = {
                enabled = true,
                spellId = 448013,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "448013",
                    }
                }
            },
        },
        [JDT.GroupTypes.KillAddAlive] = {
            InvocationofFlameStalker = {
                enabled = true,
                spellId = 75218,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "40357",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            DevouringFlames = {
                enabled = true,
                spellId = 448105,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "448105",
                    }
                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            TwilightBuffet = {
                enabled = true,
                spellId = 456751, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "456751",
                    },
                }
            }
        },
    }
}
bosses.boss4 = { --	Erudax
    EncounterId = "1049", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            ShadowGale = {
                enabled = true,
                spellId = 449939, -- for spellname etct
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "449939",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            AbyssalCorruption = {
                enabled = true,
                spellId = 448057, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "448057",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "448057",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "448057",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            VoidSurge = {
                enabled = true,
                spellId = 450077, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "450077",
                    },
                }
            }
        },
        [JDT.GroupTypes.TankBusterCast] = {
            Crush = {
                enabled = true,
                spellId = 450100,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "450100",
                    },
                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            VoidInfusion = {
                enabled = true,
                spellId = 450088,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "450088",
                    }
                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            ShadowWound = {
                enabled = true,
                spellId = 456719,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "456719",
                    },
                }
            },
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.ShockWave] = {
            BlazingShadowflame = {
                enabled = true,
                spellId = 462216,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "462216",
                    }
                }
            },
        },

        [JDT.GroupTypes.TargetedCast] = {
            Corrupt = {
                enabled = true,
                spellId = 451395, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451395",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            ObsidianStomp = {
                enabled = true,
                spellId = 456696, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "456696",
                    },
                }
            },
            MindPiercer = {
                enabled = true,
                spellId = 451391, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451391",
                    },
                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            BrutalStrike = {
                enabled = true,
                spellId = 451364,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451364",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={

            ShadowflameBolt = {
                enabled = true,
                spellId = 76369, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "76369",
                    },
                }
            },
            EarthBolt = {
                enabled = true,
                spellId = 451261, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451261",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            ShadowlavaBlast = {
                enabled = true,
                spellId = 456711,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "456711",
                    },
                }
            },
            DarkEruption = {
                enabled = true,
                spellId = 456713,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "456713",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoAoeDebuffWithNextTick] ={
            Ascension = {
                enabled = true,
                spellId = 451387, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451387",
                    },
                    {
                        duration = "2",
                        spellId = "451898",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451387",
                    },

                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            TwilightFlame = {
                enabled = true,
                spellId = 451612,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451612",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "451612",
                    }
                }
            },
            ShadowflameSlash = {
                enabled = true,
                spellId = 451241,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451241",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "451241",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.KnockCast] ={
            UmbralWind = {
                enabled = true,
                spellId = 451939, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451939",
                    },
                }
            }
        },
        [JDT.GroupTypes.InterruptableSuppresion] ={ 
            SearMind = {
                enabled = true,
                spellId = 76711, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "76711",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            Rive = {
                enabled = true,
                spellId = 451378,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451378",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "451378",
                    },
                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            RecklessTactic = {
                enabled = true,
                spellId = 451379,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451379",
                    },
                }
            },
        },
        [JDT.GroupTypes.Charge] = {
            Decapitate = {
                enabled = true,
                spellId = 451067,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451067",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptableMobCastIntoPlayerDebuffSlow] ={
            MassTremor= {
                enabled = true,
                spellId = 451871, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451871",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "451871",
                    },
                }
            }
        },
        [JDT.GroupTypes.AbsorbDebuffWithProgress] ={
            EnvelopingShadowflame = {
                enabled = true,
                spellId = 451224, -- for spellname etc
                customTextInfo = { tooltip = 1, inverse = true},
                type = JDT.AuraTypes.curse,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "451224",
                    },
                }
            },
        },
        [JDT.GroupTypes.BigStackingAoeWithCD] = {
            MoltenWake = {
                enabled = true,
                spellId = 451965,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451965",
                    },
                    {
                        spellId = "451965",
                        duration = "23"

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451965",
                    },

                }
            },
        },
        [JDT.GroupTypes.TankBusterCast] = {
            LavaFist = {
                enabled = true,
                spellId = 451971,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "451971",
                    },
                }
            },
        },
    },
}
