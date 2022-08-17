local _, JDT = ...
--[[
JDT.DataToExport = {
  d = {
    -- ... required: primary aura data
  }, 
  c = { 
   -- {...}, {...}, ... optional: array of child aura data
  }, 
  v = 2001
}

JDT.buildDataToExport = function() 
  
  JDT.DataToExport.d= JDT.Templates.DynamicGroup
  JDT.DataToExport.c = JDT.Templates.AuraIcon 

end
]]
JDT.DataToExport = {
  d = {
    tenorID = nil,
    xOffset = 0,
    yOffset = 0,
    foregroundColor = {1, 1, 1, 1},
    desaturateBackground = false,
    animationType = "loop",
    sameTexture = true,
    startPercent = 0,
    actions = {
      start = {},
      init = {},
      finish = {}
    },
    customForegroundRows = 16,
    frameRate = 15,
    internalVersion = 51,
    animation = {
      start = {
        type = "none",
        easeStrength = 3,
        duration_type = "seconds",
        easeType = "none"
      },
      main = {
        type = "none",
        easeStrength = 3,
        duration_type = "seconds",
        easeType = "none"
      },
      finish = {
        type = "none",
        easeStrength = 3,
        duration_type = "seconds",
        easeType = "none"
      }
    },
    customForegroundFileHeight = 0,
    customBackgroundRows = 16,
    customForegroundFileWidth = 0,
    rotation = 0,
    subRegions = {
      {
        type = "subbackground"
      }
    },
    height = 128,
    rotate = true,
    load = {
      size = {
        multi = {}
      },
      spec = {
        multi = {}
      },
      class = {
        multi = {}
      },
      talent = {
        multi = {}
      }
    },
    endPercent = 1,
    backgroundTexture = "placeholder",
    customBackgroundColumns = 16,
    foregroundTexture = "placeholder",
    backgroundPercent = 1,
    selfPoint = "CENTER",
    mirror = false,
    backgroundColor = {0.5, 0.5, 0.5, 0.5},
    regionType = "stopmotion",
    discrete_rotation = 0,
    blendMode = "BLEND",
    anchorPoint = "CENTER",
    anchorFrameType = "SCREEN",
    customForegroundColumns = 16,
    config = {},
    customForegroundFrames = 0,
    customForegroundFrameWidth = 0,
    hideBackground = true,
    customBackgroundFrames = 0,
    id = "placeholder",
    uid = "placeholder",
    customForegroundFrameHeight = 0,
    frameStrata = 1,
    width = 128,
    authorOptions = {},
    inverse = false,
    desaturateForeground = false,
    conditions = {},
    information = {},
    triggers = {
      1 = {
        trigger = {
          type = "unit",
          use_absorbHealMode = true,
          subeventSuffix = "_CAST_START",
          use_absorbMode = true,
          event = "Conditions",
          subeventPrefix = "SPELL",
          spellIds = {},
          use_alwaystrue = true,
          use_unit = true,
          names = {},
          unit = "player",
          debuffType = "HELPFUL"
        },
        untrigger = {}
      },
      activeTriggerMode = -10
    }
  },
  m = "d",
  s = "WA-Companion",
  v = 1421
}