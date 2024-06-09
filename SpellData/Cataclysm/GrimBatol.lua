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
        
    },
}
