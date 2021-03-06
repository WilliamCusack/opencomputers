
print("IM is running!")
local shell = require("shell")
local args, opts = shell.parse(...)
--------------------
--Initialization Procedures
--------------------
if args[1] == "dl" then
      print("Going to download any libraries to be used")
      shell.execute("wget -f --no-check-certificate --content-disposition https://www.dropbox.com/s/v97d9yelojtsub6/mylib.lua?dl=1 mylib.lua")
end
package.loaded.mylib = nil
my = require("mylib")

----

--------------
-----------
-------------
local c = require("component")
local ct = c.transposer
local shell = require("shell")
local sides = require("sides")


-------Variables-----------

local jobName = nil

--------------------
-------------------
---- Config Variables 
local recipeSide = sides.east
local outputSide = sides.down
local parserItem = nil      --can set these two manually if you want
local parserEndItem = nil   --^^^^
local drawerPassCode = {9,11}   --This is the chest that signifies the transposer connected to drawer controller. 
                                --Its the first slot being parserblock amount and second slot being end block ammount, also used to find the parser items






------Config Functions to find parser blocks and whatnot
      --find parser item, find parser end item
      --will be on a chest on top of the transposer with 3/3 parser/end blocks
--------SET JOB NAME   (crafting,storage,deep, main storage)
--------FIND ALL COMPONENTS (Addresses)
--------FIND ALL TRANSPOSERS (Addresses)
--------FIND ALL ATTACHED INVENTORIES (transposer address, sides, size)

local attachedComponents = my.findComponents()
local attachedTransposers = my.searchTable(attachedComponents, "transpo") --this will search attachedComponents (key(address) = value(name), ...) for the address that contains a name of second parameter
local attachedInventories = my.findSidesWithInventories(attachedTransposers) --accepts a table of transposers or just a single address
my.printTable(attachedInventories)

local storagedb = my.buildDataBase(attachedInventories) -- This will take the transposers, and sides with inventories and build a DB with every item
my.printItemInfo(storagedb, "minecraft:dirt:0")

local jobName = nil


--print(jobName, "This is the job name")

--my.setParserItem()


--my.setParserEndItem()


--## Storage System ##--


---- Empty Input Chest---  Basically starting from a fresh state.

---- Check Storage and Create a Table of it ----

---- Send a Call for recipe Tables----

---- Recieve Crafting Recipe Tables ----




--## Crafting System ##--




----Check all transposers with the parser block in first slot and
    --end block in them
    ---#####