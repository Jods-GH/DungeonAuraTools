local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.CustomTextIcons = JDT.Templates.CustomTextIcons or {}

JDT.Templates.CustomText = { ------------------------------------------ TEXT 4 %c can remove this if custom text is not needed (custom text function is declared further up in customText)
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
					}, 


JDT.Templates.CustomTextIcons.magic = "function()\n   return WeakAuras.EJIcons.magic \nend"
JDT.Templates.CustomTextIcons.curse = "function()\n   return WeakAuras.EJIcons.curse \nend"
JDT.Templates.CustomTextIcons.disease = "function()\n   return WeakAuras.EJIcons.disease \nend"
JDT.Templates.CustomTextIcons.poison = "function()\n   return WeakAuras.EJIcons.poison \nend"
JDT.Templates.CustomTextIcons.bleed = "function()\n   return WeakAuras.EJIcons.bleed \nend"
JDT.Templates.CustomTextIcons.enrage = "function()\n   return WeakAuras.EJIcons.enrage \nend"
JDT.Templates.CustomTextIcons.interrupt= "function()\n   return WeakAuras.EJIcons.interrupt \nend"
JDT.Templates.CustomTextIcons.root = "function()\n   return '|T236922:18|t'  \nend"
JDT.Templates.CustomTextIcons.snare = "function()\n   return '|T132309:18|t' \nend"
JDT.Templates.CustomTextIcons.stun = "function()\n   return '|T135860:16|t' \nend"