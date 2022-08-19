local _, JDT = ...
JDT.Templates = JDT.Templates  or {}

JDT.DataToExport = {
  d = {...}, -- required: primary aura data
  c = { {...}, {...}, ...} -- optional: array of child aura data
}
