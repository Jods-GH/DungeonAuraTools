local appName, JDT = ...

JDT.options = {
  name = "Addon Options",
    type = "group",
    args = {
      enable = {
        name = JDT.getLocalisation("Enable"),
        desc = JDT.getLocalisation("EnableDescription"),
        type = "toggle",
        set = function(info,val) JDT.enabled = val end,
        get = function(info) return JDT.enabled end
    },
      generaloptions={
        name = JDT.getLocalisation("GeneralOptions"),
        type = "group",
        args={
          ExportButton = {
            name = "Export",
            type = "execute",
            func = function() JDT.exportAuras() end
          }
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
  for SpellTypeKey,SpellTypeValue in pairs (JDT.SpellList) do 
    JDT.options.args.spelloptions.args[SpellTypeKey] = {
        name = JDT.getLocalisation(SpellTypeKey),
        type = "group",
        args={
        -- more options go here
        }
    }
    for k,v in pairs(SpellTypeValue) do -- Generates Spell toggles depending on SPellData.lua
      local Spellname, Spellrank, Spellicon, SpellcastTime, SpellminRange, SpellmaxRange, SpellID = GetSpellInfo(v.spellId) 
      JDT.options.args.spelloptions.args[SpellTypeKey].args[k]= {
            name = Spellname,
            desc = GetSpellDescription(SpellID),
            type = "toggle",
            image = Spellicon,
            icon =  Spellicon,
            set = function(info,val)  JDT.db.profile[SpellTypeKey][k].enabled = val end, --Sets value of SavedVariables depending on toggles
            get = function(info) 
              if JDT.db.profile[SpellTypeKey][k].enabled then
              return  JDT.db.profile[SpellTypeKey][k].enabled --Sets value of toggles depending on SavedVariables
              else return v.enabled 
              end
            end

      }
    end
  end
end