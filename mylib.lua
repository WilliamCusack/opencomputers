---------------------------------------------------------
-----------FUNCTIONS------------------------------------ Gotta be defined before they're called
--------------------------------------------------------
local mylib = {}
 
print("mylib.lua loaded")

local component = require("component")
local c = component
local ct = component.transposer
local shell = require("shell")
local sides = require("sides")




 
-- function mylib.setParserItem()
   
--     if not parserItem then
--         local transposers = {}
-- 		--[[ transposers = mylib.findComponents("ransposer")
--          for i,v in pairs(transposers) do 
--             print(i,v)
--             print(v)
--             mylib.findSidesWithInventories(v)
--          end ]]
--         transposers = mylib.findComponents("ransposer") --create list of matching components
--         mylib.searchComponents(transposers)     --iterate through the list and find all inventories


--         print("we set the parser item to")
--     end
-- end
 
-- function mylib.setParserEndItem()
--     if not parserEndItem then
--    		print("We set the Parser END item")
--     end
-- end
 
function mylib.findComponents(componentName)     --Makes a table of all the address of components of the name
    local components = {}

    if componentName then 
        for address, name in component.list(componentName, false) do
            --table.insert(components, address) --was components, component.list(address)
            components[address] = name
        end
        return components
    end
    for address, name in component.list() do --This will occur when no parameters are entered and just returns all components addresses
        local foundTable = {}
        components[address] = name
        --table.insert(components, foundTable[address])
        --print(name, address, components[address])
        
    end
        
    print("\n List of all connected components: \n" )
    for i,v in pairs(components) do print(i,v) end
    print("\n")

    return components
end



function mylib.findComputerJob() --THis will search the chests for the identifier of the storage, crafting, and other systems so each program(computer) has a name an can do the respective operations
    local computerJob = nil
	computerJob = "toWORK"
	print("The name should be ", computerJob)
    return computerJob
end

function mylib.findSidesWithInventories(inputaddress)
    local invsides = {}
    local transposer = {}
    if type(inputaddress) == "string" then invsides[inputaddress] = "inputted a string" end
    for address,name in pairs(inputaddress) do
        print("\n Looking at:", name, "at", address, "for sides")
        for i,v in ipairs(sides) do
            local sideName = v
            targetcomponent = component.proxy(address)
            local size = c.proxy(address).getInventorySize(i - 1)
            if size then 
                invsides[i - 1] = size
                
                print("Inventory on side: ", sides[i - 1], "of size", size)
            else print("No Inventory on side: ", sides[i -1])
            end

        end
        transposer[address] = invsides
        mylib.printTable(invsides) print('\n')
        invsides = {}
    end   
    return transposer   
end

function mylib.searchComponents(components)
   
    local foundComponents = {}

    for i,v in pairs(components) do 
        print(i,v)
        print(v)
        mylib.findSidesWithInventories(i)
     end
    return foundComponents
end

function mylib.searchTable(table, query) --searches for strings in the values of a  table and returns the table with only those key, value pairs
    local searched = {}

    for i,v in pairs(table) do
        if string.find(v, query) then
            searched[i] = v
        end
    end
    print("List of components with ", query, " in the name:")
    for i,v in pairs(searched) do print(i,v) end
    
return searched
end

function mylib.printTable(inputTable, ...)
    local args, opts = shell.parse(...)
   -- print("we are in table:", inputTable)
    --if leadingString then print(leadingString) end
    for i,v in pairs(inputTable) do
        
        print(i,v)
        if type(v) == "table" then
           -- for x,y in pairs(v) do
            print("We are in the table of:", v, "named", i)
                mylib.printTable(v)
              
                
               -- print(time)
          --  end
               -- time = 0

        end
    end
end

function mylib.printITable(inputTable, ...)
    local args, opts = shell.parse(...)
    --print("we are in table:", inputTable)
    --if leadingString then print(leadingString) end
    for i,v in ipairs(inputTable) do
        
        print(i,v)
        if type(v) == "table" then
            -- for x,y in pairs(v) do
                print("We are in the table of:", v, "named", i)
                mylib.printTable(v)
               
                 
                print(time)
           --  end
                -- time = 0
 
         end
    end
end

function mylib.buildDataBase(inputTable)
    local dB = {}
    local item = {}

    
    print("\n Now we will try to build the item DB")
    for address, sidesTable in pairs(inputTable) do --go into sidesTable table
        local tran = component.proxy(address)
        print("into transposer", address)
        for side, size in pairs(sidesTable) do   --go into each individual side with its size
            print("into side", side, sides[side])
            for i=1, size do                --Looking through each inventory and noting its items
                local foundItem = tran.getStackInSlot(side,i)
                if tran.getStackInSlot(side,i) then print(foundItem.name .. ":" .. foundItem.damage, "in slot", i) 
                    local itemSign = foundItem.name .. ":" .. foundItem.damage 
                    
                    if not dB[itemSign] then dB[itemSign] = {}  print("New Item Added:", itemSign)end
                    dB[itemSign]['name'] = foundItem.name
                
                    dB[itemSign]['label'] = foundItem.label
                    
                    if not dB[itemSign]['location'] then dB[itemSign]['location'] = {}  end         --This will contain a table of tables mapped by address
                    if not dB[itemSign]['location'][address] then dB[itemSign]['location'][address] = {} end
                    if not dB[itemSign]['location'][address][side] then dB[itemSign]['location'][address][side] = {} end
                    if not dB[itemSign]['location'][address][side]["slots"] then dB[itemSign]['location'][address][side]["slots"] = {} end
                    dB[itemSign]['location'][address][side]["slots"][i] = foundItem.size
                    print(i)

                    
                    --dB[itemSign] = item
                    --item = {}
                end
            end
        end
    end
    mylib.printTable(dB)
    return dB
end

function mylib.printItemInfo(dataBase, ...)
    local args, opts = shell.parse(...)
    print('\n\nPrinting info on:', args[1])
    mylib.printTable(dataBase[args[1]])
end










return mylib

-----------------------------------------------------
---------------------------------------------------------------
----#####