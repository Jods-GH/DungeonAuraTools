local _, JDT = ...
JDT.Templates = JDT.Templates  or {}

JDT.Templates.Borders = JDT.Templates.Borders or {}


JDT.Templates.Borders.BorderTemplate = {
						border_offset = 0,
						type = "subborder",
						border_color = { -------------- color of border in RGBA
						},
						border_visible = true,
						border_edge = "Square Full White",
						border_size = 2,
					}


JDT.Templates.Borders.magic = { 
							0, -- [1]
							0.5019607843137255, -- [2]
							1, -- [3]
							1, -- [4]
						}

JDT.Templates.Borders.curse= {
						0.5019607843137255, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					}

JDT.Templates.Borders.disease = {
						1, -- [1]
						0.5019607843137255, -- [2]
						0, -- [3]
						1, -- [4]
					}

JDT.Templates.Borders.poison = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
						1, -- [4]
					}

JDT.Templates.Borders.bleed= {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					}


JDT.Templates.Borders.enrage = {
						0.5137254901960784, -- [1]
						0.00392156862745098, -- [2]
						0.00392156862745098, -- [3]
						1, -- [4]
					}

JDT.Templates.Borders.interrupt = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					}

JDT.Templates.Borders.stun= {
						1, -- [1]
						1, -- [2]
						0, -- [3]
						1, -- [4]
					}

JDT.Templates.Borders.root = {
						0.9921568627450981, -- [1]
						0.792156862745098, -- [2]
						0.6352941176470588, -- [3]
						1, -- [4]
					}


JDT.Templates.Borders.snare = {
						1, -- [1]
						0.9803921568627451, -- [2]
						0.5058823529411764, -- [3]
						1, -- [4]
					}

JDT.Templates.Borders.purge = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					}