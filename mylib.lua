---------------------------------------------------------
-----------FUNCTIONS------------------------------------ Gotta be defined before they're called
--------------------------------------------------------
local mylib = {}
 
print("mylib.lua loaded")
 
function mylib.setParserItem()
    print("we set the parser item")
    if parserItem then
        local transposers = findComponents("ransposer")
 
       
    end
end
 
function mylib.setParserEndItem()
    if parserEndItem then
   
    end
end
 
function mylib.findComponents(componentName)     --Makes a table of all the address of components of the name
    local components = {}
    for address, name in c.list(componentName, false) do
        table.insert(components, c.list(address))
 
    end
    return components
end
 
return mylib
-----------------------------------------------------
---------------------------------------------------------------