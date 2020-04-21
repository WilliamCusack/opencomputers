print("IM is running!")
local c = require("component")
local ct = c.transposer
local shell = require("shell")
local sides = require("sides")

---- Config Variables 
local recipeSide = sides.east
local outputSide = sides.down
local parserItem = nil      --can set these two manually if you want
local parserEndItem = nil   --^^^^
local drawerPassCode = {9,11}   --This is the chest that signifies the transposer connected to drawer controller. 
                                --Its the first slot being parserblock amount and second slot being end block ammount, also used to find the parser items

---------------------------------------------------------------


--Config Functions to find parser blocks and whatnot
    --find parser item, find parser end item
    --will be on a chest on top of the transposer with 3/3 parser/end blocks
    
setParserItem()


setParserEndItem()


--## Storage System ##--
print("IM is running!")


---- Empty Input Chest---  Basically starting from a fresh state.

---- Check Storage and Create a Table of it ----

---- Send a Call for recipe Tables----

---- Recieve Crafting Recipe Tables ----




--## Crafting System ##--




----Check all transposers with the parser block in first slot and
    --end block in them













-------------------------------------------------------
-----------FUNCTIONS------------------------------------
--------------------------------------------------------

local function setParserItem()
    if parserItem then
        local transposers = findComponents("ransposer")

        
    end
    return void
end

local function setParserEndItem()
    if parserEndItem then
    
    end
    return void
end

local function findComponents(componentName)     --Makes a table of all the address of components of the name
    local components = {}
    for address, name in c.list(componentName, false) do
        table.insert(components, c.list(address))

    end
    return components
end
