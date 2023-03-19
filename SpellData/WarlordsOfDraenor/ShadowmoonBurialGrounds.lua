local _, JDT = ...

JDT.SpellList = JDT.SpellList or {}
JDT.SpellList.WarlordOfDraenor = JDT.SpellList.WarlordOfDraenor or {}
JDT.SpellList.WarlordOfDraenor.Dungeons = JDT.SpellList.WarlordOfDraenor.Dungeons or {}

JDT.SpellList.WarlordOfDraenor.Dungeons.ShadowmoonBurialGrounds = {
    groupName = "[SBG",
    zoneId = "g223", -- https://wowpedia.fandom.com/wiki/UiMapID   C_Map.GetMapGroupID(dungeonAreaMapID)
    EncounterJournalID = 537, -- https://wow.tools/dbc/?dbc=journalencounter&build=10.0.2.45632
    Bosses = {}
}
local bosses = JDT.SpellList.WarlordOfDraenor.Dungeons.ShadowmoonBurialGrounds.Bosses

bosses.boss1 = { --	Sadana Bloodfury
    EncounterId = "1677", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 01 ",
    Auras = {
        [JDT.GroupTypes.SpellcastSucceededAvoid] ={
            Daggerfall = {
                enabled = true,
                spellId = 153240, -- for spellname etc
                triggerData = {
                    {
                        spellId = "153240",
                        duration = "6.8"

                    },

                }
            }
        },
        [JDT.GroupTypes.ChannelDmgWithNextTick] ={
            WhispersoftheDarkStar = {
                enabled = true,
                spellId = 153094, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "153094",

                    },
                    {
                        duration = "1",
                        spellId = "153094",

                    },

                }
            }
        },
        [JDT.GroupTypes.KillAddChanneling] = {
            DarkCommunion = {
                enabled = true,
                spellId = 153153,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "153153",
                    }
                }
            },
        },
        [JDT.GroupTypes.SoakCastSafeWithDebuff ] ={
            DarkEclipse = {
                enabled = true,
                spellId = 164974, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "164974",

                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "162652",

                    },

                }
            },
        },
    }
}
bosses.boss2 = { --	Nhallish
    EncounterId = "1688", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 02 ",
    Auras = {
        [JDT.GroupTypes.TankBusterCast] = {
            VoidBlast = {
                enabled = true,
                spellId = 152792,
                RoleLoad = {
                    HEALER = true,
					TANK = true,
                },
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "152792",
                    },
                }
            },
        },
        [JDT.GroupTypes.TeleportCast] = {
            PlanarShift = {
                enabled = true,
                spellId = 153623,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "153623",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            VoidVortex = {
                enabled = true,
                spellId = 152801, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "152801",

                    },

                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            SoulSteal = {
                enabled = true,
                spellId = 152962,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "152962",
                    },

                }
            },
        },
        [JDT.GroupTypes.KillAddDebuff] ={
            SoulShred= {
                enabled = true,
                spellId = 152979, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "152979",

                    },

                }
            }
        },
        [JDT.GroupTypes.Dance] ={
            VoidDevastation = {
                enabled = true,
                spellId = 153067, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "153067",

                    },

                }
            }
        },
        [JDT.GroupTypes.DmgBuff] = {
            ReturnedSoul = {
                enabled = true,
                spellId = 153033,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "153033",
                    }

                }
            },

        },
    }
}
bosses.boss3 = { --		Bonemaw
    EncounterId = "1679", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 03 ",
    Auras = {
        [JDT.GroupTypes.UnavoidableAoe] ={
            CorpseBreath = {
                enabled = true,
                spellId = 165578, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "165578",

                    },

                }
            }
        },
        [JDT.GroupTypes.SpellcastSucceededAvoid] ={
            NecroticPitch = {
                enabled = true,
                spellId = 153692, -- for spellname etc
                triggerData = {
                    {
                        spellId = "153689",
                        duration = "4.1"
                    },
                }
            }
        },
        [JDT.GroupTypes.Frontal] = {
            BodySlam = {
                enabled = true,
                spellId = 154175,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "154175",
                    }
                }
            },
        },
        [JDT.GroupTypes.SucceeddedintoCastDance] = {
            Inhale = {
                enabled = true,
                spellId = 153804,
                triggerData = {
                    {
                        spellId = "154868",
                        duration = "3.7"
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "153804",
                    }
                }
            },
        },
    }
}
bosses.boss4 = { --	Ner'zhul
    EncounterId = "1682", -- https://wowpedia.fandom.com/wiki/DungeonEncounterID
    additionalName = "] 04 ",
    Auras = {
        [JDT.GroupTypes.ShockWave] ={
            Malevolence = {
                enabled = true,
                spellId = 154442, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.boss,
                        spellId = "154442",

                    },

                }
            },
        },
        [JDT.GroupTypes.DmgTakenDebuff] = {
            Malevolence = {
                enabled = true,
                spellId = 154442,
                extraName = " debuff",
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "154442",
                    },

                }
            },
        },
        [JDT.GroupTypes.SpellcastSucceededAvoid] ={
            OmenofDeath = {
                enabled = true,
                spellId = 154350, -- for spellname etc
                triggerData = {
                    {
                        spellId = "177691",
                        duration = "1.2"

                    },

                }
            }
        },
        [JDT.GroupTypes.SpellcastSucceededDance] ={
            RitualofBones = {
                enabled = true,
                spellId = 154469, -- for spellname etc
                triggerData = {
                    {
                        spellId = "154671",
                        duration = "10"

                    },

                }
            }
        },
    }
}
bosses.Trash = { 
    additionalName = "TRASH] ",
    Auras = {
        [JDT.GroupTypes.OutrangeCast] = {
            VoidPulse = {
                enabled = true,
                spellId = 152964,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "152964",
                    },

                }
            },
        },   
        [JDT.GroupTypes.Dot] = {
            PlagueSpit = {
                enabled = true,
                spellId = 153524,
                type = JDT.AuraTypes.disease,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "153524",
                    },

                }
            },
            RendingVoidlash = {
                enabled = true,
                spellId = 156776,
                type = JDT.AuraTypes.interrupt,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "156776",
                    },

                }
            },
            ShadowWordFrailty = {
                enabled = true,
                spellId = 152819,
                type = JDT.AuraTypes.magic,
                triggerData = {
                   {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "152819",
                    },

                }
            },
        },
        [JDT.GroupTypes.InterruptableTargetedCast] ={
            DeathVenom = {
                enabled = true,
                spellId = 156717,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "156717",
                    }

                }
            },
            DeathBlast = {
                enabled = true,
                spellId = 398206,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "398206",
                    }

                }
            },
            
        },
        [JDT.GroupTypes.TargetedCast] = {
            NecroticBurst= {
                enabled = true,
                spellId = 156718,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "156718",
                    }

                }
            },
            VoidBolt= {
                enabled = true,
                spellId = 156722,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "156722",
                    }

                }
            },
            ShadowBolt= {
                enabled = true,
                spellId = 152814,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "152814",
                    }

                }
            },
        },
        [JDT.GroupTypes.Frontal] = {
            BodySlam = {
                enabled = true,
                spellId = 153395,
                loadInBossfight = false,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "153395",
                    }
                }
            },
        },
        [JDT.GroupTypes.AddSummonCast] = {
            ExhumetheCrypts = {
                enabled = true,
                spellId = 153268,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "153268",
                    },

                }
            },
        },
        [JDT.GroupTypes.InteruptableHealCast] ={
            ShadowMend = {
                enabled = true,
                spellId = 152818, -- for spellname etc
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "152818",
    
                    },
    
                }
            }
        },
        [JDT.GroupTypes.BewitchCastIntoCurse] = {
            Domination = {
                enabled = true,
                spellId = 398150,
                triggerData = {
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "398150",
                    },
                    {
                        unit = JDT.Templates.Triggers.UnitTypes.player,
                        spellId = "398150",
                    },

                }
            },
        },
        [JDT.GroupTypes.RunOut] ={
            CryofAnguish = {
                enabled = true,
                spellId = 398154, -- for spellname etc
                triggerData = {
                    [1] = {
                        unit = JDT.Templates.Triggers.UnitTypes.nameplate,
                        spellId = "398154",

                    },

                }
            },
        }
       
    }
}