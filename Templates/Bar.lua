local _, JDT = ...
JDT.Templates = JDT.Templates  or {}
JDT.Templates.AuraBar = {
    sparkWidth = 10,
    iconSource = -1,
    xOffset = 0,
    yOffset = 0,
    anchorPoint = "CENTER",
    sparkRotation = 0,
    sparkRotationMode= "AUTO",
    icon = true,
    triggers = {
        {
            
        }, -- [1]
        activeTriggerMode = -10,
    },
    icon_color = {
        1, -- [1]
        1, -- [2]
        1, -- [3]
        1, -- [4]
    },
    enableGradient = false,
    internalVersion = 64,
    selfPoint = "CENTER",
    barColor = {
        1, -- [1]
        0, -- [2]
        0, -- [3]
        1, -- [4]
    },
    desaturate = false,
    sparkOffsetY = 0,
    subRegions = {
        {
            type = "subbackground",
        }, -- [1]
        {
            type = "subforeground",
        }, -- [2]
        {
            text_shadowXOffset = 1,
            text_text = "%p",
            text_shadowColor = {
                0, -- [1]
                0, -- [2]
                0, -- [3]
                1, -- [4]
            },
            text_selfPoint = "AUTO",
            text_automaticWidth = "Auto",
            text_fixedWidth = 64,
            anchorYOffset = 0,
            text_justify = "CENTER",
            rotateText = "NONE",
            text_text_format_p_time_legacy_floor = false,
            type = "subtext",
            text_text_format_p_time_mod_rate = true,
            text_color = {
                1, -- [1]
                1, -- [2]
                1, -- [3]
                1, -- [4]
            },
            text_font = "Friz Quadrata TT",
            text_text_format_p_time_precision = 1,
            text_shadowYOffset = -1,
            text_text_format_p_time_dynamic_threshold = 60,
            text_wordWrap = "WordWrap",
            text_visible = true,
            text_anchorPoint = "INNER_LEFT",
            text_text_format_p_time_format = 0,
            text_text_format_p_format = "timed",
            text_fontSize = 12,
            anchorXOffset = 0,
            text_fontType = "None",
        }, -- [3]
        
    },
    height = 30,
    load = {
        size = {
            multi = {
            },
        },
        spec = {
            multi = {
            },
        },
        class = {
            multi = {
            },
        },
        talent = {
            multi = {
            },
        },
    },
    sparkBlendMode = "ADD",
    useAdjustededMax = false,
    anchorFrameType = "SCREEN",
    gradientOrientation = "HORIZONTAL",
    barColor2 = {
        1, -- [1]
        1, -- [2]
        0, -- [3]
        1, -- [4]
    },
    backgroundColor = {
        0, -- [1]
        0, -- [2]
        0, -- [3]
        0.5, -- [4]
    },
    smoothProgress = false,
    useAdjustededMin = false,
    regionType = "aurabar",
    sparkOffsetX = 0,
    config = {
    },
    icon_side = "RIGHT",
    sparkColor = {
        1, -- [1]
        1, -- [2]
        1, -- [3]
        1, -- [4]
    },
    sparkHeight = 30,
    texture = "Blizzard",
    sparkHidden = "NEVER",
    sparkTexture = "Interface\\CastingBar\\UI-CastingBar-Spark",
    spark = false,
    frameStrata = 1,
    id = "BARTEMPLATE",
    zoom = 0,
    alpha = 1,
    width = 250,
    authorOptions = {
    },
    uid = "UiPcTCiWDhz",
    inverse = false,
    actions = {
        start = {
        },
        init = {
        },
        finish = {
        },
    },
    orientation = "HORIZONTAL",
    conditions = {
    },
    information = {
    },
    animation = {
        start = {
            type = "none",
            easeStrength = 3,
            duration_type = "seconds",
            easeType = "none",
        },
        main = {
            type = "none",
            easeStrength = 3,
            duration_type = "seconds",
            easeType = "none",
        },
        finish = {
            type = "none",
            easeStrength = 3,
            duration_type = "seconds",
            easeType = "none",
        },
    },
}
