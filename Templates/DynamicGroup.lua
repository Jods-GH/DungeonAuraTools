		local _, JDT = ...
		JDT.Templates = JDT.Templates  or {}
		JDT.Templates.DynamicGroup = {
		["JODS DUNGEON TOOLS TEMPLATE GROUP"] = { -- Group Name
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"JDT Icon Template", -- [1]   -- Children Aura Names
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
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
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useLimit"] = false,
			["animate"] = false,
			["arcLength"] = 360,
			["scale"] = 1,
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
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["rotation"] = 0,
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["limit"] = 5,
			["borderOffset"] = 4,
			["gridType"] = "RD",
			["borderInset"] = 1,
			["id"] = "JODS DUNGEON TOOLS TEMPLATE GROUP",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["rowSpace"] = 1,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["internalVersion"] = 53,
			["conditions"] = {
			},
			["information"] = {
			},
			["uid"] = "4Ihows6tWX5",
		},
	}
