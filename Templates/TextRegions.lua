local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.TextRegions = JDT.Templates.TextRegions or {}
JDT.Templates.TextRegions.CustomText = { ------------------------------------------  %c (custom text function is declared further up in customText)
						text_shadowXOffset = 0,
						text_text = "%c",
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
						text_text_format_c_format = "none",
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
						text_shadowYOffset = 0,
						text_text_format_p_time_dynamic_threshold = 60,
						text_wordWrap = "WordWrap",
						text_fontType = "OUTLINE",
						text_anchorPoint = "INNER_BOTTOMLEFT",
						text_text_format_p_time_format = 0,
						text_text_format_p_format = "timed",
						text_fontSize = 17,
						anchorXOffset = 0,
						text_visible = true,
					} 
JDT.Templates.TextRegions.Stacks = { ------------------------------------------ TEXT %s
						text_shadowXOffset = 0,
						text_text_format_s_format = "none",
						text_text = "%s",
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
						text_shadowYOffset = 0,
						text_text_format_p_time_dynamic_threshold = 60,
						text_wordWrap = "WordWrap",
						text_fontType = "OUTLINE",
						text_anchorPoint = "INNER_BOTTOMRIGHT",
						text_text_format_p_time_format = 0,
						text_text_format_p_format = "timed",
						text_fontSize = 17,
						anchorXOffset = 0,
						text_visible = true,
					}




JDT.Templates.TextRegions.TextToDisplay = { ------------------------------------ TEXT 2 TEXT TO DISPLAY
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
						["text_text_format_1.unit_abbreviate_max"] = 8,
						["text_text_format_1.unit_abbreviate"] = true,
						["text_text_format_1.unit_realm_name"] = "never",
						["text_text_format_1.unit_color"] = "class",
						["text_text_format_1.unit_format"] = "Unit",
					} 