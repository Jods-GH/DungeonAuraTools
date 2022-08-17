local appName, JDT = ...
local AceLocale = LibStub ('AceLocale-3.0')
local currentLocale = LibStub ('AceLocale-3.0'):GetLocale (appName, true)
JDT.getLocalisation = function(Object)
      return currentLocale[Object]

end
