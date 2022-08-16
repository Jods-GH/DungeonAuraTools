local appName, JDT = ...

JDT.options = {
  name = "Addon Options",
    type = "group",
    args = {
      enable = {
        name = "Enable",
        desc = "Enables / disables the addon",
        type = "toggle",
        set = function(info,val) JDT.enabled = val end,
        get = function(info) return JDT.enabled end
    },
      generaloptions={
        name = "General Options",
        type = "group",
        args={
          -- more options go here
        }
    },
      spelloptions={
            name = "Spell Options",
            type = "group",
            args={
              -- more options go here  
      }
    }
  }
}
JDT.createOptionsData = function()
  for SpellTypeKey,SpellTypeValue in pairs (JDT.SpellList) do -- Generates Type Groups depending on SPellData.lua
    JDT.options.args.spelloptions.args[SpellTypeKey] = {
        name = SpellTypeKey,
        type = "group",
        args={
        -- more options go here
        }
    }
    for k,v in pairs(SpellTypeValue) do 
      local Spellname, Spellrank, Spellicon, SpellcastTime, SpellminRange, SpellmaxRange, SpellID = GetSpellInfo(v.spellId) -- Generates Spell toggles depending on SPellData.lua
      JDT.options.args.spelloptions.args[SpellTypeKey].args[k]= {
            name = Spellname,
            desc = GetSpellDescription(SpellID),
            type = "toggle",
            image = Spellicon,
            icon =  Spellicon,
            set = function(info,val)  JDT.db.profile[SpellTypeKey][k].enabled = val end,
            get = function(info) 
              if JDT.db.profile[SpellTypeKey][k].enabled then
              return  JDT.db.profile[SpellTypeKey][k].enabled 
              else return v.enabled 
              end
            end

      }
    end
  end
end