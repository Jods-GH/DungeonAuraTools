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
JDT.exportCompanion = function(AuraUpdatesTable)
    local WeakaurasData = CopyTable(JDT.Templates.JodsCompanionData)
    for k,v in pairs(JDT.db.profile.data) do
        if AuraUpdatesTable[k] then
            local exportstuff = JDT.buildDataToExport(k,v,true)           
            local encoded = TableToString(exportstuff)
            local slug = CopyTable(JDT.Templates.WeakAurasCompanionSlugData)
            slug.name = exportstuff.d.id
            slug.encoded = encoded
            local slugname, version = exportstuff.d.url:match("wago.io/([^/]+)/([0-9]+)")
            if slugname then
                WeakaurasData.WeakAuras.slugs[slugname] = slug
                WeakaurasData.WeakAuras.slugs[slugname].wagoVersion = exportstuff.d.version+1
                WeakaurasData.WeakAuras.slugs[slugname].wagoSemver = "1.0.0-"..exportstuff.d.version+1
                WeakaurasData.WeakAuras.slugs[slugname].logo = "Interface\\AddOns\\DungeonAuraTools\\Files\\DungeonAuraTools.tga"
                WeakaurasData.WeakAuras.slugs[slugname].refreshLogo = "Interface\\AddOns\\DungeonAuraTools\\Files\\DungeonAuraTools.tga"
            end
        end
    end
    local JodsCompanionData = WeakaurasData.WeakAuras
    WeakAuras.AddCompanionData(JodsCompanionData)
end
local LibDeflate = LibStub:GetLibrary("LibDeflate")
local LibSerialize = LibStub("LibSerialize")
local configForLS = {
    errorOnUnserializableType =  false
  }
local configForDeflate = {level = 9}
local compressedTablesCache = {}
function TableToString(inTable) -- code from WeakAuras
    local serialized = LibSerialize:SerializeEx(configForLS, inTable)
    local compressed
    -- get from / add to cache
    if compressedTablesCache[serialized] then
      compressed = compressedTablesCache[serialized].compressed
      compressedTablesCache[serialized].lastAccess = time()
    else
      compressed = LibDeflate:CompressDeflate(serialized, configForDeflate)
      compressedTablesCache[serialized] = {
        compressed = compressed,
        lastAccess = time(),
      }
    end
    -- remove cache items after 5 minutes
    for k, v in pairs(compressedTablesCache) do
      if v.lastAccess < (time() - 300) then
        compressedTablesCache[k] = nil
      end
    end
    local encoded = "!WA:2!"
    encoded = encoded .. LibDeflate:EncodeForPrint(compressed)
    return encoded
end
JDT.buildDataToExport = function(ExpansionKey,ExpansionValue,shouldIncrimentVersion) 
    local ExportTable = JDT.CreateGroupToExport(ExpansionKey,ExpansionValue,shouldIncrimentVersion)
    if ExpansionKey == "Affixes" then -- special handling because there is no "dungeons" subtable in this group
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
    table.sort(ExportTable.c, JDT.sortExportAuraChildren)
    return ExportTable
end

JDT.CreateGroupToExport = function(ExpansionKey,ExpansionValue,shouldIncrimentVersion)
    local ExportTable = CopyTable(JDT.DataToExport) -- get a copy of the ExportTemplate
    ExportTable.d = CopyTable(JDT.Templates.DynamicGroup) -- get a Copy of the DynamicGroup Template
    -- set Aura Name
    ExpansionValue.id = "DungeonAuras_"..ExpansionKey
    ExportTable.d.id = ExpansionValue.id
    -- set Aura Unique Identifier
    ExpansionValue.uid  = "DungeonAuras_"..ExpansionKey.."UID" 
    ExportTable.d.uid = ExpansionValue.uid 
    -- set wagoID
    ExpansionValue.wagoID = ExpansionValue.uid 
    ExportTable.d.wagoID = ExpansionValue.wagoID
    -- set update preference
    ExpansionValue.preferToUpdate = false
    ExportTable.d.preferToUpdate = ExpansionValue.preferToUpdate
    -- calculate and set version number
    local version = ExpansionValue.version or 0
    if shouldIncrimentVersion then
        version = version + 1
    end
    --export table version
    ExpansionValue.version = version
    ExpansionValue.semver = "1.0."..ExpansionValue.version
    -- group version
    ExportTable.d.version = ExpansionValue.version
    ExportTable.d.semver = ExpansionValue.semver
    -- set url so updating works (because of how WA internal updating works)
    ExportTable.d.url = "https://wago.io/DungeonAuras_"..ExpansionKey.."/"..version 
    -- calculate and set tocversion
    local _,_,_,tocversion = GetBuildInfo()
    ExpansionValue.tocversion = tocversion 
    ExportTable.d.tocversion = ExpansionValue.tocversion
    -- set source
    ExpansionValue.source = "import"
    ExportTable.d.source = ExpansionValue.source
    assert(JDT.InternalWaVersion, "Internal WA Version not set!")
    ExportTable.d.internalVersion = JDT.InternalWaVersion

    if JDT.db.profile.GroupLimit then
        ExportTable.d.limit = JDT.db.profile.GroupLimit
    end
    if JDT.db.profile.GroupGrow then
        ExportTable.d.grow = JDT.db.profile.GroupGrow
        if JDT.db.profile.GroupGrow == "GRID" then -- special handling for GRID type
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
    
    if JDT.db.profile.AnchorGroupsToAffixes and ExpansionKey ~= "Affixes" then -- special handling for affix anchoring (kind of useless does not work as intended)
        ExportTable.d.xOffset = 0
        ExportTable.d.yOffset = 0
        ExportTable.d.anchorFrameFrame = "WeakAuras:".."DungeonAuras_Affixes"
        ExportTable.d.anchorFrameParent = false
        ExportTable.d.anchorFrameType = "SELECTFRAME"
        ExportTable.d.anchorPoint = "TOPRIGHT"
    else
        ExportTable.d.xOffset  = JDT.db.profile.xOffset
        ExportTable.d.yOffset = JDT.db.profile.yOffset
    end
    return ExportTable
end

JDT.sortExportAuraChildren = function (a, b) -- sorts the auras in the export table: first by dungeon then by boss then trash after
    local aPrefix = a.id:match("%[(.-)%]")
    local bPrefix = b.id:match("%[(.-)%]")
    local aNoTrash,aHasTrash = string.gsub(aPrefix,"TRASH","")
    local bNoTrash,bHasTrash = string.gsub(bPrefix,"TRASH","")

    if (aHasTrash == 1) and (bHasTrash == 1)then -- checks if both auras have "TRASH" in their name
        if aNoTrash == bNoTrash then -- if they do check if the dungeon name is the same
            return a.id < b.id  -- if it is sort by aura id
        else
            return aNoTrash < bNoTrash  -- if it is not sort by dungeon name
        end
    elseif (aHasTrash == 1) and not (bHasTrash == 1) then   -- checks if only aura a has "TRASH" in its name
        if aNoTrash == bNoTrash then    -- if it does check if the dungeon name is the same
            return false        -- if it is sort a first
        else
            return aNoTrash < bNoTrash  -- if it is not sort by dungeon name
        end
    elseif (bHasTrash== 1) and not (aHasTrash== 1) then     -- checks if only aura b has "TRASH" in its name
        if aNoTrash == bNoTrash then    -- if it does check if the dungeon name is the same
            return true     -- if it is sort b first
        else
            return aNoTrash < bNoTrash  -- if it is not sort by dungeon name
        end
    else
        return a.id < b.id  -- if neither aura has "TRASH" in its name sort by aura id
    end
end

JDT.buildAura = function(ExportTable,DungeonValue,BossNameValue,TypeKey,v,ExpansionValue,ExpansionKey,numberOfAuras) 
    assert(JDT.Templates.GroupTypes[TypeKey] , "Error: Template for Aura in "..DungeonValue.groupName.." boss: "..BossNameValue.additionalName.." not found") -- checks if Group type is set properly
    local AuraTemplate = JDT.Templates.GroupTypes[TypeKey]  -- get template for aura
    local SpellTable = CopyTable(JDT.Templates[AuraTemplate.AuraType]) --- copy from template

    --set general options
    if JDT.db.profile.ShowTimer then
        SpellTable.subRegions[2].text_visible = JDT.db.profile.ShowTimer -- enable/disable %p
    end
    
    -- set Fallback icon and display name
    assert(v.spellId, "Error: Spellid not found in Aura in "..DungeonValue.groupName.." boss: "..BossNameValue.additionalName) -- checks if spellid is set properly
    local Spellname, _, Spellicon, _, _, _, SpellID = GetSpellInfo(v.spellId) 
    SpellTable.displayIcon = Spellicon
    SpellTable.id = DungeonValue.groupName..BossNameValue.additionalName..Spellname.." ["..SpellID.."]"-- set AuraName
    if v.extraName then -- add extra stuff if needed to not have duplicate id's
        SpellTable.id= SpellTable.id..v.extraName 
    end

    --- create triggers 
    local TriggerTable =  CopyTable(JDT.Templates.Triggers.ActivationTemplate) 
    TriggerTable.disjunctive = AuraTemplate.activationType
    if AuraTemplate.activationType == JDT.Templates.Triggers.ActivationTypes.custom then -- set activation type to custom and add custom trigger logic if needed
        TriggerTable.customTriggerLogic = AuraTemplate.customTriggerLogic
    end
                                    
    for trigger = 1,#AuraTemplate.triggers, 1 do -- iterate through all triggers and generate them
        assert(v.triggerData and v.triggerData[trigger] , "Error: Triggerinfo for trigger"..trigger.." in Aura "..v.spellId.." in "..DungeonValue.groupName.." boss: "..BossNameValue.additionalName.." not found") -- checks if trigger data is set properly
        local AuraTrigger = JDT.generateTriggerfromGroupType[AuraTemplate.triggers[trigger].triggerType](v.triggerData[trigger],AuraTemplate.triggers[trigger])
        tinsert(TriggerTable,AuraTrigger)
    end
    SpellTable.triggers = TriggerTable

    -- create Conditions
    if AuraTemplate.conditions then
        SpellTable.conditions = AuraTemplate.conditions
    end

    -- set CooldownTexts and Iconsize depending on options
    if JDT.db.profile.CooldownTextFontSize then
        SpellTable.subRegions[2].text_fontSize = JDT.db.profile.CooldownTextFontSize
    end
    if AuraTemplate.HideCooldownText then
        SpellTable.cooldownTextDisabled = AuraTemplate.HideCooldownText
    elseif JDT.db.profile.HideCooldownText then
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
        

        for number, unit in textvalue.value:gmatch("%%(%d+)%.(%a+)") do -- if text  contains unit set replacement settings
            TextTemplate["text_text_format_"..number.."."..unit.."_abbreviate_max"] = 8
            TextTemplate["text_text_format_"..number.."."..unit.."_abbreviate"] = true
            TextTemplate["text_text_format_"..number.."."..unit.."_realm_name"] = "never"
            TextTemplate["text_text_format_"..number.."."..unit.."_color"] = "class"
            TextTemplate["text_text_format_"..number.."."..unit.."_format"] = "Unit"
            end
                                            
        tinsert(SpellTable.subRegions,TextTemplate)

    end
    -- set sound
    if AuraTemplate.doSound and JDT.db.profile.PlaySound and (JDT.db.profile.SoundKey and JDT.db.profile.SoundKey[JDT.TypesSound[AuraTemplate.doSound]] == true or not JDT.db.profile.SoundKey) then -- set Sound  JDT.Util.Functions.GetTableKeyFromEntry(AuraTemplate.doSound,JDT.SoundTypes)
        SpellTable.actions.start.sound = AuraTemplate.doSound
        SpellTable.actions.start.do_sound = true
    end
    -- set glow
    if AuraTemplate.glowtype then -- add glow
        local GlowTemplate =  CopyTable(JDT.Templates.Glows[AuraTemplate.glowtype])
        if AuraTemplate.useGlowColor then
            GlowTemplate.useGlowColor = AuraTemplate.useGlowColor
        end
        if AuraTemplate.showGlow then
            GlowTemplate.glow = AuraTemplate.showGlow
        end
        tinsert(SpellTable.subRegions,GlowTemplate)
    elseif v.glowtype then
        local GlowTemplate =  CopyTable(JDT.Templates.Glows[v.glowtype])
        if v.useGlowColor then
            GlowTemplate.useGlowColor = v.useGlowColor
        end
        if v.showGlow then
            GlowTemplate.glow = v.showGlow 
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
        TextTemplate["text_text_format_"..AuraTemplate.useProgress..".p_time_legacy_floor"] = false
        TextTemplate["text_text_format_"..AuraTemplate.useProgress..".p_format"] = "timed"
        TextTemplate["text_text_format_"..AuraTemplate.useProgress..".p_time_precision"] = 1
        TextTemplate["text_text_format_"..AuraTemplate.useProgress..".p_time_dynamic_threshold"] = 3
        TextTemplate["text_text_format_"..AuraTemplate.useProgress..".p_time_mod_rate"] = true
        TextTemplate["text_text_format_"..AuraTemplate.useProgress..".p_time_format"] = 0
        tinsert(SpellTable.subRegions,TextTemplate)
    end
                                

                                
    -- set %s if needed 
    if v.showStacks then -- add Text for Stacks display if needed
        local StacksText = CopyTable(JDT.Templates.TextRegions.Stacks)
        StacksText.text_text = "%"..v.showStacks..".s" -- sets trigger number for stacks
        StacksText["text_text_format_"..v.showStacks..".s_format"] = "none"
        if v.additionalStackText then
            StacksText.text_text =  StacksText.text_text.." "..v.additionalStackText
        end
        if AuraTemplate.useHealth then
            StacksText.text_anchorPoint = "INNER_TOPRIGHT"
        end
        table.insert(SpellTable.subRegions,StacksText)
    elseif AuraTemplate.showStacks then
        local StacksText = CopyTable(JDT.Templates.TextRegions.Stacks)
        StacksText.text_text = "%"..AuraTemplate.showStacks..".s" -- sets trigger number for stacks
        StacksText["text_text_format_"..AuraTemplate.showStacks..".s_format"] = "none"
        if AuraTemplate.additionalStackText then
            StacksText.text_text =  StacksText.text_text.." "..AuraTemplate.additionalStackText
        end
        if AuraTemplate.useHealth then
            StacksText.text_anchorPoint = "INNER_TOPRIGHT"
        end
        table.insert(SpellTable.subRegions,StacksText)
    end
    -- set Border and %c depending on JDT.Auratype
    if AuraTemplate.customText then
        local CustomText = CopyTable(JDT.Templates.TextRegions.CustomText)
        table.insert(SpellTable.subRegions,CustomText)
        SpellTable.customText = JDT.Templates.CustomTextTemplates[AuraTemplate.customText](v.customTextInfo)
        if v.type then
            local BorderTable = CopyTable(JDT.Templates.Borders.BorderTemplate)
            BorderTable.border_color = JDT.Templates.Borders[v.type]
            table.insert(SpellTable.subRegions,BorderTable)
        elseif AuraTemplate.type then
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
    elseif AuraTemplate.type then
        
        if type(AuraTemplate.type) == "table" then
            for borderkey, bordevalue in ipairs(AuraTemplate.type) do
                local CustomText = CopyTable(JDT.Templates.TextRegions.CustomText)
                CustomText.text_text = "%c"..borderkey
                CustomText.text_visible = bordevalue.visible
                CustomText["text_text_format_c"..borderkey.."_format"] = "none"
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
        if type(ExpansionValue.instanceSizeType) ~= "table" then
        SpellTable.load.size = {
            single = ExpansionValue.instanceSizeType,
            multi = {
            },
        }
        else
            SpellTable.load.size = {
                single = "",
                multi = ExpansionValue.instanceSizeType,
            }
        end
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
    SpellTable.parent = ExportTable.d.id

    -- sets other table values depending on parent group
    SpellTable.wagoID = ExpansionValue.wagoID
    SpellTable.preferToUpdate = ExpansionValue.preferToUpdate
    SpellTable.version = ExpansionValue.version
    SpellTable.source = ExpansionValue.source
    SpellTable.tocversion = ExpansionValue.tocversion
    SpellTable.semver = ExpansionValue.semver
    SpellTable.internalVersion = JDT.InternalWaVersion
    local version = ExpansionValue.version or 0
    SpellTable.url = JDT.ExpansionValues[ExpansionKey][1].."/"..version
    -- add aura into group
    table.insert(ExportTable.d.controlledChildren,SpellTable.id)
    table.insert(ExportTable.c,SpellTable)
    return SpellTable
end

-- Trigger generators need addition value for other trigger types
JDT.generateTriggerfromGroupType = JDT.generateTriggerfromGroupType or {}

JDT.generateTriggerfromGroupType.Buffs = function(triggerData,AuraTemplate)
    local AuraTrigger = CopyTable(JDT.Templates.Triggers[AuraTemplate.triggerType])
    AuraTrigger.trigger.debuffType = JDT.Templates.Triggers.BuffTypes[AuraTemplate.BuffTypes] -- sets harmful or helpful to define buff/debuff
    if not triggerData.exactSpellId then
        if type(triggerData.spellId) =="table" then
            for index, value in ipairs(triggerData.spellId) do
                tinsert(AuraTrigger.trigger.auranames,value)
            end
        else
            AuraTrigger.trigger.auranames = { --set spellid for trigger
            triggerData.spellId, -- [1]
            }
        end
    else
        if type(triggerData.spellId) =="table" then
            for index, value in ipairs(triggerData.spellId) do
                tinsert(AuraTrigger.trigger.auraspellids,value)
            end
            AuraTrigger.trigger.useExactSpellId = true
            AuraTrigger.trigger.useName = false
        else
            AuraTrigger.trigger.auraspellids = { --set spellid for trigger
            triggerData.spellId, -- [1]
            }
            AuraTrigger.trigger.useExactSpellId = true
            AuraTrigger.trigger.useName = false
        end
    end
    if triggerData.ignoreSelf then
        AuraTrigger.trigger.ignoreSelf = triggerData.ignoreSelf
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
        AuraTrigger.trigger.use_exact_spellId = true
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
    if triggerData.delay then
        AuraTrigger.trigger.use_delay = true
		AuraTrigger.trigger.delay = triggerData.delay
    end
    if triggerData.destUnit then
        AuraTrigger.trigger.destUnit= triggerData.destUnit
		AuraTrigger.trigger.use_destUnit = true
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
    if triggerData.delay then
        AuraTrigger.trigger.use_delay = true
		AuraTrigger.trigger.delay = triggerData.delay
    end
    
    if triggerData.unit then
        AuraTrigger.trigger.use_unit = true
        AuraTrigger.trigger.unit = triggerData.unit
        if not JDT.Templates.Triggers.CheckUnits[triggerData.unit] then
            AuraTrigger.trigger.use_specific_unit = true
        end
    end
    return AuraTrigger
end