local appName, JDT = ...
local AceGUI = LibStub("AceGUI-3.0")
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
print("Jods Dungeon Tools")

JDT.options = {
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
                Debuffs={
                    name = "Debuffs",
                    type = "group",
                    inline = true,
                    args={
                      -- more options go here
                    }
              }
                Casts={
                  name = "Casts",
                  type = "group",
                  inline = true,
                  args={
                    -- more options go here
                  }
              }
                Frontals={
                  name = "Frontals",
                  type = "group",
                  inline = true,
                  args={
                    -- more options go here
                  }
              }
      }
    }
  }

  for k,v in pairs(JDT.SpellList.Debuffs) do 
    local Spellname, Spellrank, Spellicon, SpellcastTime, SpellminRange, SpellmaxRange, SpellspellID = GetSpellInfo(v.spellId)
    JDT.options.args.spelloptions.args.Debuffs.args[k]= {
          name = k,
          desc = "Enables / disables the Debuff "..k.." spellid: ".. v.spellId.." icon: "..Spellicon,
          type = "toggle",
          image = Spellicon,
          set = function(info,val)  JDT.options.args.spelloptions.args.Debuffs.args[k].enabled = val end,
          get = function(info) return  JDT.options.args.spelloptions.args.Debuffs.args[k].enabled end
    }
    JDT.options.args.spelloptions.args.Debuffs.args[k].set=tostring(v.enabled)
  end

  AceConfig:RegisterOptionsTable(appName, JDT.options)


function JDT.CreateOptionsFrame () 
    AceConfigDialog:Open(appName)
end

SLASH_JODSDUNGEON1 = "/jdt"
SLASH_JODSDUNGEON2 = "/Jdt"
SLASH_JODSDUNGEON3 = "/JodsDungeonTools"


SlashCmdList.JODSDUNGEON = function(msg, editBox)
	JDT.CreateOptionsFrame() 
end