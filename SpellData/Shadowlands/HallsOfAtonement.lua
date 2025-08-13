local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.Shadowlands = JDT.SpellList.Shadowlands or {}
JDT.SpellList.Shadowlands.Dungeons = JDT.SpellList.Shadowlands.Dungeons or {}


JDT.SpellList.Shadowlands.Dungeons.HallsOfAtonement = {
    groupName = "[HOA",
    zoneId = "g409", -- https://warcraft.wiki.gg/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 1185, --https://wago.tools/db2/JournalEncounter
    Bosses = {}
}
local bosses = JDT.SpellList.Shadowlands.Dungeons.HallsOfAtonement.Bosses

bosses.boss1 = { -- Halkias, the Sin-Stained Goliath
    EncounterId = "2401",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
       [JDT.GroupTypes.Dance] ={
            RefractedSinlight = {
                enabled = true,
                spellId = 322913, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322913",
                    },
                }
            },
            
        },
        [JDT.GroupTypes.VoidCast] = {
            CrumblingSlam = {
                enabled = true,
                spellId = 322936,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322936",
                    },
                }
            },
            HeaveDebris = {
                enabled = true,
                spellId = 322943,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "322943",
                    },
                }
            },
        },
    }
}

bosses.boss2 = { -- Echelon 
    EncounterId = "2380",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.AddSummonCast] = {
            StoneCall = {
                enabled = true,
                spellId = 319733,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "319733",
                    }
                }
            },
        },
        [JDT.GroupTypes.DisposeSpellAuraAppliedRemoved] ={
            StoneForm = {
                enabled = true,
                spellId = 319724, -- for spellname etc
                showStacks = 2,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "319724",
                    },
                    {
                        summonID = 319724,
                        duration = 30,
                        removeID = 319724
                    },
                }
            }
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            VillainousBolt = {
                enabled = true,
                spellId = 328322, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "328322",
                    },
                }
            },
        },
        [JDT.GroupTypes.StunDebuffWithStacksAsProgress] ={
            FleshToStone = {
                enabled = true,
                spellId = 319603, -- for spellname etc
                customTextInfo = "4",
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "319603",

                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            StoneShatteringLeap = {
                enabled = true,
                spellId = 319592, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "319592",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "319603",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "319603",
                    },
                }
            }
        },
        [JDT.GroupTypes.Dot] ={
            Shattered  = {
                enabled = true,
                spellId = 344874, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "344874",
                    },
                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            BloodTorrent = {
                enabled = true,
                spellId = 326389,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "326389",
                    },

                }
            },
        },
    }
} 

bosses.boss3 = { -- High Adjudicator Aleez 
    EncounterId = "2403",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
         [JDT.GroupTypes.InterruptableTargetedCast] ={
            AnimaBolt = {
                enabled = true,
                spellId = 323538, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323538",
                    },
                }
            },
        },
        [JDT.GroupTypes.PlayerGroupDebuffSpread ] ={
            UnstableAnima = {
                enabled = true,
                spellId = 1236512, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1236512",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "1236512",
                    },
                }
            }
        },
        [JDT.GroupTypes.CastIntoChase] = {
            RagingGaze = {
                enabled = true,
                spellId = 257582,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323597",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "323650",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "323650",
                    },
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            AnimaFountain = {
                enabled = true,
                spellId = 329340,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "329340",
                    },

                }
            },
        },
    }
}

bosses.boss4 = { -- Lord Chamberlain 
    EncounterId = "2381",-- https://warcraft.wiki.gg/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.Dance] ={
            TelekineticOnslaught = {
                enabled = true,
                spellId = 329113, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "329113",
                    },
                }
            },
            TelekineticRepulsion = {
                enabled = true,
                spellId = 323129, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323129",
                    },
                }
            },
        },
        [JDT.GroupTypes.SoakCast] ={
            RitualOfWoe = {
                enabled = true,
                spellId = 328791, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "328791",

                    },

                }
            }
        },
        [JDT.GroupTypes.VoidCast] = {
            TelekineticToss = {
                enabled = true,
                spellId = 323143,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323143",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            UnleashedSuffering = {
                enabled = true,
                spellId = 323236,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323236",
                    }
                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            EruptingTorment = {
                enabled = true,
                spellId = 1236964, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "1236964",
                    },
                }
            },
        },
        [JDT.GroupTypes.TargetedCastIntoDot] = {
            StigmaOfPride = {
                enabled = true,
                spellId = 323437,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "323437",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "323437",
                    }
                }
            },
        }, 
    }
}

bosses.Trash = {
    additionalName = "TRASH] ",
    Auras = {  
        [JDT.GroupTypes.DmgTakenDebuff] = {
            AnimaTaintedArmor = {
                enabled = true,
                spellId = 1235060,
                showStacks = 1,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1235060",
                    },
                }
            },
        },
        [JDT.GroupTypes.Dot] ={
            GushingWound  = {
                enabled = true,
                spellId = 1237602, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1237602",
                    },
                }
            },
            AnkleBite  = {
                enabled = true,
                spellId = 1235245, -- for spellname etc
                type = JDT.AuraTypes.bleed,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "1235245",
                    },
                }
            }
        },
        [JDT.GroupTypes.TargetedCast] = {
            Shoot = {
                enabled = true,
                spellId = 325535,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "325535",
                    }
                }
            },
        },
        [JDT.GroupTypes.RageBuffCast] = {
            LoyalBeasts = {
                enabled = true,
                spellId = 326450,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "326450",
                    },

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            PowerfulSwipe = {
                enabled = true,
                spellId = 326997,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "326997",
                    }
                }
            },
        },
        [JDT.GroupTypes.InteruptShout] = {
            DisruptingScreech = {
                enabled = true,
                spellId = 1235326,
                triggerData = {
                {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1235326",
                    },
                {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                   },

                }
            },
        },
        [JDT.GroupTypes.KnockCast] ={
            StoneFist = {
                enabled = true,
                spellId = 1237071, -- for spellname etc
                RoleLoad =  "TANK",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1237071",

                    },

                }
            },
        },
        [JDT.GroupTypes.CastIntoPlayerGroupDebuffSpread ] ={
            MarkOfObliteration = {
                enabled = true,
                spellId = 325876, -- for spellname etc
                type = JDT.AuraTypes.magic,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "325876",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "325876",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.smartGroup,
                        spellId = "325876",
                    },
                }
            }
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            WickedBolt = {
                enabled = true,
                spellId = 338003, -- for spellname etc
                triggerData = {
                     {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "338003",
                    },
                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            CollectSins = {
                enabled = true,
                spellId = 325700,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "325700",
                    },
                }
            },
        },
        [JDT.GroupTypes.InteruptableBigHealCast] = {
            SiphonLife = {
                enabled = true,
                spellId = 325701,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "325701",
                    },
                }
            },
        },
        [JDT.GroupTypes.UnavoidableAoe] = {
            Thrash = {
                enabled = true,
                spellId = 326409,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "326409",
                    }
                }
            },
        },
        [JDT.GroupTypes.VoidCast] = {
            SinQuake = {
                enabled = true,
                spellId = 326441,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "326441",
                    },

                }
            },
        },
         [JDT.GroupTypes.StunCast] = {
            TurnToStone = {
                enabled = true,
                spellId = 1235762,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "1235762",
                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            DarkCommunion = {
                enabled = true,
                spellId = 326794,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "326794",
                    },
                }
            },
        },
        
    }    
}