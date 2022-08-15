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
                    args={
                      -- more options go here
                    }
              }
            }
      }
    }
  }

  for k,v in pairs(JDT.SpellList.Debuffs) do 
    JDT.options.args.spelloptions.Debuffs.args[k]= {
        name = k,
        desc = "Enables / disables the Debuff "..k,
        type = "toggle",
        set = function(info,val)  JDT.options.args.spelloptions.Debuffs.args[k].enabled = val end,
        get = function(info) return  JDT.options.args.spelloptions.Debuffs.args[k].enabled end
    }
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