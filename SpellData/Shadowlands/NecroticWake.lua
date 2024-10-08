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
                customTextInfo = {tooltip = 1 , inverse=false},
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
        [JDT.GroupTypes.DmgTakenDebuff] = {
            CometStorm = {
                enabled = true,
                spellId = 320784,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320784",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoTimeLeftDebuffAnnounce] = {
            DarkExile = {
                enabled = true,
                spellId = 321894,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "321894",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "321894",
                    },
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            FrigidCold = {
                enabled = true,
                spellId = 328181, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "328181",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoAtackspeedSlow] ={
            Enfeeble= {
                enabled = true,
                spellId = 320839, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "320839",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320839"
                    },

                }
            }
        },
        [JDT.GroupTypes.DmgBuff] = {
            ChampionsBoon = {
                enabled = true,
                spellId = 345323,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = 345323,
                    }
                }
            },
        },
        
        [JDT.GroupTypes.CastSuccessDanceWithoutDebuff] = {
            CometStorm = {
                enabled = true,
                spellId = 320772,
                extraName = " dance",
                
                ticks = {
                    "12.5",
                    "25",
                    "37.5",
                    "50",
                    "62.5",
                    "75",
                    "87.5",
                },
                triggerData = {
                    {
                        duration = "4",
                        spellId = "320772",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = 320772,
                    }
                }
            },
        },
        
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = {  
        [JDT.GroupTypes.Dot] ={
            DisgustingGuts  = {
                enabled = true,
                spellId = 321821, -- for spellname etc
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "321821",
                    },
                }
            }
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            WrathOfZolramus = {
                enabled = true,
                spellId = 322756, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "322756",
                    },
                }
            }
        },
        [JDT.GroupTypes.InterruptableSuppresion] = {
            DrainFluids = {
                enabled = true,
                spellId = 334748,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "334748",
                    }
                }
            },
        },
        [JDT.GroupTypes.AbsorbDebuffWithProgress] ={
            NecroticBolt = {
                enabled = true,
                spellId = 320462, -- for spellname etc
                customTextInfo = { tooltip = 1, inverse = true},
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "320462",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            RepairFlesh = {
                enabled = true,
                spellId = 327130,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "327130",
                    },
                }
            },
            Bonemend = {
                enabled = true,
                spellId = 335143,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "335143",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoHideDebuff] = {
            ThrowCleaver = {
                enabled = true,
                spellId = 160681,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "323471",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "323471",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "323471",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoHpReducedDebuff] = {
            ThrowCleaver = {
                enabled = true,
                spellId = 321807,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "321807",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "321807",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            ShadowWell = {
                enabled = true,
                spellId = 320571,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "320571",
                    },
                }
            },
        },
        [JDT.GroupTypes.PlayerGroupDebuffSpread ] ={
            GrimFate = {
                enabled = true,
                spellId = 327397, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "327397",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "327397",
                    },
                }
            }
        },
        [JDT.GroupTypes.AddSummonCast] = {
            AnimateDead = {
                enabled = true,
                spellId = 321780,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "321780",
                    },
                }
            },
        },
        [JDT.GroupTypes.HealCast] = {
            FinalBargain= {
                enabled = true,
                spellId = 320822,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "320822",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableAoeFear] ={
            RaspingScream= {
                enabled = true,
                spellId = 324293, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "324293",
                    },
                }
            },
        },
        [JDT.GroupTypes.CastIntoBreakShield] = {
            BoneshatterShield = {
                enabled = true,
                spellId = 343470,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "343470",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "343470",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            DeathBurst = {
                enabled = true,
                spellId = 345623, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "345623",
                    },
                }
            },
            FrigidSpikes = {
                enabled = true,
                spellId = 324387, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "324387",
                    },
                }
            },
        },
        [JDT.GroupTypes.PurgableImuneCast] = {
            DarkShroud = {
                enabled = true,
                spellId = 335141,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "335141",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            ReapingWinds = {
                enabled = true,
                spellId = 324372, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "324372",
                    },
                }
            },
            SpineCrush = {
                enabled = true,
                spellId = 327240, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "327240",
                    },
                }
            },
        },
        [JDT.GroupTypes.SlowDebuff] ={
            ChillScythe = {
                enabled = true,
                spellId = 324381, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "324381",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCastIntoDmgTakenDebuff] = {
            Tenderize = {
                enabled = true,
                spellId = 338357,
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "338357",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "338357",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableVolleyIntoDiseaseDot] = {
            Goresplatter = {
                enabled = true,
                spellId = 338353,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "338353",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "338353",
                    },
                }
            },
        },
        [JDT.GroupTypes.FrontalIntoDot] = {
            GutSlice = {
                enabled = true,
                spellId = 333477,
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "333477",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "333477",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoChase] = {
            MorbidFixation = {
                enabled = true,
                spellId = 338606,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "338606",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "338606",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "338606",
                    },
                }
            },
        },
    }    
}