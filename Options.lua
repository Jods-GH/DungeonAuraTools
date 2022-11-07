local appName, JDT = ...
---@type AceConfigOptionsTable
JDT.options = {
  name = "Addon Options",
    type = "group",
    args = {
      ExportButton = {
        name = "Send to WeakAuras",
        type = "execute",
        order = 0,
        func = function() JDT.exportAuras() end
    },
      generaloptions={
        name = JDT.getLocalisation("GeneralOptions"),
        type = "group",
        args={
             
             
              GroupOptionsSeperator={
                name = "GroupOptions",
                type = "header",
                order = 1,
              },
              AnchorGroupsToAffixes = {
                name = JDT.getLocalisation("AnchorGroupsToAffixes"),
                desc = JDT.getLocalisation("AnchorGroupsToAffixesDescription"),
                order = 30,
                width = "full",
                type = "toggle",
                set = function(info,val)  JDT.db.profile.AnchorGroupsToAffixes = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.AnchorGroupsToAffixes  --Sets value of toggles depending on SavedVariables 
                end
              },
              xOffset= {
                name = JDT.getLocalisation("xOffset"),
                desc = JDT.getLocalisation("xOffsetDescription"),
                order = 31,
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
                order = 32,
                type = "range",
                softMin = math.floor(-GetScreenHeight()/2),
                softMax = math.ceil(GetScreenHeight()/2),
                bigStep = 1,
                set = function(info,val)  JDT.db.profile.yOffset = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.yOffset  --Sets value of toggles depending on SavedVariables 
                end
              },
              GroupLimit= {
                name = JDT.getLocalisation("GroupLimit"),
                desc = JDT.getLocalisation("GroupLimitDescription"),
                order = 33,
                type = "range",
                softMin = 1,
                softMax = 20,
                min = 0,
                max= 20,
                step = 1,
                bigStep = 1,
                set = function(info,val)  JDT.db.profile.GroupLimit = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.GroupLimit or 7 --Sets value of toggles depending on SavedVariables 
                end
              },
              GrowOptionsSeperator={
                name = "GrowOptions",
                type = "header",
                order = 34,
              }, 
              
                  GroupGrow= {
                    name = JDT.getLocalisation("GroupGrow"),
                    desc = JDT.getLocalisation("GroupGrowDescription"),
                    order = 35,
                    type = "select",
                    values = JDT.Templates.GroupGrowTypes,
                    set = function(info,val)  JDT.db.profile.GroupGrow = val end, --Sets value of SavedVariables depending on toggles
                    get = function(info)
                        JDT.options.args.generaloptions.args.SpecificGrowOptions.args = JDT.Templates.GroupGrowOptionsFromType[JDT.db.profile.GroupGrow]
                        return  JDT.db.profile.GroupGrow--Sets value of toggles depending on SavedVariables 
                    end
                  },
                  SpecificGrowOptions={
                    name = JDT.getLocalisation("SpecificGrowOptions"),
                    type = "group",
                    order = 36,
                    inline = true,
                    args={}
                      },
                 
                         
              AuraOptionsSeperator={
                name = "AuraOptions",
                type = "header",
                order = 50,
              },
              IconWidth= {
                name = JDT.getLocalisation("IconWidth"),
                desc = JDT.getLocalisation("IconWidthDescription"),
                type = "range",
                order = 51,
                width = 1.25,
                softMin = 1,
                softMax = 600,
                min = 1,
                step = 1,
                bigStep = 1,
                set = function(info,val)  JDT.db.profile.IconWidth = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.IconWidth or 80  --Sets value of toggles depending on SavedVariables 
                end
              },
              
              
              IconHeight= {
                name = JDT.getLocalisation("IconHeight"),
                desc = JDT.getLocalisation("IconHeightDescription"),
                type = "range",
                order = 52,
                width = 1.25,
                softMin = 1,
                softMax = 600,
                min = 1,
                step = 1,
                bigStep = 1,
                set = function(info,val)  JDT.db.profile.IconHeight = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.IconHeight or 80  --Sets value of toggles depending on SavedVariables 
                end
              },
              
              ShowTimer = {
                name = JDT.getLocalisation("ShowTimer"),
                desc = JDT.getLocalisation("ShowTimerDescription"),
                type = "toggle",
                order = 53,
                width = 2.5/3,
                set = function(info,val)  JDT.db.profile.ShowTimer = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.ShowTimer  --Sets value of toggles depending on SavedVariables 
                end
              },
              HideCooldownText = {
                name = JDT.getLocalisation("HideCooldownText"),
                desc = JDT.getLocalisation("HideCooldownTextDescription"),
                order = 54,
                width = 2.5/3,
                type = "toggle",
                set = function(info,val)  JDT.db.profile.HideCooldownText = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.HideCooldownText  --Sets value of toggles depending on SavedVariables 
                end
              },
              CooldownTextFontSize= {
                name = JDT.getLocalisation("CooldownTextFontSize"),
                desc = JDT.getLocalisation("CooldownTextFontSizeDescription"),
                order = 55,
                width = 2.5/3,
                type = "range",
                softMin = 6,
                softMax = 72,
                min = 1,
                step = 1,
                bigStep = 1,
                set = function(info,val)  JDT.db.profile.CooldownTextFontSize = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.CooldownTextFontSize or 17  --Sets value of toggles depending on SavedVariables 
                end
              },
              
             
              FontOptions= {
                name = JDT.getLocalisation("FontOption"),
                desc = JDT.getLocalisation("FontOptionDescription"),
                order = 56,
                type = "select",
                width = 1.25,
                values = JDT.FontMedias,
                set = function(info,val)  JDT.db.profile.FontOptions = val end, --Sets value of SavedVariables depending on toggles
                get = function(info) return  JDT.db.profile.FontOptions--Sets value of toggles depending on SavedVariables 
                end
              },
              TextFontSize= {
                name = JDT.getLocalisation("TextFontSize"),
                desc = JDT.getLocalisation("TextFontSizeDescription"),
                type = "range",
                order = 57,
                width = 1.25,
                softMin = 6,
                softMax = 72,
                min = 1,
                step = 1,
                bigStep = 1,
                set = function(info,val)  JDT.db.profile.TextFontSize = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.TextFontSize or 17  --Sets value of toggles depending on SavedVariables 
                end
    
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
              
              ComingSoon = {
                name = "More options coming soon",
                order = -1,
                type = "description",
                image = "Interface\\AddOns\\DungeonAuraTools\\Files\\DungeonAuraTools.tga",
              },
       
          
          
          -- more options go here
        }
    },
      spelloptions={
            name = JDT.getLocalisation("SpellOptions"),
            type = "group",
            args={
              Seperator={
                name =  JDT.getLocalisation("ExpansionOptions"),
                type = "header",
                order = 0,
              }
              -- more options go here  
      }
    }
  }
}
JDT.createOptionsData = function() -- Generates Type Groups depending on SPellData.lua
  JDT.options.args.spelloptions.args["ExpansionToggles"] = {
    type = "group",
    name = "",
    inline = true,
    args={
     
}}
  for ExpansionKey,ExpansionValue in pairs(JDT.SpellList) do 
    JDT.options.args.spelloptions.args[ExpansionKey] = {
      name = ExpansionKey,
      type = "group",
      args={
       
      -- more options go here
      }
  }
  if ExpansionKey == "Affixes" then
    JDT.options.args.spelloptions.args["ExpansionToggles"].args[ExpansionKey] = {
      name = ExpansionKey,
      desc = JDT.getLocalisation("Toggles all Auras for").." "..ExpansionKey,
      type = "toggle",
      width = "full",
      order =  0,
      set = function(info,val)  for typekey,typevalue in pairs(ExpansionValue.Auras) do 
        for k,v in pairs(typevalue) do
          JDT.db.profile.data[ExpansionKey].Auras[typekey][k].enabled = val
        end
      end end,
      get = function(info) 
        local isactive = false
        for typekey,typevalue in pairs(ExpansionValue.Auras) do 
          for k,v in pairs(typevalue) do
            if JDT.db.profile.data[ExpansionKey].Auras[typekey][k].enabled == true then
            isactive = true
            end
          end
        end return isactive  end,
        confirm = true,
        confirmText = JDT.getLocalisation("Warning will overwrite all currently selected values."), 
      }
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

  
  
    JDT.options.args.spelloptions.args["ExpansionToggles"].args[ExpansionKey] = {
      name = ExpansionKey,
      desc = JDT.getLocalisation("Toggles all Auras for").." "..ExpansionKey,
      type = "toggle",
      width = "full",
      order =  1000-JDT.ExpansionValues[ExpansionKey][2]*10,
      set = function(info,val)
            for DungeonKey,DungeonValue in pairs(ExpansionValue.Dungeons) do 
              for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do   
                for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
                  for k,v in pairs(JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
                    JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled = val 
                  end 
                end
             end
           end
        end, --Sets value of SavedVariables depending on toggles
      get = function(info)
        local isactive = false
        for DungeonKey,DungeonValue in pairs(ExpansionValue.Dungeons) do 
          for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do 
            for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
            for k,v in pairs(JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
              if JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled  == true then
                isactive = true
              end
            end 
          end
        end
      end
          return  isactive --Sets value of toggles depending on SavedVariables 
      end,
      confirm = true,
      confirmText = JDT.getLocalisation("Warning will overwrite all currently selected values."), 
} 
    JDT.options.args.spelloptions.args[ExpansionKey].args["DungeonToggles"] = {
      type = "group",
      name = "",
      inline = true,
      args={
        Logo = {
          name = "",
          type = "description",
          image = GetExpansionDisplayInfo(JDT.ExpansionValues[ExpansionKey][2]).logo,
          imageWidth = 150,
          imageHeight = 50,
          order =  0,
        }
}}
    for DungeonKey,DungeonValue in pairs(ExpansionValue.Dungeons) do 
      EJ_SelectInstance(DungeonValue.EncounterJournalID)
      local Instancename, Instancedescription,_,buttonImage1,_,_, _,_,_= EJ_GetInstanceInfo()
      JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey] = {
        name = Instancename,
        desc = Instancedescription,
        type = "group",
        args={
        -- more options go here
        }
    }
    JDT.options.args.spelloptions.args[ExpansionKey].args["DungeonToggles"].args[DungeonKey]= {
      name = Instancename,
      desc = JDT.getLocalisation("Toggles all Auras for").." "..Instancename,
      type = "toggle",
      image = buttonImage1,
      width = "full",
      order = DungeonValue.EncounterJournalID,
      set = function(info,val)
        for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do   
          for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
            for k,v in pairs(JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
              JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled = val 
          end 
      end
    end
        end, --Sets value of SavedVariables depending on toggles
      get = function(info)
        local isactive = false
        for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do 
          for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
          for k,v in pairs(JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
            if JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled  == true then
              isactive = true
            end
          end 
        end
      end
          return  isactive --Sets value of toggles depending on SavedVariables 
      end,
      confirm = true,
      confirmText = JDT.getLocalisation("Warning will overwrite all currently selected values."), 

} 
    JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey].args["BossToggles"] = {
          type = "group",
          name = "",
          inline = true,
          args={
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
           
          emptySpace = {
            name = "",
            type = "description",
            desc = ""
          },
          -- more options go here
          },
         }
         JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey].args["BossToggles"].args[BossNameKey]= {
          name = EncounterName,
          desc = JDT.getLocalisation("Toggles all Auras for").." "..EncounterName,
          type = "toggle",
          image = iconImage,
          order = OrderNumber,
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