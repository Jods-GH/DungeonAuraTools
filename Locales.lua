local _, JDT = ...
local Locale = GetLocale()

JDT.getLocalisation = function(Object)
    if Locale == "deDE" then
        return JDT.localisation.de[Object]
     --[[
    elseif Locale == "esES" or Locale == "esMX" then    
   
    elseif Locale == "frFR" then    
   
    elseif Locale == "itIT" then    
        
    elseif Locale == "ptBR" or Locale == "ptPT" then    
      
    elseif Locale == "ruRU" then    
        
    elseif Locale == "koKR" then    
      
    elseif Locale == "zhCN" or Locale == "zhTW" then    
       ]]
    else
        return JDT.localisation.en[Object]  
    end
    

end
