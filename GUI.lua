local appName, JDT = ...
local SharedMedia = LibStub("LibSharedMedia-3.0") 
local AceConfigRegistry = LibStub("AceConfigRegistry-3.0")
JDT.CreateAnchor = function()
    -- main frame
    local Anchor = CreateFrame("Frame") 
    Anchor:SetSize(80, 80)
    Anchor:SetScale(UIParent:GetEffectiveScale()) 
    Anchor:SetPoint("CENTER", UIParent, "CENTER", JDT.db.profile.xOffset, JDT.db.profile.yOffset)
    Anchor:Hide()
    Anchor:SetMovable(true)
    Anchor:SetScript("OnMouseDown", function(self, button) Anchor:StartMoving() end)
    Anchor:SetScript("OnMouseUp", function(self, button) Anchor:StopMovingOrSizing() JDT.UpdateAnchorPositions()end)
    -- background texture
    local texture = Anchor:CreateTexture(nil, "BACKGROUND")
    texture:SetAllPoints()
    texture:SetColorTexture(0, 0, 0, 1)
    -- text below the anchor
    local text = Anchor:CreateFontString(nil, "OVERLAY", "GameTooltipText")
    text:SetPoint("BOTTOM", 0, 2 - 0.1 * (80 * math.abs(UIParent:GetEffectiveScale()))-JDT.db.profile.TextFontSize)
    text:SetText("Move me")
    text:SetFont(SharedMedia:Fetch("font", JDT.db.profile.FontOptions), JDT.db.profile.TextFontSize, "OUTLINE")
    -- foreground texture displaying the icon
    local foreground = Anchor:CreateTexture(nil, "ARTWORK")
    foreground:SetTexture("Interface\\AddOns\\DungeonAuraTools\\Files\\DungeonAuraTools.tga")
    foreground:SetAllPoints()
    -- cooldown frame
    local cooldown = CreateFrame("Cooldown", "DAT_Cooldown", Anchor, "CooldownFrameTemplate")
    cooldown:SetAllPoints(Anchor)
    cooldown:SetParent(Anchor)
    cooldown:SetDrawBling(false)
    -- cooldown text
    local cooldownText = Anchor:CreateFontString(nil, "OVERLAY", "GameTooltipText")
    cooldownText:SetPoint("CENTER", 0, 0)
    cooldownText:SetText("")
    cooldownText:SetFont(SharedMedia:Fetch("font", JDT.db.profile.FontOptions), JDT.db.profile.CooldownTextFontSize, "OUTLINE")

    return Anchor,text,cooldown,cooldownText
end

JDT.AnchorRefreshTypes = {
    xOffset = "xOffset",
    yOffset = "yOffset",
    all = "all",
    IconWidth = "IconWidth",
    IconHeight = "IconHeight",
    Font = "Font",
    TextFontSize = "TextFontSize",
    CooldownTextFontSize = "CooldownTextFontSize",
}

setmetatable(JDT.AnchorRefreshTypes, {
    __index = function(_, key)
        error(string.format("attempted to access invalid key: %s", tostring(key)), 2);
    end,
})

JDT.StartDummyCooldown = function() -- starter function incase we need to do different stuff aswell
    JDT.DummyCooldown()
end

JDT.DummyCooldown = function() -- function that handles the display of cooldowns
    if JDT.Anchor:IsShown() then
        JDT.AnchorCooldown:SetCooldown(GetTime(), 10)
        JDT.DummyCooldownText()
        C_Timer.After(11, function()  JDT.DummyCooldown() end)
    end
end

JDT.DummyCooldownText = function() -- functino handling the display of cooldown text
    if JDT.Anchor:IsShown() and JDT.db.profile.ShowTimer then
        local starttime,_= JDT.AnchorCooldown:GetCooldownTimes()
        local duration = Round(10-(GetTime()-starttime/1000)) -- this is some weird math we have to do since GetTime() returns seconds and GetCooldownTimes() returns miliseconds
        if duration>0 then
            JDT.AnchorCooldownText:SetText(duration)
            C_Timer.After(1, function()  JDT.DummyCooldownText() end)
        else
            JDT.AnchorCooldownText:SetText("")
        end
    end
end

JDT.UpdateAnchorPositions = function() -- handles the setting of anchor position if it was moved by hand and updates the config display
    local x,y = JDT.Anchor:GetCenter()
    JDT.db.profile.xOffset = x-GetScreenWidth()/2
    JDT.db.profile.yOffset = y-GetScreenHeight()/2
    AceConfigRegistry:NotifyChange(appName)
end
JDT.RefreshAnchor = function(type) -- refreshes the Anchors display if needed
    JDT.DebugPrint("updatingAnchor: "..type)
    if not JDT.Anchor then
        JDT.Anchor,JDT.AnchorText,JDT.AnchorCooldown,JDT.AnchorCooldownText  = JDT.CreateAnchor()
    end
    if JDT.Anchor:IsShown() then
        JDT.DebugPrint("Anchor is shown")
        if type == JDT.AnchorRefreshTypes.all or type == JDT.AnchorRefreshTypes.yOffset or type == JDT.AnchorRefreshTypes.xOffset then -- x and y of the anchor
            JDT.DebugPrint("xOffset: " .. JDT.db.profile.xOffset .. " yOffset: " .. JDT.db.profile.yOffset)
            JDT.Anchor:SetPoint("CENTER", UIParent, "CENTER", JDT.db.profile.xOffset, JDT.db.profile.yOffset)
        end

        if type == JDT.AnchorRefreshTypes.all or type == JDT.AnchorRefreshTypes.IconWidth or type == JDT.AnchorRefreshTypes.IconHeight then -- height and width of the anchor
            if JDT.db.profile.IconHeight and JDT.db.profile.IconWidth then
                JDT.DebugPrint("IconWidth: " .. JDT.db.profile.IconWidth .. " IconHeight: " .. JDT.db.profile.IconHeight)
                JDT.Anchor:SetSize(JDT.db.profile.IconWidth, JDT.db.profile.IconHeight)
            end
        end
        
        if type == JDT.AnchorRefreshTypes.all or type == JDT.AnchorRefreshTypes.Font or type == JDT.AnchorRefreshTypes.TextFontSize then  -- text font and size         
            JDT.AnchorText:SetFont(SharedMedia:Fetch("font", JDT.db.profile.FontOptions), JDT.db.profile.TextFontSize, "OUTLINE")
            JDT.AnchorText:SetPoint("BOTTOM", 0, 2 - 0.1 * (JDT.db.profile.IconHeight * math.abs(UIParent:GetEffectiveScale()))-JDT.db.profile.TextFontSize)
        end

        if type == JDT.AnchorRefreshTypes.all or type == JDT.AnchorRefreshTypes.CooldownTextFontSize or type == JDT.AnchorRefreshTypes.Font then -- cooldown text size and font
            JDT.AnchorCooldownText:SetFont(SharedMedia:Fetch("font", JDT.db.profile.FontOptions), JDT.db.profile.CooldownTextFontSize, "OUTLINE")
        end

        --[[
        if type == JDT.AnchorRefreshTypes.all or type == JDT.AnchorRefreshTypes. then
            
        end
        JDT.RefreshAnchor(JDT.AnchorRefreshTypes.yOffset,val)
        ]]

        
        JDT.AnchorCooldown:SetCooldown(GetTime(), 10) -- restarting the cooldown
        JDT.Anchor:SetScale(UIParent:GetEffectiveScale())  -- setting the UIScale since this might change between load of the addon and runtime
        return
    end
end
