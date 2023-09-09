local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.Glows = JDT.Templates.Glows  or {}

JDT.Templates.Glows.ActionButton = {
					glowFrequency = 0.25,
					type = "subglow",
					useGlowColor = false,
					glowType = "buttonOverlay",
					glowLength = 10,
					glowYOffset = 0,
					glowColor = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					glowXOffset = 0,
					glow = false, -- false disabled, true enabled
					glowScale = 1,
					glowThickness = 1,
					glowLines = 8,
					glowBorder = false,
					glowDuration=1,
				}

JDT.Templates.Glows.Ants = 	{
					glowFrequency = 0.25,
					type = "subglow",
					useGlowColor = false,
					glowType = "ACShine",
					glowLength = 10,
					glowYOffset = 0,
					glowColor = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					glowXOffset = 0,
					glow = false,
					glowScale = 1,
					glowThickness = 1,
					glowLines = 8,
					glowBorder = false,
					glowDuration=1, 
				} 			


JDT.Templates.Glows.Pixel ={
					glowFrequency = 0.65,
					type = "subglow",
					glowDuration = 1,
					glowType = "Pixel",
					glowLength = 10,
					glowYOffset = 0,
					glowColor = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					useGlowColor = true,
					glowXOffset = 0,
					glow = true,
					glowThickness = 1,
					glowScale = 1,
					glowLines = 8,
					glowBorder = false,
				}