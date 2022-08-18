local _, JDT = ...

["BAR TEMPLATE"] = {
  ["sparkWidth"] = 10,
  ["sparkOffsetX"] = 0,
  ["xOffset"] = 0,
  ["yOffset"] = 0,
  ["anchorPoint"] = "CENTER",
  ["sparkRotation"] = 0,
  ["sparkRotationMode"] = "AUTO",
  ["backgroundColor"] = {
    0, -- [1]
    0, -- [2]
    0, -- [3]
    0.5, -- [4]
  },
  ["triggers"] = {
    {
      ["trigger"] = {
        ["names"] = {
        },
        ["type"] = "aura2",
        ["spellIds"] = {
        },
        ["subeventSuffix"] = "_CAST_START",
        ["unit"] = "player",
        ["subeventPrefix"] = "SPELL",
        ["event"] = "Health",
        ["debuffType"] = "HELPFUL",
      },
      ["untrigger"] = {
      },
    }, -- [1]
    ["activeTriggerMode"] = -10,
  },
  ["icon_color"] = {
    1, -- [1]
    1, -- [2]
    1, -- [3]
    1, -- [4]
  },
  ["internalVersion"] = 53,
  ["selfPoint"] = "CENTER",
  ["barColor"] = {
    1, -- [1]
    0, -- [2]
    0, -- [3]
    1, -- [4]
  },
  ["desaturate"] = false,
  ["sparkOffsetY"] = 0,
  ["subRegions"] = {
    {
      ["type"] = "subbackground",
    }, -- [1]
    {
      ["type"] = "subforeground",
    }, -- [2]
    {
      ["text_shadowXOffset"] = 1,
      ["text_text"] = "%p",
      ["text_shadowColor"] = {
        0, -- [1]
        0, -- [2]
        0, -- [3]
        1, -- [4]
      },
      ["text_selfPoint"] = "AUTO",
      ["text_automaticWidth"] = "Auto",
      ["text_fixedWidth"] = 64,
      ["anchorYOffset"] = 0,
      ["text_justify"] = "CENTER",
      ["rotateText"] = "NONE",
      ["text_text_format_p_time_legacy_floor"] = false,
      ["type"] = "subtext",
      ["text_text_format_p_time_mod_rate"] = true,
      ["text_color"] = {
        1, -- [1]
        1, -- [2]
        1, -- [3]
        1, -- [4]
      },
      ["text_font"] = "Friz Quadrata TT",
      ["text_text_format_p_time_precision"] = 1,
      ["text_shadowYOffset"] = -1,
      ["text_text_format_p_time_dynamic_threshold"] = 60,
      ["text_wordWrap"] = "WordWrap",
      ["text_visible"] = true,
      ["text_anchorPoint"] = "INNER_LEFT",
      ["text_text_format_p_time_format"] = 0,
      ["text_text_format_p_format"] = "timed",
      ["text_fontSize"] = 12,
      ["anchorXOffset"] = 0,
      ["text_fontType"] = "None",
    }, -- [3]
    {
      ["text_shadowXOffset"] = 1,
      ["text_text"] = "%n",
      ["text_shadowColor"] = {
        0, -- [1]
        0, -- [2]
        0, -- [3]
        1, -- [4]
      },
      ["text_selfPoint"] = "AUTO",
      ["text_automaticWidth"] = "Auto",
      ["text_fixedWidth"] = 64,
      ["anchorYOffset"] = 0,
      ["text_justify"] = "CENTER",
      ["rotateText"] = "NONE",
      ["type"] = "subtext",
      ["text_color"] = {
        1, -- [1]
        1, -- [2]
        1, -- [3]
        1, -- [4]
      },
      ["text_font"] = "Friz Quadrata TT",
      ["text_shadowYOffset"] = -1,
      ["text_wordWrap"] = "WordWrap",
      ["text_visible"] = true,
      ["text_anchorPoint"] = "INNER_RIGHT",
      ["text_text_format_n_format"] = "none",
      ["text_fontSize"] = 12,
      ["anchorXOffset"] = 0,
      ["text_fontType"] = "None",
    }, -- [4]
  },
  ["height"] = 15,
  ["load"] = {
    ["size"] = {
      ["multi"] = {
      },
    },
    ["spec"] = {
      ["multi"] = {
      },
    },
    ["class"] = {
      ["multi"] = {
      },
    },
    ["talent"] = {
      ["multi"] = {
      },
    },
  },
  ["sparkBlendMode"] = "ADD",
  ["useAdjustededMax"] = false,
  ["iconSource"] = -1,
  ["icon"] = false,
  ["useAdjustededMin"] = false,
  ["regionType"] = "aurabar",
  ["anchorFrameType"] = "SCREEN",
  ["zoom"] = 0,
  ["icon_side"] = "RIGHT",
  ["actions"] = {
    ["start"] = {
    },
    ["init"] = {
    },
    ["finish"] = {
    },
  },
  ["sparkHeight"] = 30,
  ["texture"] = "Blizzard",
  ["authorOptions"] = {
  },
  ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
  ["spark"] = false,
  ["sparkColor"] = {
    1, -- [1]
    1, -- [2]
    1, -- [3]
    1, -- [4]
  },
  ["id"] = "BAR TEMPLATE",
  ["alpha"] = 1,
  ["frameStrata"] = 1,
  ["width"] = 200,
  ["sparkHidden"] = "NEVER",
  ["uid"] = "3e5te56gEQN",
  ["inverse"] = false,
  ["config"] = {
  },
  ["orientation"] = "HORIZONTAL",
  ["conditions"] = {
  },
  ["information"] = {
  },
  ["animation"] = {
    ["start"] = {
      ["type"] = "none",
      ["easeStrength"] = 3,
      ["duration_type"] = "seconds",
      ["easeType"] = "none",
    },
    ["main"] = {
      ["type"] = "none",
      ["easeStrength"] = 3,
      ["duration_type"] = "seconds",
      ["easeType"] = "none",
    },
    ["finish"] = {
      ["type"] = "none",
      ["easeStrength"] = 3,
      ["duration_type"] = "seconds",
      ["easeType"] = "none",
    },
  },
},
