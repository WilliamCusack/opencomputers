---------------------------------------------------------
-----------FUNCTIONS------------------------------------ Gotta be defined before they're called
--------------------------------------------------------
local mylib = {}
 
print("mylib.lua loaded")


local c = require("component")
local ct = component.transposer
local shell = require("shell")
local sides = require("sides")
local modem = require("modem")
 
function mylib.setParserItem()
   
    if not parserItem then
        local transposers = findComponents("ransposer")
 
        print("we set the parser item to")
    end
end
 
function mylib.setParserEndItem()
    if not parserEndItem then
   
    end
end
 
function mylib.findComponents(componentName)     --Makes a table of all the address of components of the name
    local components = {}
    for address, name in c.list(componentName, false) do
        table.insert(components, c.list(address))
 
    end
    return components
end

function mylib.findComputerJob() --THis will search the chests for the identifier of the storage, crafting, and other systems so each program(computer) has a name an can do the respective operations
    local computerJob = nil
    return computerJob
end
 
return mylib
-----------------------------------------------------
---------------------------------------------------------------