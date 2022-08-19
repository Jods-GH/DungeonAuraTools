local _, JDT = ...
JDT.exportAuras = function()
    print("running export")

    if WeakAuras and WeakAuras.Import then
        local wassuccesful,msg = WeakAuras.Import(JDT.buildDataToExport(),targetAura) --https://github.com/WeakAuras/WeakAuras2/wiki/API-Documentation#import
       if msg  then
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
            local Spellname, Spellrank, Spellicon, SpellcastTime, SpellminRange, SpellmaxRange, SpellID = GetSpellInfo(v.spellId) 
            SpellTable.displayIcon = Spellicon
            if v.doSound then
                SpellTable.actions.start.sound = SpellTable.actions.start.sound..v.doSound..".ogg"
                SpellTable.actions.start.do_sound = true
            end
            if v.zoneId then
                SpellTable.load.use_zoneIds = true
                SpellTable.load.zoneIds = v.zoneId
            end


            if v.showStacks then
                local StacksText = CopyTable(JDT.Templates.TextRegions.Stacks)
                table.insert(SpellTable.subRegions,StacksText)
            end

            if v.type then -- add border color and custom text
                local CustomText = CopyTable(JDT.Templates.TextRegions.CustomText)
                table.insert(SpellTable.subRegions,CustomText)
                
                SpellTable.customText = JDT.Templates.CustomTextIcons[v.type]

                local BorderTable = CopyTable(JDT.Templates.Borders.BorderTemplate)
                BorderTable.border_color = JDT.Templates.Borders[v.type]
                table.insert(SpellTable.subRegions,BorderTable)
            end

        


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
