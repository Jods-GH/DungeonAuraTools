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
        if DevTool then 
            DevTool:AddData(table, "JDT Debug Dump")
        end
        DevTools_Dump(table)
    end
end

JDT.GetSpellInfo = function(spellID)
    if not spellID then
        return nil;
    end

    local spellInfo = C_Spell.GetSpellInfo(spellID);
    if spellInfo then
        return spellInfo.name, nil, spellInfo.iconID, spellInfo.castTime, spellInfo.minRange, spellInfo.maxRange, spellInfo.spellID, spellInfo.originalIconID;
    end
end
