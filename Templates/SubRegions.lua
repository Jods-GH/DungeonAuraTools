local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.SubRegions = JDT.Templates.SubRegions or {}
setmetatable(JDT.Templates.SubRegions, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

JDT.Templates.SubRegions.Ticks = {
	tick_rotation = 0,
	tick_xOffset = 0,
	tick_desaturate = false,
	use_texture = false,
	tick_placement_mode = "AtPercent",
	tick_texture = "Interface\\CastingBar\\UI-CastingBar-Spark",
	tick_length = 30,
	progressSources = {
	{
	-2,
	"",
	},
	},
	type = "subtick",
	tick_placements = {
	"12.5",
	},
	automatic_length = true,
	tick_thickness = 2,
	tick_color = {
	1,
	1,
	1,
	1,
	},
	tick_yOffset = 0,
	tick_blend_mode = "ADD",
	tick_mirror = false,
	tick_visible = true,
	}