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
        [JDT.GroupTypes.ToppableDot] = {
            BleedingWound = {
                 enabled = true,
                 spellId = 74846,
                 type = JDT.AuraTypes.bleed,
                 triggerData = {
                     {
                         unit = JDT.Templates.Triggers.UnitTypes.player,
                         spellId = "74846",
                     }
                 }
             },
         },
         [JDT.GroupTypes.Charge] = {
            Blitz = {
                enabled = true,
                spellId = 74670,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "74670",
                    }

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            GroundSiege = {
                enabled = true,
                spellId = 74634,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "74634",
                    },
                }
            },
        },
        [JDT.GroupTypes.SlowDot] = {
            ModgudsMalady = {
                enabled = true,
                spellId = 74837,
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "74837",
                    }

                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            ClawPuncture  = {
                enabled = true,
                spellId = 76507, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "76507",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCastWithSuccess] = {
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

                }
            },
        },
    }
}
bosses.boss2 = { --	Forgemaster Throngus
    EncounterId = "1050", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.RunOut] ={
            MightyStomp = {
                enabled = true,
                spellId = 382832, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "382832",
                    },
                }
            },
        },
        [JDT.GroupTypes.ShieldCast] ={
            PersonalPhalanx = {
                enabled = true,
                spellId = 74908, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "74908",
                    },
                }
            }
        },
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
        
    }
}
bosses.boss3 = { --	Drahga Shadowburner
    EncounterId = "1048", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.TargetedCast] = {
            BurningShadowbolt = {
                enabled = true,
                spellId = 75245,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "75245",
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
                        npcID = "40355",
                    },
                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            DevouringFlames = {
                enabled = true,
                spellId = 86840,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "86840",
                    }
                }
            },
        },
    }
}
bosses.boss4 = { --	Erudax
    EncounterId = "1049", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.VoidCast] = {
            BindingShadows = {
                enabled = true,
                spellId = 79466,
                type = JDT.AuraTypes.root,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "79466",
                    },

                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            FeebleBody = {
                enabled = true,
                spellId = 75792,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "75792",
                    },
                }
            },
        },
        [JDT.GroupTypes.KillAddChanneling] = {
            TwilightCorruption = {
                enabled = true,
                spellId = 75520, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "75520",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            UmbralMending = {
                enabled = true,
                spellId = 75763,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "75763",
                    },
                }
            },
            SiphonEssence = {
                enabled = true,
                spellId = 75755,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "75755",
                    },
                }
            },
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
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
