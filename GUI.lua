local _, JDT = ...
local AceGUI = LibStub("AceGUI-3.0")
local versionString = "@project-version@"
if versionString == "@project-version@" then
    versionString = "Develop"
end
JDT.optionsdindow =  AceGUI:Create("Frame")
JDT.optionsdindow:SetCallback("OnClose",function(widget) AceGUI:Release(widget) end)
JDT.optionsdindow:SetTitle("Dungeon Aura Tools: "..versionString)
JDT.optionsdindow:SetLayout("Flow")

for key, value in pairs(JDT.options.args) do
    local subtype = nil
    if value.type == "group" then
        subtype = AceGUI:Create("TabGroup")
        subtype:SetTitle(value.name)
    else
        print(value.type)
        subtype = AceGUI:Create(value.type)
    end
    JDT.optionsdindow:AddChild(subtype)
end