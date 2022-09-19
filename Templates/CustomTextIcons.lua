local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.CustomTextIcons = JDT.Templates.CustomTextIcons or {}


JDT.Templates.CustomTextIcons.magic = "function()\n   return WeakAuras.EJIcons.magic \nend"
JDT.Templates.CustomTextIcons.curse = "function()\n   return WeakAuras.EJIcons.curse \nend"
JDT.Templates.CustomTextIcons.disease = "function()\n   return WeakAuras.EJIcons.disease \nend"
JDT.Templates.CustomTextIcons.poison = "function()\n   return WeakAuras.EJIcons.poison \nend"
JDT.Templates.CustomTextIcons.bleed = "function()\n   return WeakAuras.EJIcons.bleed \nend"
JDT.Templates.CustomTextIcons.enrage = "function()\n   return WeakAuras.EJIcons.enrage \nend"
JDT.Templates.CustomTextIcons.interrupt= "function()\n   return WeakAuras.EJIcons.interrupt \nend"
JDT.Templates.CustomTextIcons.root = "function()\n   return '|T236922:18|t'  \nend"
JDT.Templates.CustomTextIcons.snare = "function()\n   return '|T132309:18|t' \nend"
JDT.Templates.CustomTextIcons.stun = "function()\n   return '|T135860:16|t' \nend"

JDT.Templates.CustomTextIcons.Icons = JDT.Templates.CustomTextIcons.Icons or {}
JDT.Templates.CustomTextIcons.Icons.stun  = "'|T135860:16|t'" 
JDT.Templates.CustomTextIcons.Icons.snare = "'|T132309:18|t'"
JDT.Templates.CustomTextIcons.Icons.root =  "'|T236922:18|t'"
JDT.Templates.CustomTextIcons.Icons.interrupt = "WeakAuras.EJIcons.interrupt"
JDT.Templates.CustomTextIcons.Icons.enrage = "WeakAuras.EJIcons.enrage"
JDT.Templates.CustomTextIcons.Icons.bleed = "WeakAuras.EJIcons.bleed"
JDT.Templates.CustomTextIcons.Icons.poison = "WeakAuras.EJIcons.poiso"
JDT.Templates.CustomTextIcons.Icons.disease = "WeakAuras.EJIcons.disease"
JDT.Templates.CustomTextIcons.Icons.curse = "WeakAuras.EJIcons.curse"
JDT.Templates.CustomTextIcons.Icons.magic = "WeakAuras.EJIcons.magic"


JDT.Templates.CustomTextIcons.generator = function (typetable) 
    local returntext = ""
    for index, value in ipairs(typetable) do
        if returntext == "" then
            returntext = JDT.Templates.CustomTextIcons.Icons[value.type]
        else
        returntext  = returntext..", "..JDT.Templates.CustomTextIcons.Icons[value.type]
        end
    end
    local stufftoreturn = "function()\n return "..returntext.." \nend"
    return stufftoreturn
end    