local _, JDT = ...


JDT.CheckIfAuraUpdates = function(self)
    local AuraCount = 0
    local AuraUpdatesCount = 0
    local AuraUpdatesTable = {}
    for ExpansionKey, ExpansionValue in pairs(JDT.db.profile.data) do
        if not (WeakAuras.GetData("DungeonAuras_" .. ExpansionKey)) then
            if ExpansionKey ~= "Affixes" and ExpansionKey ~= "Seasons" then
                for DungeonKey, DungeonValue in pairs(ExpansionValue.Dungeons) do
                    for BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do
                        for TypeKey, TypeValue in pairs(BossNameValue.Auras) do
                            for k, v in pairs(TypeValue) do
                                if v.enabled == true then
                                    AuraCount = AuraCount + 1
                                end
                            end
                        end
                    end
                end
            elseif ExpansionKey == "Affixes" then
                for TypeKey, TypeValue in pairs(ExpansionValue.Auras) do
                    for k, v in pairs(TypeValue) do
                        if v.enabled == true then
                            AuraCount = AuraCount + 1
                        end
                    end
                end
            end
        else
            local ExportTable  = CopyTable(JDT.DataToExport)
            ExportTable.d      = CopyTable(JDT.Templates.DynamicGroup)
            ExpansionValue.id  = "DungeonAuras_" .. ExpansionKey               -- AuraName
            ExpansionValue.uid = "DungeonAuras_" .. ExpansionKey .. "UID"      --AuraUniqueId
            ExportTable.d.id   = ExpansionValue.id
            ExportTable.d.uid  = ExpansionValue.uid
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

            if JDT.db.profile.AnchorGroupsToAffixes and ExpansionKey ~= "Affixes" and ExpansionKey ~= "Seasons" then
                ExportTable.d.xOffset = 0
                ExportTable.d.yOffset = 0
                ExportTable.d.anchorFrameFrame = "WeakAuras:" .. "DungeonAuras_Affixes"
                ExportTable.d.anchorFrameParent = false
                ExportTable.d.anchorFrameType = "SELECTFRAME"
                ExportTable.d.anchorPoint = "TOPRIGHT"
            else
                local installedGroup = WeakAuras.GetData(ExportTable.d.id)
                if installedGroup then
                    JDT.db.profile.xOffset = installedGroup.xOffset
                    JDT.db.profile.yOffset = installedGroup.yOffset
                end

                ExportTable.d.xOffset = JDT.db.profile.xOffset
                ExportTable.d.yOffset = JDT.db.profile.yOffset
                ExportTable.d.url    = JDT.ExpansionValues[ExpansionKey]
            end
            if ExpansionKey ~= "Affixes" and ExpansionKey ~= "Seasons" then
                for DungeonKey, DungeonValue in pairs(ExpansionValue.Dungeons) do
                    if not JDT.db.profile.data.Seasons.current or not JDT.SpellList.Seasons.current.dungeons[DungeonKey] then
                        ExportTable, ExpansionKey, ExpansionValue, _, DungeonValue, AuraUpdatesCount, AuraUpdatesTable = JDT.checkAurasForDungeon(self, ExportTable, ExpansionKey, ExpansionValue, DungeonKey, DungeonValue, AuraUpdatesCount, AuraUpdatesTable)
                    end
                end
            elseif ExpansionKey == "Affixes" then
                for TypeKey, TypeValue in pairs(ExpansionValue.Auras) do
                    for k, v in pairs(TypeValue) do
                        if not v.triggerData then         -- check if aura was moved to a different grouptype
                            AuraUpdatesCount = AuraUpdatesCount + 1
                            AuraUpdatesTable[ExpansionKey] = true
                            JDT.db.profile.data[ExpansionKey].Auras[TypeKey][k] = nil
                            self:Print("Removed Aura " ..
                            k .. " from Affixes please Reload to fix Potential Import Problems")
                        else
                            local AuraToCheck = JDT.buildAura(ExportTable, { groupName = ExpansionValue.groupName },
                                { additionalName = "" }, TypeKey, v, ExpansionValue, ExpansionKey)
                            local InstalledAura = WeakAuras.GetData(AuraToCheck.id)
                            if v.enabled == true then
                                if AuraToCheck and InstalledAura then
                                    JDT.adjustAuras(AuraToCheck, InstalledAura)
                                end
                                if not InstalledAura or tCompare(AuraToCheck, InstalledAura, 10) ~= true then
                                    --print(AuraToCheck.id)
                                    if JDT.db.profile.DebugMode == true then
                                        --[[
                                                    local CompareData ={}
                                                    CompareData.AuraToCheck = AuraToCheck
                                                    CompareData.InstalledAura = InstalledAura

                                                    ViragDevTool_AddData(AuraToCheck, "AuraToCheck")
                                                    ViragDevTool_AddData(InstalledAura, "InstalledAura")
                                                    ViragDevTool_AddData(difference, "difference1")
                                                    ViragDevTool_AddData(difference2, "difference2")
                                                    JDT.db.profile.testing = CompareData
                                                    ]]
                                        local difference, difference2 = JDT.findOutDifferenceBetweenTwoTables(
                                        AuraToCheck, InstalledAura)
                                        JDT.DebugPrint(AuraToCheck.id)
                                        JDT.DebugDump(difference)
                                        JDT.DebugDump(difference2)
                                    end
                                    AuraUpdatesCount = AuraUpdatesCount + 1
                                    AuraUpdatesTable[ExpansionKey] = true
                                end
                            elseif v.enabled == false and InstalledAura then
                                AuraUpdatesCount = AuraUpdatesCount + 1
                                AuraUpdatesTable[ExpansionKey] = true
                            end
                        end
                    end
                end
            elseif ExpansionKey == "Seasons" then
                for _,value in pairs(ExpansionValue.current.dungeons) do
                    ExportTable, ExpansionKey, ExpansionValue, _, JDT.db.profile.data[value.expansion].Dungeons[value.dungeon], AuraUpdatesCount, AuraUpdatesTable = JDT.checkAurasForDungeon(self, ExportTable, ExpansionKey, ExpansionValue, value.dungeon, JDT.db.profile.data[value.expansion].Dungeons[value.dungeon], AuraUpdatesCount, AuraUpdatesTable)
                end    
            end
        end
    end
    if AuraCount > 0 then
        self:Print(AuraCount .. " " .. JDT.getLocalisation("NewAurasAddedMessage"))
    end
    if AuraUpdatesCount > 0 then
        JDT.exportCompanion(AuraUpdatesTable)
        self:Print(AuraUpdatesCount .. " " .. JDT.getLocalisation("AurasUpdatesMessage"))
    end
end

JDT.checkAurasForDungeon = function(self, ExportTable, ExpansionKey, ExpansionValue, DungeonKey, DungeonValue, AuraUpdatesCount, AuraUpdatesTable)
    for BossNameKey, BossNameValue in pairs(DungeonValue.Bosses) do
        for TypeKey, TypeValue in pairs(BossNameValue.Auras) do
            for k, v in pairs(TypeValue) do
                if not v.triggerData then -- check if aura was moved to a different grouptype
                    AuraUpdatesCount = AuraUpdatesCount + 1
                    AuraUpdatesTable[ExpansionKey] = true
                    JDT.db.profile.data[ExpansionKey].Dungeons[DungeonKey].Bosses[BossNameKey].Auras[TypeKey][k] = nil
                    self:Print("Removed Aura " ..
                    k ..
                    " from " ..
                    BossNameKey ..
                    " in " ..
                    DungeonKey ..
                    " in " .. ExpansionKey .. " please Reload to fix Potential Import Problems")
                else
                    local AuraToCheck = JDT.buildAura(ExportTable, DungeonValue, BossNameValue,
                        TypeKey, v, ExpansionValue, ExpansionKey)
                    local InstalledAura = WeakAuras.GetData(AuraToCheck.id)
                    if v.enabled == true then
                        if AuraToCheck and InstalledAura then
                            JDT.adjustAuras(AuraToCheck, InstalledAura)
                        end
                        if not InstalledAura or tCompare(AuraToCheck, InstalledAura, 10) ~= true then
                            if JDT.db.profile.DebugMode == true then
                                --[[
                                            local CompareData ={}
                                            CompareData.AuraToCheck = AuraToCheck
                                            CompareData.InstalledAura = InstalledAura

                                            ViragDevTool_AddData(AuraToCheck, "AuraToCheck")
                                            ViragDevTool_AddData(InstalledAura, "InstalledAura")
                                            ViragDevTool_AddData(difference, "difference1")
                                            ViragDevTool_AddData(difference2, "difference2")
                                            JDT.db.profile.testing = CompareData
                                            ]]
                                local difference, difference2 = JDT
                                .findOutDifferenceBetweenTwoTables(AuraToCheck, InstalledAura)
                                JDT.DebugPrint(AuraToCheck.id)
                                JDT.DebugDump(difference)
                                JDT.DebugDump(difference2)
                            end
                            AuraUpdatesCount = AuraUpdatesCount + 1
                            AuraUpdatesTable[ExpansionKey] = true
                        end
                    elseif v.enabled == false and InstalledAura then
                        AuraUpdatesCount = AuraUpdatesCount + 1
                        AuraUpdatesTable[ExpansionKey] = true
                    end
                end
            end
        end
        return ExportTable, ExpansionKey, ExpansionValue, DungeonKey, DungeonValue, AuraUpdatesCount, AuraUpdatesTable
    end
end


JDT.findOutDifferenceBetweenTwoTables = function(table1, table2)
    local difference = {}
    if table1 then
        for k, v in pairs(table1) do
            if not table2 or table2[k] == nil then
                difference[k] = v
            elseif type(v) == "table" and type(table2[k]) == "table" then
                local sub_diff = JDT.findOutDifferenceBetweenTwoTables(v, table2[k])
                if next(sub_diff) ~= nil then
                    difference[k] = sub_diff
                end
            elseif v ~= table2[k] then
                difference[k] = v
            end
        end
    end
    local difference2 = {}
    if table2 then
        for k, v in pairs(table2) do
            if not table1 or table1[k] == nil then
                difference2[k] = v
            elseif type(v) == "table" and type(table1[k]) == "table" then
                local sub_diff = JDT.findOutDifferenceBetweenTwoTables(v, table1[k])
                if next(sub_diff) ~= nil then
                    difference2[k] = sub_diff
                end
            elseif v ~= table1[k] then
                difference2[k] = v
            end
        end
    end
    return difference, difference2
end


JDT.adjustAuras = function(AuraToCheck, InstalledAura)
    assert(AuraToCheck.internalVersion == InstalledAura.internalVersion,
        JDT.getLocalisation("internalVersionMismatch") ..
        " found: " .. InstalledAura.internalVersion .. " expected: " .. AuraToCheck.internalVersion)
    if AuraToCheck.version ~= InstalledAura.version then -- adjust this value if needed
        AuraToCheck.version = InstalledAura.version
    end
    if AuraToCheck.url ~= InstalledAura.url then -- adjust this value if needed
        AuraToCheck.url = InstalledAura.url
    end
    if AuraToCheck.semver ~= InstalledAura.semver then -- adjust this value if needed
        AuraToCheck.semver = InstalledAura.semver
    end
    if AuraToCheck.tocversion ~= InstalledAura.tocversion then -- adjust this value if needed
        AuraToCheck.tocversion = InstalledAura.tocversion
    end
    if AuraToCheck.preferToUpdate ~= InstalledAura.preferToUpdate then -- adjust this value if needed
        AuraToCheck.preferToUpdate = InstalledAura.preferToUpdate
    end
end
