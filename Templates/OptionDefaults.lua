local _, JDT = ...

JDT.OptionDefaults = {
	profile = {
	  DebugMode = false,
	  data = JDT.SpellList,
	  IconWidth = 80,
	  IconHeight = 80,
	  xOffset = 0,
	  yOffset = 0,
	  GroupLimit = 7,
	  CooldownTextFontSize = 17,
	  FontOptions = "Friz Quadrata TT",
	  TextFontSize = 17,
	  SoundKey = {},
	  SoundOptions = JDT.SoundDefaults,
	  ExportOnDungeonEntry = false,
	  AlignDirection = "CENTER",
	  zoom = 0,
	}
  }

  for SoundKey in pairs (JDT.SoundTypes) do
	JDT.OptionDefaults.profile.SoundKey[SoundKey] = true
  end

