local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Dragonflight = JDT.SpellList.Dragonflight or {}
JDT.SpellList.Dragonflight.Dungeons = JDT.SpellList.Dragonflight.Dungeons or {}


JDT.SpellList.Dragonflight.Dungeons.TheNokhudOffensive = {
    groupName = "[TNO",
    zoneId = "2093", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1198, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.Dragonflight.Dungeons.TheNokhudOffensive.Bosses

bosses.boss1 = { 
    EncounterId = "2637", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            Eruption = {
                enabled = true,
                spellId = 388283, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"388283"},
                        extraUnit = "boss1"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388283",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
        
        [JDT.GroupTypes.UnavoidableAoe] ={
            Eruption = {
                extraName = "Cast",
                enabled = true,
                spellId = 388283, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388283",

                    },

                }
            },
            ShardsofStone = {
                enabled = true,
                spellId = 388817, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "388817",

                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            TectonicStomp = {
                enabled = true,
                spellId = 385916, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385916",

                    },

                }
            }, 
        },
         [JDT.GroupTypes.AddSummonCombatlog] = {
            NokhudSaboteur = {
                enabled = true,
                spellId = 386490,
                extraName = " summon",
                triggerData = {
                  [1] =  {
                        spellId = "386748",
                        duration = "3",
                    },

                }
            },
        },
        [JDT.GroupTypes.KillAddChanneling] = {
            Dismantle = {
                enabled = true,
                spellId = 386490,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "386490",
                    }

                }
            },

        },
    }
}
bosses.boss2 = { 
    EncounterId = "2636", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = { 
        [JDT.GroupTypes.DmgBuffButItsAdebuff] = {
            SurgeOfPower = {
                enabled = true,
                spellId = 382630,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "382628",
                    }

                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] ={
            ElectricalStorm = {
                enabled = true,
                spellId = 384620, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384620",

                    },

                }
            }
        },
        [JDT.GroupTypes.CastIntoSpreadifDebuffed] = {
            LightningStrike = {
                enabled = true,
                spellId = 384316,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384316",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "384316",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoBuff] ={
            EnergySurge = {
                enabled = true,
                spellId = 384686, -- for spellname etc
                type = JDT.AuraTypes.purge,
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384686",

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384686",
                    },

                }
            }
        },
        [JDT.GroupTypes.GoMeleeCast] = {
            WindBurst = {
                enabled = true,
                spellId = 384761,
                RoleLoad = "TANK",
                glowtype = "ActionButton",
                showGlow = true,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384761",
                    },

                }
            },
        },
    }
}
bosses.boss3 = { 
    EncounterId = "2581", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = { 
        [JDT.GroupTypes.KnockCast] ={ -- this is the wrong type needs to be changed
            Repel = {
                enabled = true,
                spellId = 386547, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386547",

                    },

                }
            },
            GuardianWind = {
                enabled = true,
                spellId = 384808, -- for spellname etc
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "384808",

                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCast] = {
            QuickShot = {
                enabled = true,
                spellId = 386411,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386411",
                    }

                }
            },
        },
        [JDT.GroupTypes.Jump] ={
            SpiritLeap = {
                enabled = true,
                spellId = 385434, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "385434",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.EnergyTrackSoonCast] ={
            Earthsplitter = {
                enabled = true,
                spellId = 385193, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"385193"},
                        extraUnit = "boss2"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385193",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            },
            GaleArrow = {
                enabled = true,
                spellId = 382670, -- for spellname etc
                triggerData = {
                    [1] = {
                        spellIdList = {"382670"},
                        extraUnit = "boss1"

                    },
                    [2] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "382670",
                    },
                    [3] ={
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        percentpower = 90
                    }

                }
            }
        },
        [JDT.GroupTypes.RunOut] ={
            FrightfulRoar = {
                enabled = true,
                spellId = 386063, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "386063",

                    },

                }
            },
        },

        [JDT.GroupTypes.SpreadCastIntoCastSuccessAvoid] ={
            GaleArrow = {
                enabled = true,
                extraName = " cast",
                spellId = 382670, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "382670",
                    },
                    {
                        duration = "2",
                        spellId = "382670",
                    },
                }
            },
        },
        [JDT.GroupTypes.ShockWave] ={
            Earthsplitter = {
                enabled = true,
                spellId = 385193, -- for spellname etc
                extraName = " cast",
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "385193",

                    },

                }
            },
        },

    }
}       


bosses.boss4 = { 
    EncounterId = "2580", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = { 
        [JDT.GroupTypes.SpreadDebuff] = {
            IronSpear = {
                enabled = true,
                spellId = 376634,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "376634",
                    }

                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            IronStampede= {
                enabled = true,
                spellId = 376683, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376683",

                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {
            Upheaval = {
                enabled = true,
                spellId = 375943,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "375943",
                    },

                }
            },
            CracklingUpheaval = {
                enabled = true,
                spellId = 376892,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376892",
                    },

                }
            },
        },
        [JDT.GroupTypes.TankBusterCastWithDebuffCheck] = {
            RendingStrike = {
                enabled = true,
                spellId = 375937,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "375937,375929",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "375937",
                        ignoreSelf = false,
                    }

                }
            },
            ConductiveStrike = {
                enabled = true,
                spellId = 376827,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376827,376829",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "376827",
                        ignoreSelf = false,
                    }

                }
            },

        },
        [JDT.GroupTypes.AddSummonCast] = {
            SiphonPower = {
                enabled = true,
                spellId = 376727,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376727",
                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCastWithSuccess] = {
            ThunderStrike = {
                enabled = true,
                spellId = 376829,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "376829",
                    },
                    {
                        spellId = "376829",
                        duration = "5"

                    },

                }
            }, 
        },
        [JDT.GroupTypes.PlayerGroupDebuffSpread ] ={
            RavenousLeap = {
                enabled = true,
                spellId = 376864, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "376864",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "376864",
                    },

                }
            }
        },
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = {  
        [JDT.GroupTypes.TargetedCast] = {
            Shoot = {
                enabled = true,
                spellId = 373392,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373392",
                    }

                }
            },
            Stormbolt = {
                enabled = true,
                spellId = 386012,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "386012",
                    }

                }
            },
            DeathBolt = {
                enabled = true,
                spellId = 387613,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387613",
                    }

                }
            },
            Thunderstrike = {
                enabled = true,
                spellId = 387125,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387125",
                    }

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            MultiShot = {
                enabled = true,
                spellId = 384868,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384868",
                    }

                }
            },
            BroadStomp = {
                enabled = true,
                spellId = 382233,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382233",
                    }

                }
            },
            RottingWind = {
                enabled = true,
                spellId = 387629,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387629",
                    }

                }
            },

        },
        [JDT.GroupTypes.Dance] ={
            RainofArrows = {
                enabled = true,
                spellId = 384476, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384476",
    
                    },
    
                }
            },
            NecroticEruption = {
                enabled = true,
                spellId = 387608, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387608",
    
                    },
    
                }
            },
        },
        [JDT.GroupTypes.Charge] ={
            VehementCharge= {
                enabled = true,
                spellId = 382277, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "382277",

                    },

                }
            },
        },
        [JDT.GroupTypes.ChargeIntoBleed] ={
            SwiftStab= {
                enabled = true,
                spellId = 381692, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "381683",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "381692",

                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            RallytheClan = {
                enabled = true,
                spellId = 383823,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "383823",
                    },

                }
            },
        },
        [JDT.GroupTypes.BuffCast] = {
            ChantoftheDead = {
                enabled = true,
                spellId = 387614,
                type = JDT.AuraTypes.enrage,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387614",
                    },

                }
            },
            HarvestSoul= {
                enabled = true,
                spellId = 388318,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388318",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            DevourSpirit = {
                enabled = true,
                spellId = 387821,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387821",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCastNoTargetAnounce] = {
            RavagingSpear = {
                enabled = true,
                spellId = 372147,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "372147",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpreadCast] = {  
            ChainLightning = {
                enabled = true,
                spellId = 387127,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387127",
                    },

                }
            },
            ArcingStrike = {
                enabled = true,
                spellId = 387135,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387135",
                    },

                }
            },
        },
        [JDT.GroupTypes.RageBuff] = {
            RagingKin= {
                enabled = true,
                spellId = 383067,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "383067",
                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            StormShock = {
                enabled = true,
                spellId = 396206,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "396206",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "396206",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoCursethatRoots] = {
            GraspoftheDead = {
                enabled = true,
                spellId = 387615,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387615",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "387615",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            SummonSquall = {
                enabled = true,
                spellId = 386015,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "386015",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptShout] = {
            DisruptiveShout = {
                enabled = true,
                spellId = 384365,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384365",
                    },
                {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.HealDebuff] = {
            RottingWind = {
                enabled = true,
                spellId = 387629,
                extraName = " debuff",
                type = JDT.AuraTypes.disease,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "387629",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableVolley] = {
            DeathBoltVolley = {
                enabled = true,
                spellId = 387411,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387411",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableCastIntoReclaimSoul] = {
            ShatterSoul = {
                enabled = true,
                spellId = 395035,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "395035",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "395035",
                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoAtackspeedSlowMagic] = {
            SwiftWind = {
                enabled = true,
                spellId = 387596,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387596",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "387596",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            WarStomp = {
                enabled = true,
                spellId = 384336, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "384336",

                    },

                }
            },
            ThunderClap = {
                enabled = true,
                spellId = 386028, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "386028",

                    },

                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoHealingReducedDebuff] = {
            MortalStrike = {
                enabled = true,
                spellId = 388801,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "388801",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "388801",
                    },

                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            TotemicOverload = {
                enabled = true,
                spellId = 387145,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387145",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableBewitchCastIntoDebuff] ={
            Dominate= {
                enabled = true,
                spellId = 387606, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "387606",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "387606",

                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableAoeFear] ={
            BloodcurdlingShout= {
                enabled = true,
                spellId = 373395, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "373395",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableAoeCast] ={
            Tempest= {
                enabled = true,
                spellId = 386024, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "386024",
                    },
                }
            },
        },
    }
}