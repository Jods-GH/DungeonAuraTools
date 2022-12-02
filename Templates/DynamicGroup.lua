		local _, JDT = ...
		JDT.Templates = JDT.Templates  or {}
		JDT.Templates.DynamicGroup = {
			grow = "RIGHT",
			controlledChildren = {
				-- "JDT Icon Template", -- [1]   -- Children Aura Names
			},
			borderBackdrop = "Blizzard Tooltip",
			xOffset = 300,
			yOffset = -41,
			anchorPoint = "CENTER",
			borderColor = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			space = 2,
			columnSpace = 1,
			radius = 200,
			selfPoint = "TOP",
			align = "CENTER",
			stagger = 0,
			backdropColor = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			useLimit = true,
			animate = false,
			arcLength = 360,
			scale = 1,
			border = false,
			borderEdge = "Square Full White",
			regionType = "dynamicgroup",
			borderSize = 2,
			sort = "none",
			rotation = 0,
			fullCircle = true,
			constantFactor = "RADIUS",
			limit = 7,
			borderOffset = 4,
			gridType = "RD",
			borderInset = 1,
			id = "JODS DUNGEON TOOLS TEMPLATE GROUP",
			gridWidth = 5,
			frameStrata = 1,
			anchorFrameType = "SCREEN",
			rowSpace = 1,
			config = {
			},
			authorOptions = {
			},
			conditions = {
			},
			information = {
			},
			internalVersion = 59,
			url = "https://wago.io/TESTINGDONOTUSEGROUP",
			uid = "WOOOHOOO",
			desc = "This Group was auto generated please consult DungeonAuraTools by accessing /DungeonAuraTools to change anything",
	}



	


	JDT.Templates.GroupGrowTypes = JDT.Templates.GroupGrowTypes  or {}
	JDT.Templates.GroupGrowTypes.DOWN = JDT.getLocalisation("GrowDown")
	JDT.Templates.GroupGrowTypes.GRID = JDT.getLocalisation("GrowGrid")
	JDT.Templates.GroupGrowTypes.HORIZONTAL = JDT.getLocalisation("GrowHorizontal")
	JDT.Templates.GroupGrowTypes.LEFT = JDT.getLocalisation("GrowLeft")
	JDT.Templates.GroupGrowTypes.RIGHT = JDT.getLocalisation("GrowRight")
	JDT.Templates.GroupGrowTypes.UP = JDT.getLocalisation("GrowUp")
	JDT.Templates.GroupGrowTypes.VERTICAL = JDT.getLocalisation("GrowVertical")

	JDT.Templates.GridDirectionTypes = JDT.Templates.GridDirectionTypes or {}
	JDT.Templates.GridDirectionTypes.DL = JDT.getLocalisation("GridDownLeft")
	JDT.Templates.GridDirectionTypes.DR = JDT.getLocalisation("GridDownRight")
	JDT.Templates.GridDirectionTypes.LD = JDT.getLocalisation("GridLeftDown")
	JDT.Templates.GridDirectionTypes.LU = JDT.getLocalisation("GridLeftUp")
	JDT.Templates.GridDirectionTypes.RD = JDT.getLocalisation("GridRightDown")
	JDT.Templates.GridDirectionTypes.RU = JDT.getLocalisation("GridRightUp")
	JDT.Templates.GridDirectionTypes.UL = JDT.getLocalisation("GridUpLeft")
	JDT.Templates.GridDirectionTypes.UR = JDT.getLocalisation("GridUpRight")
  JDT.Templates.GridDirectionTypes.HD = JDT.getLocalisation("GridHorizontalDown")
  JDT.Templates.GridDirectionTypes.HU = JDT.getLocalisation("GridHorizontalUp")
  JDT.Templates.GridDirectionTypes.HV = JDT.getLocalisation("GridHorizontalVertical")
  JDT.Templates.GridDirectionTypes.VR = JDT.getLocalisation("GridVerticalRight")
  JDT.Templates.GridDirectionTypes.VL = JDT.getLocalisation("GridVerticalLeft")
  JDT.Templates.GridDirectionTypes.VH = JDT.getLocalisation("GridVerticalHorizontal")
  JDT.Templates.GridDirectionTypes.DH = JDT.getLocalisation("GridDownHorizontal")
  JDT.Templates.GridDirectionTypes.UH = JDT.getLocalisation("GridUpHorizontal")
  JDT.Templates.GridDirectionTypes.RV = JDT.getLocalisation("GridRightVertical")
  JDT.Templates.GridDirectionTypes.LV = JDT.getLocalisation("GridLeftVertical")


	JDT.Templates.AlignDirections = JDT.Templates.AlignDirections or {}
	JDT.Templates.AlignDirections.RIGHT = JDT.getLocalisation("AlignRight")
	JDT.Templates.AlignDirections.LEFT = JDT.getLocalisation("AlignLeft")
	JDT.Templates.AlignDirections.CENTER = JDT.getLocalisation("AlignCenter")

	JDT.Templates.GroupGrowOptionsFromType = JDT.Templates.GroupGrowOptionsFromType or {}
	JDT.Templates.GroupGrowOptionsFromType.DOWN = {
		align = {
			name = JDT.getLocalisation("alignDirection"),
			desc = JDT.getLocalisation("alignDirection"),
			type = "select",
			values = JDT.Templates.AlignDirections,
			set = function(info,val)  JDT.db.profile.AlignDirection= val end, --Sets value of SavedVariables depending on toggles
			get = function(info)
				return  JDT.db.profile.AlignDirection or "CENTER"--Sets value of toggles depending on SavedVariables 
			end
		  },
		  stagger= {
            name = JDT.getLocalisation("GrowStagger"),
            desc = JDT.getLocalisation("GrowStaggerDescription"),
            type = "range",
            softMin = -50,
            softMax = 50,
            min = -50,
            max= 50,
            step = 1,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowStagger = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowStagger or 0 --Sets value of toggles depending on SavedVariables 
            end
          },
		  space= {
            name = JDT.getLocalisation("GrowSpace"),
            desc = JDT.getLocalisation("GrowSpaceDescription"),
            type = "range",
            softMin = 0,
            softMax = 300,
            min = 0,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowSpace = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowSpace or 2 --Sets value of toggles depending on SavedVariables 
            end
          },
	}
	JDT.Templates.GroupGrowOptionsFromType.GRID={
		GridDirection = {
			name = JDT.getLocalisation("GridDirection"),
			desc = JDT.getLocalisation("GridDirection"),
			type = "select",
      order = 0,
			values = JDT.Templates.GridDirectionTypes,
			set = function(info,val)  JDT.db.profile.GridDirection= val end, --Sets value of SavedVariables depending on toggles
			get = function(info)
				return  JDT.db.profile.GridDirection or "DR"--Sets value of toggles depending on SavedVariables 
			end
		  },
		  GridSize= {
            name = JDT.getLocalisation("GridSize"),
            desc = JDT.getLocalisation("GridSizeDescription"),
            type = "range",
            softMin = 1,
            softMax = 20,
            min = 1,
            max= 20,
            step = 1,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GridSize = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GridSize or 2 --Sets value of toggles depending on SavedVariables 
            end
          },
		  GridRowSpacing= {
            name = JDT.getLocalisation("GridRowSpacing"),
            desc = JDT.getLocalisation("GridRowSpacingDescription"),
            type = "range",
            softMin = 0,
            softMax = 300,
            min = 0,
            max= 300,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GridRowSpacing = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GridRowSpacing or 2 --Sets value of toggles depending on SavedVariables 
            end
          },
		  GridColumnnSpacing= {
            name = JDT.getLocalisation("GridColumnnSpacing"),
            desc = JDT.getLocalisation("GridColumnnSpacingDescription"),
            type = "range",
            softMin = 0,
            softMax = 300,
            min = 0,
            max= 300,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GridColumnnSpacing = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GridColumnnSpacing or 2 --Sets value of toggles depending on SavedVariables 
            end
          },
	}
	JDT.Templates.GroupGrowOptionsFromType.HORIZONTAL={
		align = {
			name = JDT.getLocalisation("alignDirection"),
			desc = JDT.getLocalisation("alignDirection"),
			type = "select",
			values = JDT.Templates.AlignDirections,
			set = function(info,val)  JDT.db.profile.AlignDirection= val end, --Sets value of SavedVariables depending on toggles
			get = function(info)
				return  JDT.db.profile.AlignDirection or "CENTER"--Sets value of toggles depending on SavedVariables 
			end
		  },
		  stagger= {
            name = JDT.getLocalisation("GrowStagger"),
            desc = JDT.getLocalisation("GrowStaggerDescription"),
            type = "range",
            softMin = -50,
            softMax = 50,
            min = -50,
            max= 50,
            step = 1,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowStagger = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowStagger or 0 --Sets value of toggles depending on SavedVariables 
            end
          },
		  space= {
            name = JDT.getLocalisation("GrowSpace"),
            desc = JDT.getLocalisation("GrowSpaceDescription"),
            type = "range",
            softMin = 0,
            softMax = 300,
            min = 0,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowSpace = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowSpace or 2 --Sets value of toggles depending on SavedVariables 
            end
          },
	}
	JDT.Templates.GroupGrowOptionsFromType.LEFT={
		align = {
			name = JDT.getLocalisation("alignDirection"),
			desc = JDT.getLocalisation("alignDirection"),
			type = "select",
			values = JDT.Templates.AlignDirections,
			set = function(info,val)  JDT.db.profile.AlignDirection= val end, --Sets value of SavedVariables depending on toggles
			get = function(info)
				return  JDT.db.profile.AlignDirection or "CENTER" --Sets value of toggles depending on SavedVariables 
			end
		  },
		  stagger= {
            name = JDT.getLocalisation("GrowStagger"),
            desc = JDT.getLocalisation("GrowStaggerDescription"),
            type = "range",
            softMin = -50,
            softMax = 50,
            min = -50,
            max= 50,
            step = 1,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowStagger = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowStagger or 0 --Sets value of toggles depending on SavedVariables 
            end
          },
		  space= {
            name = JDT.getLocalisation("GrowSpace"),
            desc = JDT.getLocalisation("GrowSpaceDescription"),
            type = "range",
            softMin = 0,
            softMax = 300,
            min = 0,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowSpace = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowSpace or 2 --Sets value of toggles depending on SavedVariables 
            end
          },
	}
	JDT.Templates.GroupGrowOptionsFromType.RIGHT={
		align = {
			name = JDT.getLocalisation("alignDirection"),
			desc = JDT.getLocalisation("alignDirection"),
			type = "select",
			values = JDT.Templates.AlignDirections,
			set = function(info,val)  JDT.db.profile.AlignDirection= val end, --Sets value of SavedVariables depending on toggles
			get = function(info)
				return  JDT.db.profile.AlignDirection or "CENTER"--Sets value of toggles depending on SavedVariables 
			end
		  },
		  stagger= {
            name = JDT.getLocalisation("GrowStagger"),
            desc = JDT.getLocalisation("GrowStaggerDescription"),
            type = "range",
            softMin = -50,
            softMax = 50,
            min = -50,
            max= 50,
            step = 1,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowStagger = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowStagger or 0 --Sets value of toggles depending on SavedVariables 
            end
          },
		  space= {
            name = JDT.getLocalisation("GrowSpace"),
            desc = JDT.getLocalisation("GrowSpaceDescription"),
            type = "range",
            softMin = 0,
            softMax = 300,
            min = 0,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowSpace = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowSpace or 2 --Sets value of toggles depending on SavedVariables 
            end
          },
	}
	JDT.Templates.GroupGrowOptionsFromType.UP ={
		align = {
			name = JDT.getLocalisation("alignDirection"),
			desc = JDT.getLocalisation("alignDirection"),
			type = "select",
			values = JDT.Templates.AlignDirections,
			set = function(info,val)  JDT.db.profile.AlignDirection= val end, --Sets value of SavedVariables depending on toggles
			get = function(info)
				return  JDT.db.profile.AlignDirection or "CENTER"--Sets value of toggles depending on SavedVariables 
			end
		  },
		  stagger= {
            name = JDT.getLocalisation("GrowStagger"),
            desc = JDT.getLocalisation("GrowStaggerDescription"),
            type = "range",
            softMin = -50,
            softMax = 50,
            min = -50,
            max= 50,
            step = 1,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowStagger = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowStagger or 0 --Sets value of toggles depending on SavedVariables 
            end
          },
		  space= {
            name = JDT.getLocalisation("GrowSpace"),
            desc = JDT.getLocalisation("GrowSpaceDescription"),
            type = "range",
            softMin = 0,
            softMax = 300,
            min = 0,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowSpace = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowSpace or 2 --Sets value of toggles depending on SavedVariables 
            end
          },
	}
	JDT.Templates.GroupGrowOptionsFromType.VERTICAL={
		align = {
			name = JDT.getLocalisation("alignDirection"),
			desc = JDT.getLocalisation("alignDirection"),
			type = "select",
			values = JDT.Templates.AlignDirections,
			set = function(info,val)  JDT.db.profile.AlignDirection= val end, --Sets value of SavedVariables depending on toggles
			get = function(info)
				return  JDT.db.profile.AlignDirection or "CENTER"--Sets value of toggles depending on SavedVariables 
			end
		  },
		  stagger= {
            name = JDT.getLocalisation("GrowStagger"),
            desc = JDT.getLocalisation("GrowStaggerDescription"),
            type = "range",
            softMin = -50,
            softMax = 50,
            min = -50,
            max= 50,
            step = 1,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowStagger = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowStagger or 0 --Sets value of toggles depending on SavedVariables 
            end
          },
		  space= {
            name = JDT.getLocalisation("GrowSpace"),
            desc = JDT.getLocalisation("GrowSpaceDescription"),
            type = "range",
            softMin = 0,
            softMax = 300,
            min = 0,
            bigStep = 1,
            set = function(info,val)  JDT.db.profile.GrowSpace = val end, --Sets value of SavedVariables depending on toggles
            get = function(info)
                return  JDT.db.profile.GrowSpace or 2 --Sets value of toggles depending on SavedVariables 
            end
          },
	}
	



	
