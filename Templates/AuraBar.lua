local _, JDT = ...
JDT.Templates = JDT.Templates  or {}
JDT.Templates.Type = JDT.Templates.Type or {}
JDT.Templates.Type.AuraBar = {
    sparkWidth = 10,
    iconSource = -1,
    xOffset = 0,
    yOffset = 0,
    anchorPoint = "CENTER",
    sparkRotation = 0,
    sparkRotationMode= "AUTO",
    icon = true,
    textureSource = "LSM",
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
        0.69803923368454, -- [1]
        0.72156864404678, -- [2]
        0.73333334922791, -- [3]
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
            text_anchorPoint = "INNER_RIGHT",
            text_text_format_p_time_format = 0,
            text_text_format_p_format = "timed",
            text_fontSize = 17,
            anchorXOffset = -10,
            text_fontType = "None",
        }, -- [3]
        
    },
    height = 80,
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
    useAdjustededMax = false, -- new progress stuff
    useAdjustededMin = false, -- new progress stuff
    adjustedMin = "", -- new progress stuff
    adjustedMax = "", -- new progress stuff
    progressSource = { -- new progress stuff
        -1, -- [1]
        "", -- [2]
    },
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
    regionType = "aurabar",
    sparkOffsetX = 0,
    config = {
    },
    icon_side = "LEFT",
    sparkColor = {
        1, -- [1]
        1, -- [2]
        1, -- [3]
        1, -- [4]
    },
    sparkHeight = 30,
    texture =  "Clean",
    sparkHidden = "NEVER",
    sparkTexture = "Interface\\CastingBar\\UI-CastingBar-Spark",
    spark = false,
    frameStrata = 1,
    id = "BARTEMPLATE",
    zoom = 0,
    alpha = 1,
    width = 400,
    authorOptions = {
    },
    uid = "BARTEMPLATE",
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
