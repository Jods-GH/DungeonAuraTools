
		local _, JDT = ...
		JDT.Templates = JDT.Templates  or {}
		JDT.Templates.AuraIcon = {
	
				iconSource = -1,
				authorOptions = {
				},
				preferToUpdate = false,
				customText = "function(TEMPLATE)\n   return TEMPLATE \nend",  -- Custom Text function to display debuff type
				yOffset = 0,
				anchorPoint = "CENTER",
				cooldownSwipe = true,
				cooldownEdge = false,
				icon = true,
				triggers = {
					
				},
				internalVersion = 53, -- version of weakauras addon on creation might need to be updated eventually
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
				subRegions = {
					{
						type = "subbackground",
					}, -- [1]
					{  ----------------------------------------- Text 1 %p display
						text_text_format_p_time_precision = 1,
						text_text_format_s_format = "none",
						text_text = "%p",
						text_text_format_p_format = "timed",
						text_selfPoint = "AUTO",
						text_automaticWidth = "Auto",
						text_fixedWidth = 64,
						text_text_format_p_time_legacy_floor = false,
						text_justify = "CENTER",
						rotateText = "NONE",
						anchorYOffset = 0,
						type = "subtext",
						text_text_format_p_time_dynamic_threshold = 60,
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
						text_text_format_p_time_mod_rate = true,
						text_wordWrap = "WordWrap",
						text_fontType = "OUTLINE",
						text_anchorPoint = "CENTER",
						text_text_format_p_time_format = 0,
						text_visible = false,
						text_fontSize = 12,
						anchorXOffset = 0,
						text_shadowXOffset = 0,
					}, -- [2]
					
					{ ------------------------------------ TEXT 2 TEXT TO DISPLAY
						text_text_format_p_time_precision = 1,
						text_text = "Tex to Display", --------------- actual text value
						text_text_format_p_format = "timed",
						text_selfPoint = "AUTO",
						text_automaticWidth = "Auto",
						text_fixedWidth = 64,
						text_text_format_p_time_legacy_floor = false,
						text_justify = "CENTER",
						rotateText = "NONE",
						anchorYOffset = 0,
						type = "subtext",
						text_text_format_p_time_dynamic_threshold = 60,
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
						text_text_format_p_time_mod_rate = true,
						text_wordWrap = "WordWrap",
						text_visible = true,
						text_anchorPoint = "OUTER_BOTTOM",
						text_text_format_p_time_format = 0,
						text_fontType = "OUTLINE",
						text_fontSize = 17,
						anchorXOffset = 0,
						text_shadowXOffset = 0,
					}, -- [3]
					
					
				},
				height = 80,
				load = { --------- load conditions
					use_zoneIds = false, ------------------------ defines if zone id's are to be used
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
					zoneIds = "", ------------ zone id's to be set comma seperated "9999, g8888"
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
				width = 80,
				anchorFrameType = "SCREEN",
				uid = "", -- Aura Unique Identifier
				inverse = false,
				cooldownTextDisabled = false, -- if cooldown text should be enabled or disabled
				displayIcon = "1111", -- Fallback icon of the Aura
				information = {
				},
				selfPoint = "CENTER",
	
	}