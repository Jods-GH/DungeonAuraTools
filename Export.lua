local _, JDT = ...

JDT.exportAuras = function()
    if WeakAuras and WeakAuras.import then
        WeakAuras.Import(JDT.DataToExport,targetAura) --https://github.com/WeakAuras/WeakAuras2/wiki/API-Documentation#import
    end
end