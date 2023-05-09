local appName, JDT = ...
local AceConfigDialog = LibStub("AceConfigDialog-3.0")

JDT.Util = JDT.Util  or {}
JDT.Util.Functions = JDT.Util.Functions  or {}

JDT.Util.Functions.GetTableKeyFromEntry = function(entry,table)
    for key,value in table do
        if value == entry then
           return key
        end
      end
end


JDT.CreateOptionsFrame = function() 
    AceConfigDialog:Open(appName)
end

JDT.DebugPrint = function(msg)
    if JDT.db and JDT.db.profile.DebugMode == true then
        JDT.self:Print(msg)
    end
end

JDT.DebugDump =  function(table)
    if JDT.db and JDT.db.profile.DebugMode == true then
        DevTools_Dump(table)
    end
end