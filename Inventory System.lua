print("IM is running!")
local shell = require("shell")
--------------------
--Initialization Procedures
--------------------
print("Going to download any libraries to be used")
shell.execute("wget -f --no-check-certificate --content-disposition --no-dns-cache https://github.com/WilliamCusack/opencomputers/blob/master/mylib.lua mylib.lua")
package.loaded.mylib = nil
my = require("mylib")


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

jobName = my.findComputerJob()
print(jobName)

my.setParserItem()


my.setParserEndItem()


--## Storage System ##--


---- Empty Input Chest---  Basically starting from a fresh state.

---- Check Storage and Create a Table of it ----

---- Send a Call for recipe Tables----

---- Recieve Crafting Recipe Tables ----




--## Crafting System ##--




----Check all transposers with the parser block in first slot and
    --end block in them