local _, JDT = ...
JDT.exportAuras = function()
    print("running export")

    if WeakAuras and WeakAuras.Import then
        local wassuccesful,msg = WeakAuras.Import(JDT.buildDataToExport(),targetAura) --https://github.com/WeakAuras/WeakAuras2/wiki/API-Documentation#import
        print(wassuccesful)
       if not wassuccesful  then
        print("Import failed: "..msg)
       end
    end
end

JDT.buildDataToExport = function()
    local ExportTable = CopyTable(JDT.DataToExport)
    ExportTable.d.id = "JodsDungeonToolsGroup"-- AuraName
    ExportTable.d.uid = "JodsDungeonToolsGroup" --AuraUniqueId
    ExportTable.d = JDT.Templates.DynamicGroup
    for TypeKey,TypeValue in pairs(JDT.db.profile) do -- iterate through all selected spells and generate table accordingly
        for k,v in pairs(TypeValue) do 
            if v.enabled == true then
            local SpellTable = CopyTable(JDT.Templates.AuraIcon) --- copy from template
            SpellTable.id = k
            SpellTable.triggers[1].trigger.auranames = { --set spellid for trigger need reworking to allow for mor triggers via trigger template
                v.spellId, -- [1]
            }

            -- generates uID's for Children and Links ParentGroup to Children and vice versa
            if v.uID then
                SpellTable.uid = v.uID
            else
            local uId = WeakAuras.GenerateUniqueID()
            SpellTable.uid = uId
            v.uID = uId
            end
            SpellTable.parent = ExportTable.d.id
            table.insert(ExportTable.d.controlledChildren,SpellTable.id)
            table.insert(ExportTable.c,SpellTable)
            end
        end
    end

    return ExportTable
end
