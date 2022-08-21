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
    
    for ExpansionKey,ExpansionValue in pairs(JDT.db.profile) do 
        for DungeonKey,DungeonValue in pairs(ExpansionValue) do 
            for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do  
                    for TypeKey,TypeValue in pairs(BossNameValue.Auras) do -- iterate through all selected spells and generate table accordingly
                        for k,v in pairs(TypeValue) do 
                            if v.enabled == true then

                            local AuraTemplate = JDT.GroupTypes.Templates[TypeKey]

                            local SpellTable = CopyTable(JDT.Templates[AuraTemplate.AuraType]) --- copy from template

                            --- create trigger need addition value for other trigger types
                            local TriggerTable =  CopyTable(JDT.Templates.Triggers.ActivationTemplate) 
                            TriggerTable.disjunctive = AuraTemplate.activationType
                            DevTools_Dump(AuraTemplate)
                            for trigger,triggervalue in pairs(AuraTemplate.triggers) do
                                local AuraTrigger = JDT.generateTriggerfromGroupType[triggervalue.triggerType](v.spellId,triggervalue)
                                tinsert(TriggerTable,1,AuraTrigger)
                            end
                            SpellTable.triggers = TriggerTable
                            
                            -- set Fallback icon and display name
                            local Spellname, Spellrank, Spellicon, SpellcastTime, SpellminRange, SpellmaxRange, SpellID = GetSpellInfo(v.spellId) 
                            SpellTable.displayIcon = Spellicon
                            SpellTable.id = DungeonValue.groupName..BossNameValue.additionalName..Spellname

                            if AuraTemplate.doSound then -- set Sound
                                SpellTable.actions.start.sound = AuraTemplate.doSound
                                SpellTable.actions.start.do_sound = true
                            end
                            if v.zoneId then -- set ZoneIds
                                SpellTable.load.use_zoneIds = true
                                SpellTable.load.zoneIds = v.zoneId
                            end
                            if v.groupType then -- set Text to display below Aura (telling you what to do)
                                SpellTable.subRegions[3].text_text = v.groupType 
                            end
                            
                            if v.showStacks then -- add Text for Stacks display if needed
                                local StacksText = CopyTable(JDT.Templates.TextRegions.Stacks)
                                table.insert(SpellTable.subRegions,StacksText)
                            end

                            if v.type then -- add border color and custom text if needed
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
                end
            end
    end

    return ExportTable
end


-- Trigger generators

JDT.generateTriggerfromGroupType = JDT.generateTriggerfromGroupType or {}

JDT.generateTriggerfromGroupType.Buffs = function(spellId,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    AuraTrigger.trigger.debuffType = JDT.Templates.Triggers.BuffTypes[AuraTemplate.BuffTypes] -- sets harmful or helpful to define buff/debuff
    AuraTrigger.trigger.auranames = { --set spellid for trigger
    spellId, -- [1]
    }
    return AuraTrigger
end

JDT.generateTriggerfromGroupType.Cast = function(spellId,triggervalue)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[triggervalue.triggerType])
    AuraTrigger.trigger.spellId = spellId --set spellid for trigger
    return AuraTrigger
end
