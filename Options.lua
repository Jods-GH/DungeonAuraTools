local appName, JDT = ...
---@type AceConfigOptionsTable
JDT.options = {
  name = "Addon Options",
    type = "group",
    args = {
      generaloptions={
        name = JDT.getLocalisation("GeneralOptions"),
        type = "group",
        args={
          ExportButton = {
            name = "Export",
            type = "execute",
            func = function() JDT.exportAuras() end
        },
          ComingSoon = {
            name = "More options coming soon",
            type = "description",
            image = "Interface\\AddOns\\DungeonAuraTools\\Files\\DungeonAuraTools.tga",
          },
          PlaySound = {
            name = JDT.getLocalisation("PlaySound"),
            desc = JDT.getLocalisation("PlaySoundDescription"),
            type = "toggle",
            set = function(info,val)  JDT.db.profile.PlaySound = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.PlaySound  --Sets value of toggles depending on SavedVariables 
            end

          },
          AnchorGroupsToAffixes = {
            name = JDT.getLocalisation("AnchorGroupsToAffixes"),
            desc = JDT.getLocalisation("AnchorGroupsToAffixesDescription"),
            type = "toggle",
            set = function(info,val)  JDT.db.profile.AnchorGroupsToAffixes = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.AnchorGroupsToAffixes  --Sets value of toggles depending on SavedVariables 
            end

          },
          ShowTimer = {
            name = JDT.getLocalisation("ShowTimer"),
            desc = JDT.getLocalisation("ShowTimerDescription"),
            type = "toggle",
            set = function(info,val)  JDT.db.profile.ShowTimer = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.ShowTimer  --Sets value of toggles depending on SavedVariables 
            end

          },
          xOffset= {
            name = JDT.getLocalisation("xOffset"),
            desc = JDT.getLocalisation("xOffsetDescription"),
            type = "range",
            softMin = math.floor(-GetScreenWidth()/2),
            softMax = math.ceil(GetScreenWidth()/2),
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.xOffset = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.xOffset  --Sets value of toggles depending on SavedVariables 
            end

          },
          yOffset= {
            name = JDT.getLocalisation("yOffset"),
            desc = JDT.getLocalisation("yOffsetDescription"),
            type = "range",
            softMin = math.floor(-GetScreenHeight()/2),
            softMax = math.ceil(GetScreenHeight()/2),
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.yOffset = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.yOffset  --Sets value of toggles depending on SavedVariables 
            end

          },
          
          
          -- more options go here
        }
    },
      spelloptions={
            name = JDT.getLocalisation("SpellOptions"),
            type = "group",
            args={
              -- more options go here  
      }
    },

    selfGenerated={
      name = JDT.getLocalisation("SelfGenerated"),
      type = "group",
      args={
        SpellID= {
          name = JDT.getLocalisation("SelfGeneratedSpellId"),
          desc = JDT.getLocalisation("SelfGeneratedSpellIdDescription"),
          type = "input",
          set = function(info,val) JDT.db.profile.selfGenerated.SpellID = val  end, --Sets value of SavedVariables depending on toggles
          get = function(info)
              return  JDT.db.profile.selfGenerated.SpellID --Sets value of toggles depending on SavedVariables 
          end
        },
        GroupType= {
          name = JDT.getLocalisation("SelfGeneratedGroupType"),
          desc = JDT.getLocalisation("SelfGeneratedGroupTypeDescription"),
          type = "select",
          style = "dropdown",
          values = JDT.GroupTypesForOptions(),
          set = function(info,val) JDT.db.profile.selfGenerated.GroupType = val  
            JDT.createSelfGeneratedTriggerData(val)
          end, --Sets value of SavedVariables depending on toggles
          get = function(info)
              JDT.createSelfGeneratedTriggerData(JDT.db.profile.selfGenerated.GroupType)
              return  JDT.db.profile.selfGenerated.GroupType --Sets value of toggles depending on SavedVariables 
          end
        },
        AuraType= {
          name = JDT.getLocalisation("SelfGeneratedAuraType"),
          desc = JDT.getLocalisation("SelfGeneratedAuraTypeDescription"),
          type = "select",
          style = "dropdown",
          values = JDT.AuraTypesForOptions,
          set = function(info,val) 
            JDT.db.profile.selfGenerated.AuraType = val  end, --Sets value of SavedVariables depending on toggles
          get = function(info)
              return  JDT.db.profile.selfGenerated.AuraType --Sets value of toggles depending on SavedVariables 
          end
        },
        triggerData = {
          name = JDT.getLocalisation("SelfGeneratedTriggerData"),
          desc = JDT.getLocalisation("SelfGeneratedTriggerDataDescription"),
          type = "group",
          inline = true,
          args={

          }
          
        },
        ExportButton = {
          name = "Export",
          type = "execute",
          func = function() JDT.exportSelfGenerated() end
      },
        
        -- more options go here  
}
}
  }
}
JDT.createSelfGeneratedTriggerData = function(val)
  JDT.options.args.selfGenerated.args.triggerData.args = {}
            for key, value in pairs(JDT.Templates.GroupTypes[val].triggers) do
              local trigger = {
                name = "trigger"..key.." : "..value.triggerType,
                desc = JDT.getLocalisation("SelfGeneratedTriggerDataDescription"),
                type = "group",
                inline = true,
                args={
                }
              }
                
              for k,v in pairs(JDT.Templates.Triggers.DataForTriggerTypes[value.triggerType]) do
                if v == "unit" then
                  JDT.db.profile.selfGenerated.triggerData[k] = JDT.db.profile.selfGenerated.triggerData[k] or {}
                  trigger.args[key..v] = {
                    name = v,
                    desc = JDT.getLocalisation(v),
                    type = "select",
                    style = "dropdown",
                    values = JDT.UnitTypesForOptions(),
                    set = function(info,val) JDT.db.profile.selfGenerated.triggerData[k].unit = val  end, --Sets value of SavedVariables depending on toggles
                    get = function(info)
                        return  JDT.db.profile.selfGenerated.triggerData[k].unit --Sets value of toggles depending on SavedVariables 
                    end
                  }
                else
                  JDT.db.profile.selfGenerated.triggerData[k][v] = JDT.db.profile.selfGenerated.triggerData[k][v] or {}
                trigger.args[key..v] = {
                  name = v,
                  desc = JDT.getLocalisation(v),
                  type = "input",
                  set = function(info,val) JDT.db.profile.selfGenerated.triggerData[k][v]= val  end, --Sets value of SavedVariables depending on toggles
                  get = function(info)
                      return  JDT.db.profile.selfGenerated.triggerData[k][v] --Sets value of toggles depending on SavedVariables 
                  end
                }
                end
              end
              table.insert(JDT.options.args.selfGenerated.args.triggerData.args,trigger)
            end
end

JDT.createOptionsData = function() -- Generates Type Groups depending on SpellData.lua
  JDT.db.profile.selfGenerated.triggerData = JDT.db.profile.selfGenerated.triggerData or {}
  for ExpansionKey,ExpansionValue in pairs(JDT.SpellList) do 
    JDT.options.args.spelloptions.args[ExpansionKey] = {
      name = ExpansionKey,
      type = "group",
      args={
      -- more options go here
      }
  }
  if ExpansionKey == "Affixes" then
    for typekey,typevalue in pairs(ExpansionValue.Auras) do
      for k,v in pairs(typevalue) do -- Generates Spell toggles depending on SPellData.lua
        if v.affixId then
          local name, description, filedataid = C_ChallengeMode.GetAffixInfo(v.affixId)
          JDT.options.args.spelloptions.args[ExpansionKey].args[k]= {
            name = name,
            desc = description,
            type = "toggle",
            image = filedataid,
            set = function(info,val)  JDT.db.profile.data[ExpansionKey].Auras[typekey][k].enabled = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.data[ExpansionKey].Auras[typekey][k].enabled --Sets value of toggles depending on SavedVariables 
            end

      }
      else
          local Spellname, Spellrank, Spellicon, SpellcastTime, SpellminRange, SpellmaxRange, SpellID = GetSpellInfo(v.spellId) 
          local spell = Spell:CreateFromSpellID(SpellID)
          spell:ContinueOnSpellLoad(function()
            local desc = spell:GetSpellDescription()
            JDT.options.args.spelloptions.args[ExpansionKey].args[k]= {
              name = Spellname,
              desc = desc,
              type = "toggle",
              image = Spellicon,
              set = function(info,val)  JDT.db.profile.data[ExpansionKey].Auras[typekey][k].enabled = val end, --Sets value of SavedVariables depending on toggles
              get = function(info)
                  return  JDT.db.profile.data[ExpansionKey].Auras[typekey][k].enabled --Sets value of toggles depending on SavedVariables 
              end

        }
          end)
        end
      end
  end

  else
    for DungeonKey,DungeonValue in pairs(ExpansionValue.Dungeons) do 
      EJ_SelectInstance(DungeonValue.EncounterJournalID)
      local Instancename, Instancedescription,_,_,_,_, _,_,_= EJ_GetInstanceInfo()
      JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey] = {
        name = Instancename,
        desc = Instancedescription,
        type = "group",
        args={
        -- more options go here
        }
    }
      for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do 
        local EncounterName, Encounterdescription, journalEncounterID, rootSectionID, link, journalInstanceID, dungeonEncounterID, instanceID
        local id, name, description, displayInfo, iconImage, uiModelSceneID
        local OrderNumber = tonumber(strsub(BossNameKey,5))
        if BossNameKey ~= "Trash" then
        EncounterName, Encounterdescription, journalEncounterID, rootSectionID, link, journalInstanceID, dungeonEncounterID, instanceID = EJ_GetEncounterInfoByIndex(OrderNumber)
        id, name, description, displayInfo, iconImage, uiModelSceneID = EJ_GetCreatureInfo(1,journalEncounterID)
        else
          EncounterName =  "Trash"
          Encounterdescription = "Trash"
        end
        JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey].args[BossNameKey] = {
          name = EncounterName,
          desc = Encounterdescription,
          type = "group",
          order = OrderNumber,
          args={
            BossToggle = {
              name = EncounterName,
              desc = JDT.getLocalisation("Toggles all Auras for").." "..EncounterName,
              type = "toggle",
              image = iconImage,
              set = function(info,val)  
                for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
                for k,v in pairs(JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
                  JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled = val 
                end 
              end
                end, --Sets value of SavedVariables depending on toggles
              get = function(info)
                local isactive = false
                for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
                for k,v in pairs(JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
                  if JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled  == true then
                    isactive = true
                  end
                end 
              end
                  return  isactive --Sets value of toggles depending on SavedVariables 
              end,
              confirm = true,
              confirmText = JDT.getLocalisation("Warning will overwrite all currently selected values."), 
              order = 0,

        },
          emptySpace = {
            name = "",
            type = "description",
            desc = ""
          }
          -- more options go here
          }
      }
        for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
          JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey].args[BossNameKey].args[SpellTypeKey] = {
              name = JDT.getLocalisation(SpellTypeKey),
              type = "group",
              inline = true,
              args={
                
              -- more options go here
              }
          }
          for k,v in pairs(SpellTypeValue) do -- Generates Spell toggles depending on SPellData.lua
            local Spellname, Spellrank, Spellicon, SpellcastTime, SpellminRange, SpellmaxRange, SpellID = GetSpellInfo(v.spellId) 
            local spell = Spell:CreateFromSpellID(SpellID)

            spell:ContinueOnSpellLoad(function()
              local desc = spell:GetSpellDescription()
              JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey].args[BossNameKey].args[SpellTypeKey].args[k]= {
                name = Spellname,
                desc = desc,
                type = "toggle",
                image = Spellicon,
                set = function(info,val)  JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled --Sets value of toggles depending on SavedVariables 
                end

          }
            end)
           
          end
        end
      end
    end
  end
end

end