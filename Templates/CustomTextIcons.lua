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