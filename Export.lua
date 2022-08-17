local _, JDT = ...
JDT.exportAuras = function()
    print("running export")
    --JDT.buildDataToExport()

    if WeakAuras and WeakAuras.Import then
       local wassuccesful,error = WeakAuras.Import(JDT.DataToExport,targetAura) --https://github.com/WeakAuras/WeakAuras2/wiki/API-Documentation#import
       print(wassuccesful)
       if wassuccesful == false then
        self:Print("Import failed: "..error)
       end
    end
end