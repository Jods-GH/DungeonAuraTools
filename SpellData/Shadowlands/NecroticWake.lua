local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}
JDT.SpellList.Shadowlands.Dungeons = JDT.SpellList.Shadowlands.Dungeons or {}


JDT.SpellList.Shadowlands.Dungeons.NecroticWake = {
    groupName = "[NW",
    zoneId = "g410", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1182, --https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.Shadowlands.Dungeons.NecroticWake.Bosses

bosses.boss1 = { -- Blightbone
    EncounterId = "2387",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.FrontalIntoDot] = {
            HeavingRetch = {
                enabled = true,
                spellId = 320596,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320596",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320596",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            FetidGas = {
                enabled = true,
                spellId = 328146, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "328146",
                    },
                }
            },
        },
        -- add spell
        [JDT.GroupTypes.CastIntoDot] ={
            CarrionEruption = {
                enabled = true,
                spellId = 320631, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "320631",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320631",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoChase] = {
            BloodHunger = {
                enabled = true,
                spellId = 320717,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "320717",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320717",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "320717",
                    },
                }
            },
        },
    }
}

bosses.boss2 = { --Amarth, The Harvester
    EncounterId = "2388",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.AddSummonCast] = {
            LandOfTheDead = {
                enabled = true,
                spellId = 321226,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "321226",
                    }
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            Chilled = {
                enabled = true,
                spellId = 328664, -- for spellname etc
                type = JDT.AuraTypes.magic,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "328664",
                    },
                }
            }
        },
        [JDT.GroupTypes.AvoidBigAoeIfAdd] ={
            FinalHarvest = {
                enabled = true,
                spellId = 321247, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "321247",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        npcID = "164427,164414,168246",

                    },

                }
            }
        },
        [JDT.GroupTypes.FrontalIntoDot] = {
            NecroticBreath = {
                enabled = true,
                spellId = 333489,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "333488",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "333492",
                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuff] = {
            UnholyFrenzy= {
                enabled = true,
                spellId = 320012,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320012",
                    },

                }
            },
        },
        -- add casts
        [JDT.GroupTypes.InteruptableVolley] = {
            FrostboltVolley = {
                enabled = true,
                spellId = 328667,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "328667",
                    },
                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            Frostbolt = {
                enabled = true,
                spellId = 333602, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "333602",

                    },

                }
            },
        },
    }
} 

bosses.boss3 = { --	Surgeon Stitchflesh
    EncounterId = "2389",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.AddSummonCast] = {
            AwakenCreation = {
                enabled = true,
                spellId = 320358,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320358",
                    }
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            Stitchneedle = {
                enabled = true,
                spellId = 320200,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320200",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320200",
                    }
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            EmbalmingIchor = {
                enabled = true,
                spellId = 327664,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "327664",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastWithDebuffTargetAnounce] ={
            SoulManipulation= {
                enabled = true,
                spellId = 322681, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322681",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "322681",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "322681",
                    },
                }
            },
        },
        [JDT.GroupTypes.DotHighStacksWarning] ={
            FesteringRot = {
                enabled = true,
                spellId = 334321, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "334321",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            MorbidFixation = {
                enabled = true,
                spellId = 343556,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "343556",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "343556",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "343556",
                    },
                }
            },
        },
    }
}

bosses.boss4 = { --	Nalthor the Rimebinder
    EncounterId = "2390",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.SpreadCastWithTargetChangeTracker] ={
            FrozenBinds = {
                enabled = true,
                spellId = 320788, -- for spellname etc
                type=JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320788",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320788",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "320788",
                    },
                    {
                        spellIdList = {"320788"},
                    },
                }
            },
        },
        [JDT.GroupTypes.BreakShieldWithProgressIfNotDebuffed] ={
            IceboundAegis = {
                enabled = true,
                spellId = 321754, -- for spellname etc
                customTextInfo = 1,
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "321754",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "323198",
                    },

                }
            },
        },
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = {  
       
    }    
}