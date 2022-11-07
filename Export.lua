local _, JDT = ...
JDT.exportAuras = function()
    if WeakAuras and WeakAuras.Import then
        JDT.CallbackFunc("running export")
    end
end

JDT.CallbackFunc = function (result)
    local value 
    JDT.CallbackKey,value = next(JDT.db.profile.data,JDT.CallbackKey)
    if JDT.CallbackKey ~= nil then
        local exportstuff = JDT.buildDataToExport(JDT.CallbackKey,value)
        if #exportstuff.c ~= 0 then
            WeakAuras.Import(exportstuff,nil,JDT.CallbackFunc) --https://github.com/WeakAuras/WeakAuras2/wiki/API-Documentation#import  
        else
            JDT.CallbackFunc(false)
        end
    end
end




JDT.buildDataToExport = function(ExpansionKey,ExpansionValue)
    local ExportTable = CopyTable(JDT.DataToExport)
    ExportTable.d = CopyTable(JDT.Templates.DynamicGroup)
    ExpansionValue.id = "DungeonAuras_"..ExpansionKey-- AuraName
    ExpansionValue.uid  = "DungeonAuras_"..ExpansionKey.."UID" --AuraUniqueId
    ExportTable.d.id = ExpansionValue.id
    ExportTable.d.uid = ExpansionValue.uid 
    if JDT.db.profile.GroupLimit then
        ExportTable.d.limit = JDT.db.profile.GroupLimit
    end
    if JDT.db.profile.GroupGrow then
        ExportTable.d.grow = JDT.db.profile.GroupGrow
        if JDT.db.profile.GroupGrow == "GRID" then
            ExportTable.d.gridType = JDT.db.profile.GridDirection
            ExportTable.d.gridWidth = JDT.db.profile.GridSize
            ExportTable.d.rowSpace = JDT.db.profile.GridRowSpacing
            ExportTable.d.columnSpace = JDT.db.profile.GridColumnnSpacing
        else
            ExportTable.d.align = JDT.db.profile.AlignDirection
			ExportTable.d.stagger = JDT.db.profile.GrowStagger
            ExportTable.d.space = JDT.db.profile.GrowSpace
        end
    end
    if JDT.db.profile.AnchorGroupsToAffixes and ExpansionKey ~= "Affixes" then
        ExportTable.d.xOffset = 0
        ExportTable.d.yOffset = 0
        ExportTable.d.anchorFrameFrame = "WeakAuras:".."DungeonAuras_Affixes"
        ExportTable.d.anchorFrameParent = false
        ExportTable.d.anchorFrameType = "SELECTFRAME"
        ExportTable.d.anchorPoint = "TOPRIGHT"
    else
    ExportTable.d.xOffset  = JDT.db.profile.xOffset
    ExportTable.d.yOffset = JDT.db.profile.yOffset
    ExportTable.d.url = JDT.ExpansionValues[ExpansionKey]
    end
        if ExpansionKey == "Affixes" then
            for TypeKey,TypeValue in pairs(ExpansionValue.Auras) do
                for k,v in pairs(TypeValue) do 
                    if v.enabled == true then
                        JDT.buildAura(ExportTable,{groupName= ExpansionValue.groupName},{additionalName = ""},TypeKey,v,ExpansionValue,ExpansionKey)              
                    end
                end 
            end
        else
            for DungeonKey,DungeonValue in pairs(ExpansionValue.Dungeons) do 
                for  BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do  
                        for TypeKey,TypeValue in pairs(BossNameValue.Auras) do -- iterate through all selected spells and generate table accordingly
                            for k,v in pairs(TypeValue) do 
                                if v.enabled == true then
                                    JDT.buildAura(ExportTable,DungeonValue,BossNameValue,TypeKey,v,ExpansionValue,ExpansionKey)         
                                end
                            end
                    end
                end
            end
        end
    return ExportTable
end

JDT.buildAura = function(ExportTable,DungeonValue,BossNameValue,TypeKey,v,ExpansionValue,ExpansionKey) 
                                local AuraTemplate = JDT.Templates.GroupTypes[TypeKey]
                                local SpellTable = CopyTable(JDT.Templates[AuraTemplate.AuraType]) --- copy from template

                                --set general options
                                SpellTable.subRegions[2].text_visible = JDT.db.profile.ShowTimer -- enable/disable %p



                                --- create triggers 
                                local TriggerTable =  CopyTable(JDT.Templates.Triggers.ActivationTemplate) 
                                TriggerTable.disjunctive = AuraTemplate.activationType
                                if AuraTemplate.activationType == JDT.Templates.Triggers.ActivationTypes.custom then
                                    TriggerTable.customTriggerLogic = AuraTemplate.customTriggerLogic
                                end
                                                               
                                for trigger = 1,#AuraTemplate.triggers, 1 do
                                    local AuraTrigger = JDT.generateTriggerfromGroupType[AuraTemplate.triggers[trigger].triggerType](v.triggerData[trigger],AuraTemplate.triggers[trigger])
                                    tinsert(TriggerTable,AuraTrigger)
                                end
                                SpellTable.triggers = TriggerTable

                                -- create Conditions
                                if AuraTemplate.conditions then
                                    SpellTable.conditions = AuraTemplate.conditions
                                end
                                
                                -- set Fallback icon and display name
                                local Spellname, Spellrank, Spellicon, SpellcastTime, SpellminRange, SpellmaxRange, SpellID = GetSpellInfo(v.spellId) 
                                SpellTable.displayIcon = Spellicon
                                SpellTable.id = DungeonValue.groupName..BossNameValue.additionalName..Spellname.." ["..SpellID.."]"-- set AuraName
                                if v.extraName then -- add extra stuff if needed to not have duplicate id's
                                    SpellTable.id= SpellTable.id..v.extraName 
                                end

                                -- set CooldownTexts and Iconsize depending on options
                                if JDT.db.profile.CooldownTextFontSize then
                                    SpellTable.subRegions[2].text_fontSize = JDT.db.profile.CooldownTextFontSize
                                end
                                if JDT.db.profile.HideCooldownText then
                                    SpellTable.cooldownTextDisabled = JDT.db.profile.HideCooldownText 
                                end
                                if JDT.db.profile.IconWidth and JDT.db.profile.IconHeight then
                                    SpellTable.width = JDT.db.profile.IconWidth -- width of icon
				                    SpellTable.height = JDT.db.profile.IconHeight -- height of icon
                                end
                                -- set Text to display below Aura (telling you what to do)
                                for textkey,textvalue in pairs(AuraTemplate.text) do
                                    local TextTemplate = CopyTable(JDT.Templates.TextRegions.TextToDisplay)
                                    TextTemplate.text_text = textvalue.value
                                    TextTemplate.text_visible = textvalue.isactive
                                    if JDT.db.profile.FontOptions then
                                        TextTemplate.text_font = JDT.db.profile.FontOptions
                                    end
                                    if JDT.db.profile.TextFontSize  then
                                        TextTemplate.text_fontSize = JDT.db.profile.TextFontSize
                                    end
                                   
                                    TextTemplate["text_text_format_"..textkey..".unit_abbreviate_max"] = 8
                                    TextTemplate["text_text_format_"..textkey..".unit_abbreviate"] = true
                                    TextTemplate["text_text_format_"..textkey..".unit_realm_name"] = "never"
                                    TextTemplate["text_text_format_"..textkey..".unit_color"] = "class"
                                    TextTemplate["text_text_format_"..textkey..".unit_format"] = "Unit"
                                    tinsert(SpellTable.subRegions,TextTemplate)
                            
                                end
                                -- set sound
                                if AuraTemplate.doSound and JDT.db.profile.PlaySound then -- set Sound
                                    SpellTable.actions.start.sound = AuraTemplate.doSound
                                    SpellTable.actions.start.do_sound = true
                                end
                                -- set glow
                                if AuraTemplate.glowtype then -- add glow
                                    local GlowTemplate = JDT.Templates.Glows[AuraTemplate.glowtype]
                                    if AuraTemplate.useGlowColor then
                                        GlowTemplate.useGlowColor = true
                                    end
                                    if AuraTemplate.showGlow then
                                        GlowTemplate.glow = true
                                    end
                                    tinsert(SpellTable.subRegions,GlowTemplate)
                                elseif v.glowtype then
                                    local GlowTemplate = JDT.Templates.Glows[v.glowtype]
                                    if v.useGlowColor then
                                        v.useGlowColor = true
                                    end
                                    if v.showGlow then
                                        GlowTemplate.glow = true
                                    end
                                    tinsert(SpellTable.subRegions,GlowTemplate)
                                end
                                -- set %tooltip value if needed
                                if AuraTemplate.useTooltip then
                                    local TextTemplate = CopyTable(JDT.Templates.TextRegions.TooltipDisplay)
                                    TextTemplate.text_text = "%"..AuraTemplate.useTooltip..".tooltip1"
                                    TextTemplate["text_text_format_"..AuraTemplate.useTooltip..".tooltip1_format"] = "BigNumber"
                                    TextTemplate["text_text_format_"..AuraTemplate.useTooltip..".tooltip1_big_number_format"] = "AbbreviateNumbers"

                                    tinsert(SpellTable.subRegions,TextTemplate)
                                end
                                -- set %health value if needed
                                if AuraTemplate.useHealth then
                                    local TextTemplate = CopyTable(JDT.Templates.TextRegions.HealthDisplay)
                                    TextTemplate.text_text = "%"..AuraTemplate.useHealth..".health"
                                    TextTemplate["text_text_format_"..AuraTemplate.useHealth..".health_format"] = "BigNumber"
                                    TextTemplate["text_text_format_"..AuraTemplate.useHealth..".health_big_number_format"] = "AbbreviateNumbers"
                                    tinsert(SpellTable.subRegions,TextTemplate)
                                end
                                -- set %count value if needed
                                if AuraTemplate.useCount then
                                    local TextTemplate = CopyTable(JDT.Templates.TextRegions.Count)
                                    tinsert(SpellTable.subRegions,TextTemplate)
                                end
                                -- set %p if needed
                               if AuraTemplate.useProgress then
                                    local TextTemplate = CopyTable(JDT.Templates.TextRegions.Progress)
                                    TextTemplate.text_text = "%"..AuraTemplate.useProgress..".p"
                                    tinsert(SpellTable.subRegions,TextTemplate)
                               end

                                                            
                               -- set %s if needed 
                                if v.showStacks then -- add Text for Stacks display if needed
                                    local StacksText = CopyTable(JDT.Templates.TextRegions.Stacks)
                                    StacksText.text_text = "%"..v.showStacks..".s"
                                    if v.additionalStackText then
                                        StacksText.text_text =  StacksText.text_text.." "..v.additionalStackText
                                    end
                                    table.insert(SpellTable.subRegions,StacksText)
                                elseif AuraTemplate.showStacks then
                                    local StacksText = CopyTable(JDT.Templates.TextRegions.Stacks)
                                    StacksText.text_text = "%"..AuraTemplate.showStacks..".s"
                                    if AuraTemplate.additionalStackText then
                                        StacksText.text_text =  StacksText.text_text.." "..AuraTemplate.additionalStackText
                                    end
                                    table.insert(SpellTable.subRegions,StacksText)
                                end
                                -- set Border and %c depending on JDT.Auratype
                                if AuraTemplate.type then
                                   
                                    if type(AuraTemplate.type) == "table" then
                                        for borderkey, bordevalue in ipairs(AuraTemplate.type) do
                                            local CustomText = CopyTable(JDT.Templates.TextRegions.CustomText)
                                            CustomText.text_text = "%c"..borderkey
                                            CustomText.text_visible = bordevalue.visible
                                            table.insert(SpellTable.subRegions,CustomText)
                                            local BorderTable = CopyTable(JDT.Templates.Borders.BorderTemplate)
                                            BorderTable.border_color = JDT.Templates.Borders[bordevalue.type]
                                            BorderTable.border_visible = bordevalue.visible
                                            table.insert(SpellTable.subRegions,BorderTable)
                                        end
                                        SpellTable.customText = JDT.Templates.CustomTextIcons.generator(AuraTemplate.type)
                                    else
                                    local CustomText = CopyTable(JDT.Templates.TextRegions.CustomText)
                                    table.insert(SpellTable.subRegions,CustomText)
                                    SpellTable.customText = JDT.Templates.CustomTextIcons[AuraTemplate.type]
                                    local BorderTable = CopyTable(JDT.Templates.Borders.BorderTemplate)
                                    BorderTable.border_color = JDT.Templates.Borders[AuraTemplate.type]
                                    table.insert(SpellTable.subRegions,BorderTable)
                                    end
                        
                                    
                                elseif v.type then -- add border color and custom text if needed
                                    local CustomText = CopyTable(JDT.Templates.TextRegions.CustomText)
                                    table.insert(SpellTable.subRegions,CustomText)
                                    
                                    SpellTable.customText = JDT.Templates.CustomTextIcons[v.type]

                                    local BorderTable = CopyTable(JDT.Templates.Borders.BorderTemplate)
                                    BorderTable.border_color = JDT.Templates.Borders[v.type]
                                    table.insert(SpellTable.subRegions,BorderTable)
                                end
                                -- set %debuffclass if needed
                                if AuraTemplate.useDebuffClass then
                                    local CustomText = CopyTable(JDT.Templates.TextRegions.DebuffClassIcon)
                                    CustomText.text_visible = AuraTemplate.debuffClassDefaultValue
                                    table.insert(SpellTable.subRegions,CustomText)
                                end

                                 -- set load conditions
                                 if DungeonValue.zoneId then 
                                    SpellTable.load.use_zoneIds = true
                                    SpellTable.load.zoneIds = DungeonValue.zoneId
                                end
                                if BossNameValue.EncounterId then
                                    SpellTable.load.use_encounterid = true
                                    SpellTable.load.encounterid = BossNameValue.EncounterId
                                end
                                if ExpansionValue.instanceSizeType then
                                    SpellTable.load.use_size = true
                                    SpellTable.load.size = {
                                        single = ExpansionValue.instanceSizeType,
                                    }
                                end
                                if ExpansionValue.instanceDifficulty then
                                    SpellTable.load.use_difficulty = true
                                    SpellTable.load.difficulty = {
                                        single = ExpansionValue.instanceDifficulty,
                                    }
                                end

                                if v.affixId then
                                    SpellTable.load.use_affixes = true
                                    SpellTable.load.affixes = {
                                        single = v.affixId,
                                    }
                                end
                                
                                if v.RoleLoad then
                                    if type(v.RoleLoad) == "table" then
                                        SpellTable.load.use_role = false
                                        SpellTable.load.role.multi =  v.RoleLoad
                                    else
                                        SpellTable.load.use_role = true
                                        SpellTable.load.role.single =  v.RoleLoad
                                    end
                                end
                                
                                if v.loadInBossfight ~= nil then
                                    SpellTable.load.use_encounter = v.loadInBossfight
                                end
                            


                                -- generates uID's for Children and Links ParentGroup to Children and vice versa
                                if v.uID then
                                    SpellTable.uid = v.uID
                                else
                                local uId = WeakAuras.GenerateUniqueID()
                                v.uID = uId
                                SpellTable.uid = v.uID
                                end
                                SpellTable.url = JDT.ExpansionValues[ExpansionKey][1]
                                SpellTable.parent = ExportTable.d.id
                                table.insert(ExportTable.d.controlledChildren,SpellTable.id)
                                table.insert(ExportTable.c,SpellTable)
                                return SpellTable
end

-- Trigger generators need addition value for other trigger types



JDT.generateTriggerfromGroupType = JDT.generateTriggerfromGroupType or {}

JDT.generateTriggerfromGroupType.Buffs = function(triggerData,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    AuraTrigger.trigger.debuffType = JDT.Templates.Triggers.BuffTypes[AuraTemplate.BuffTypes] -- sets harmful or helpful to define buff/debuff
    if type(triggerData.spellId) =="table" then
        for index, value in ipairs(triggerData.spellId) do
            tinsert(AuraTrigger.trigger.auranames,value)
        end
    else
        AuraTrigger.trigger.auranames = { --set spellid for trigger
        triggerData.spellId, -- [1]
        }
    end
    if triggerData.ignoreSelf then
        AuraTrigger.trigger.ignoreSelf = triggerData.ignoreSelf
    end
    if triggerData.exactSpellId then
        AuraTrigger.trigger.use_spellId = triggerData.exactSpellId
    end
    AuraTrigger.trigger.unit = triggerData.unit
    return AuraTrigger
end

JDT.generateTriggerfromGroupType.Cast = function(triggerData,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    if triggerData.spellId then
    AuraTrigger.trigger.use_spellId = true
    AuraTrigger.trigger.spellId = triggerData.spellId --set spellid for trigger
    end
    AuraTrigger.trigger.unit = triggerData.unit
    if AuraTemplate.target then
        AuraTrigger.trigger.destUnit = AuraTemplate.target
        AuraTrigger.trigger.use_destUnit = true
    end
    if triggerData.exactSpellId then
        AuraTrigger.trigger.use_exact_spellId = triggerData.exactSpellId
    end
    return AuraTrigger
end

JDT.generateTriggerfromGroupType.TSU= function(triggerData,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    local Trigger = JDT.Templates.CustomTriggers[AuraTemplate.customPreset](triggerData)
    AuraTrigger.trigger.custom = Trigger.customTrigger
    AuraTrigger.trigger.events = Trigger.customEvents
    if Trigger.customVariables then
        AuraTrigger.trigger.customVariables = Trigger.customVariables
    end

    return AuraTrigger
end

JDT.generateTriggerfromGroupType.UnitResource = function(triggerData,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    AuraTrigger.trigger.percentpower = AuraTemplate.percentpower--set power to check for trigger
    AuraTrigger.trigger.unit = triggerData.unit
    return AuraTrigger
end

JDT.generateTriggerfromGroupType.UnitHealth = function(triggerData,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    if triggerData.npcID then
        AuraTrigger.trigger.use_npcId = true -- if npc id should be used
        AuraTrigger.trigger.npcId = triggerData.npcID -- npc id to use
    end 
    AuraTrigger.trigger.unit = triggerData.unit
    return AuraTrigger
end

JDT.generateTriggerfromGroupType.CombatLog = function(triggerData,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    AuraTrigger.trigger.spellId = triggerData.spellId --set spellid for trigger
    AuraTrigger.trigger.duration = triggerData.duration
    if AuraTemplate.subeventSuffix then
        AuraTrigger.trigger.subeventSuffix = AuraTemplate.subeventSuffix
    end
    return AuraTrigger
end

JDT.generateTriggerfromGroupType.MonsterYell = function(triggerData,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    AuraTrigger.trigger.duration = triggerData.duration
    if triggerData.destName then
        AuraTrigger.trigger.destName = triggerData.destName
        AuraTrigger.trigger.use_destName = true
    end
    return AuraTrigger
end

JDT.generateTriggerfromGroupType.UnitSpellcastSucceeded = function(triggerData,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    AuraTrigger.trigger.spellId = triggerData.spellId --set spellid for trigger
    AuraTrigger.trigger.duration = triggerData.duration
    return AuraTrigger
end