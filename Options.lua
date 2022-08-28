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
      JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey] = {
        name = JDT.getLocalisation(DungeonKey),
        type = "group",
        args={
        -- more options go here
        }
    }
      for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do 
        local id, name, description, displayInfo, iconImage, uiModelSceneID = EJ_GetCreatureInfo(1,2448)
        JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey].args[BossNameKey] = {
          name = JDT.getLocalisation(DungeonKey.."."..BossNameKey),
          type = "group",
          args={
            BossToggle = {
              name = JDT.getLocalisation(DungeonKey.."."..BossNameKey),
              desc = JDT.getLocalisation("Toggles all Auras for").." "..JDT.getLocalisation(DungeonKey.."."..BossNameKey).."\n"..JDT.getLocalisation("Warning will overwrite all currently selected values."),
              type = "toggle",
              image = iconImage,
              set = function(info,val)  
                for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
                for k,v in pairs(JDT.db.profile[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
                  JDT.db.profile[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled = val 
                end 
              end
                end, --Sets value of SavedVariables depending on toggles
              get = function(info)
                local isactive = false
                for SpellTypeKey,SpellTypeValue in pairs (BossNameValue.Auras) do 
                for k,v in pairs(JDT.db.profile[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey]) do
                  if JDT.db.profile[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled  == true then
                    isactive = true
                  end
                end 
              end
                  return  isactive --Sets value of toggles depending on SavedVariables 
              end,
              confirm = true,
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
            JDT.options.args.spelloptions.args[ExpansionKey].args[DungeonKey].args[BossNameKey].args[SpellTypeKey].args[k]= {
                  name = Spellname,
                  desc = GetSpellDescription(SpellID),
                  type = "toggle",
                  image = Spellicon,
                  set = function(info,val)  JDT.db.profile[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled = val end, --Sets value of SavedVariables depending on toggles
                  get = function(info)
                      return  JDT.db.profile[ExpansionKey][DungeonKey].Bosses[BossNameKey].Auras[SpellTypeKey][k].enabled --Sets value of toggles depending on SavedVariables 
                  end

            }
          end
        end
      end
    end
  end
end