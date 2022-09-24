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
          ShowTimer = {
            name = JDT.getLocalisation("ShowTimer"),
            desc = JDT.getLocalisation("ShowTimerDescription"),
            type = "toggle",
            set = function(info,val)  JDT.db.profile.ShowTimer = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.ShowTimer  --Sets value of toggles depending on SavedVariables 
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
    }
  }
}
JDT.createOptionsData = function() -- Generates Type Groups depending on SPellData.lua
  for ExpansionKey,ExpansionValue in pairs(JDT.SpellList) do 
    JDT.options.args.spelloptions.args[ExpansionKey] = {
      name = ExpansionKey,
      type = "group",
      args={
      -- more options go here
      }
  }
    for DungeonKey,DungeonValue in pairs(ExpansionValue) do 
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
                for k,v in pairs(JDT.db.profile.data[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
                  JDT.db.profile.data[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled = val 
                end 
              end
                end, --Sets value of SavedVariables depending on toggles
              get = function(info)
                local isactive = false
                for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
                for k,v in pairs(JDT.db.profile.data[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
                  if JDT.db.profile.data[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled  == true then
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
                set = function(info,val)  JDT.db.profile.data[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled = val end, --Sets value of SavedVariables depending on toggles
                get = function(info)
                    return  JDT.db.profile.data[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled --Sets value of toggles depending on SavedVariables 
                end

          }
            end)
           
          end
        end
      end
    end
  end
end