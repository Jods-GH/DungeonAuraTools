
		local _, JDT = ...
		JDT.Templates = JDT.Templates  or {}
		JDT.Templates.Type = JDT.Templates.Type or {}
		JDT.Templates.Type.AuraIcon = {
	
				iconSource = -1,
				authorOptions = {
				},
				customText = "",  -- Custom Text function to display debuff type
				yOffset = 0,
				anchorPoint = "CENTER",
				cooldownSwipe = true,
				cooldownEdge = false,
				icon = true,
				triggers = {
					
				},
				internalVersion = 59,
				keepAspectRatio = false,
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
				desaturate = false,
				url = "https://wago.io/TESTINGDONOTUSE",
				subRegions = {
					{
						type = "subbackground",
					}, -- [1]
					{  ----------------------------------------- Text 1 %p display
						
						text_text_format_s_format = "none",
						text_text = "%p",
						text_selfPoint = "AUTO",
						text_automaticWidth = "Auto",
						text_fixedWidth = 64,
						text_justify = "CENTER",
						rotateText = "NONE",
						anchorYOffset = 0,
						type = "subtext",
						text_text_format_p_time_legacy_floor = false,
						text_text_format_p_format = "timed",
						text_text_format_p_time_precision = 1,
						text_text_format_p_time_dynamic_threshold = 3,
						text_text_format_p_time_mod_rate = true,
						text_text_format_p_time_format = 0,
						text_color = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						text_font = "Friz Quadrata TT",
						text_shadowColor = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						text_shadowYOffset = 0,
						text_wordWrap = "WordWrap",
						text_fontType = "OUTLINE",
						text_anchorPoint = "CENTER",
						text_visible = false,
						text_fontSize = 17,
						anchorXOffset = 0,
						text_shadowXOffset = 0,
					}, 
					
					
				},
				load = { --------- load conditions

				
					use_encounterid = false, -- defines if encounter id's are to be used
					encounterid = "", -- encounter id's to be set comma seperated "9999, g8888"
				
					use_zoneIds = false, ------------------------ defines if zone id's are to be used
					zoneIds = "", ------------ zone id's to be set comma seperated "9999, g8888"

					-- use_role = flase, -- false = multi , true = single , entry doesn't exist = none
					role = {
						single = "TANK", -- TANK/HEALER/DAMAGER
						multi = {
							-- HEALER = true,
							-- TANK = true,
							-- DAMAGER = true,
						},
					},

					talent = {
						multi = {
						},
					},
					size = {
						multi = {
						},
					},
					class = {
						multi = {
						},
					},
					spec = {
						multi = {
						},
					},
				},
				source = "import",
				regionType = "icon",
				cooldown = true,
				actions = {
					start = {
						sound = "", -------- sound to be used Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg
						do_sound = false, --------- if sound is enabled or disabled
					},
					init = {
					},
					finish = {
					},
				},
				color = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				conditions = { -------------- conditions if needed
				},
				xOffset = 0,
				zoom = 0,
				alpha = 1,
				config = {
				},
				id = "ICON TEMPLATE", -- Aura Name
				frameStrata = 1,
				useCooldownModRate = true,
				width = 80, -- width of icon
				height = 80, -- height of icon
				anchorFrameType = "SCREEN",
				uid = "", -- Aura Unique Identifier
				inverse = false,
				cooldownTextDisabled = false, -- if cooldown text should be enabled or disabled
				displayIcon = "1111", -- Fallback icon of the Aura
				useAdjustededMax = false, -- new progress stuff
			  	useAdjustededMin = false, -- new progress stuff
				adjustedMin = "", -- new progress stuff
    			adjustedMax = "", -- new progress stuff
				progressSource = { -- new progress stuff
					-1, -- [1]
					"", -- [2]
				},
				information = {
				},
				selfPoint = "CENTER",
	
	}