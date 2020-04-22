---------------------------------------------------------
-----------FUNCTIONS------------------------------------ Gotta be defined before they're called
--------------------------------------------------------
local mylib = {}
 
print("mylib.lua loaded")

local component = require("component")
local ct = component.transposer
local shell = require("shell")




 
function mylib.setParserItem()
   
    if not parserItem then
        local transposers = {}
		transposers = mylib.findComponents("ransposer")
         for i,v in pairs(transposers) do 
            print(i,v)
            mylib.findSidesWithInventories(v)
         end

        print("we set the parser item to")
    end
end
 
function mylib.setParserEndItem()
    if not parserEndItem then
   		print("We set the Parser END item")
    end
end
 
function mylib.findComponents(componentName)     --Makes a table of all the address of components of the name
    local components = {}
	local i = 0
    for address, name in component.list(componentName, false) do
        table.insert(components, address) --was components, component.list(address)
 		i = i + 1
    end
    return components
end

function mylib.findComputerJob() --THis will search the chests for the identifier of the storage, crafting, and other systems so each program(computer) has a name an can do the respective operations
    local computerJob = nil
	computerJob = "toWORK"
	print("The name should be ", computerJob)
    return computerJob
end

function mylib.findSidesWithInventories(address)
    local invsides = {}
    for i,v in ipairs(sides) do
        size = ct.getInventorySize(sides.v)
        if size > 0 then 
            table.insert(invsides, size)
            print("Inventory on side: ", sides[1])
         end

    end
end
 
return mylib
-----------------------------------------------------
---------------------------------------------------------------