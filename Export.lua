local _, JDT = ...
JDT.exportAuras = function()
    print("running export")
    JDT.buildDataToExport()

    if WeakAuras and WeakAuras.Import then
        local wassuccesful,msg = WeakAuras.Import(JDT.DataToExport,targetAura) --https://github.com/WeakAuras/WeakAuras2/wiki/API-Documentation#import
        print(wassuccesful)
       if not wassuccesful  then
        print("Import failed: "..msg)
       end
    end
end

JDT.buildDataToExport = function(regionType,AuraName,AuraUniqueId)
    --JDT.DataToExport.d = JDT.Templates.DynamicGroup
    JDT.DataToExport.d.regionType = "icon" -- regionType
    JDT.DataToExport.d.id = "iconExperiment"-- AuraName
    JDT.DataToExport.d.uid = "iconExperimentID" --AuraUniqueId
end
