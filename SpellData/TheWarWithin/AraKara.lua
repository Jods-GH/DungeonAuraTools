local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.TheWarWithin = JDT.SpellList.TheWarWithin or {}
JDT.SpellList.TheWarWithin.Dungeons = JDT.SpellList.TheWarWithin.Dungeons or {}


JDT.SpellList.TheWarWithin.Dungeons.AraKara = {
    groupName = "[AK",
    zoneId = "15093", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(14971)
    EncounterJournalID = 1271, -- https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.TheWarWithin.Dungeons.AraKara.Bosses


bosses.boss1 = { --	Avanoxx
    EncounterId = "2926", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.DmgBuff] = {
            Insatiable = {
                enabled = true,
                spellId = 446788,
                showStacks = 1,
                glowtype = "Ants",
                showGlow = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "446788",
                    }
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            AlertingShrill = {
                enabled = true,
                spellId = 438476, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "438476",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            GossamerOnslaught = {
                enabled = true,
                spellId = 438473, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "438473",
                    },
                }
            }
        },
        [JDT.GroupTypes.SlowDebuffHighStacksWarning] ={
            VileWebbing = {
                enabled = true,
                spellId = 434830, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "434830",
                    },
                }
            },
        },
        [JDT.GroupTypes.TankBusterCastWithDebuffCheck] = {
            VoraciousBite = {
                enabled = true,
                spellId = 438471,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "438471",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "438471",
                        ignoreSelf = false,
                    }
                }
            },
        },
        --add spell
        [JDT.GroupTypes.CastIntoChaseWithBuffEffect] = {
            Hunger = {
                enabled = true,
                spellId = 438490,
                showStacks = 4,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "438490",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "438490",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "438490",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "438490",
                    },
                }
            },
        },
    }
}
bosses.boss2 = { --	Anub'zekt 
    EncounterId = "2906", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.Frontal] = {
            Impale = {
                enabled = true,
                spellId = 433425,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "433425",
                    }
                }
            },
        }, 
        [JDT.GroupTypes.Charge] ={
            BurrowCharge= {
                enabled = true,
                spellId = 433677, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "433677",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            Infestation  = {
                enabled = true,
                spellId = 433740, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "433740",
                    },
                }
            }
        },
        [JDT.GroupTypes.SlowDot] = {
            CeaselessSwarm = {
                enabled = true,
                spellId = 433747,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "433747",
                    }
                }
            },
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            EyeOfTheSwarm = {
                enabled = true,
                spellId = 433766, -- for spellname etc
                extraName = " soon",
                triggerData = {
                    {
                        spellIdList = {"433766"},
                        extraUnit = "boss1"
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "433766",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }
                }
            }
        },
        [JDT.GroupTypes.StayCloseCast] = {
            EyeOfTheSwarm = {
                enabled = true,
                spellId = 433766,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "433766",
                    }
                }
            },
        },
        --add cast
        [JDT.GroupTypes.KillAddChanneling] = {
            WebWrap = {
                enabled = true,
                spellId = 442210,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "442210",
                    }
                }
            },
        },
    }
}
bosses.boss3 = { --	Ki'katal the Harvester
    EncounterId = "2901", -- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        -- add spells
        [JDT.GroupTypes.KillAddChanneling] = {
            GraspingBlood = {
                enabled = true,
                spellId = 432031,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "432031",
                    }
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            CosmicSingularity = {
                enabled = true,
                spellId = 432117, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "432117",
                    },
                }
            },
        },
        [JDT.GroupTypes.VolleyIntoDot] ={
            VenomVolley = {
                enabled = true,
                spellId = 432227, -- for spellname etc
                type = JDT.AuraTypes.poison,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "432227",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "432227",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dance] ={
            EruptingWebs = {
                enabled = true,
                spellId = 432130, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "432130",
                    },
                }
            }
        },
    }
}

bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        
    },
}
