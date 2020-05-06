local shell = require("shell")

local args, opts = shell.parse(...)

if args[1] == "dl" then
	print("Hello! Starting the download and run of the ivm.lua script")
	shell.execute("wget -f --no-check-certificate --content-disposition https://www.dropbox.com/s/l31qc2gjdqb3waj/InventorySystem.lua?dl=1 ivm.lua")
	shell.execute("ivm dl")
	goto exit
end
if args[1] == "fresh" then
	print("Hello, we're gonna try to replace this starter file with a new one. Wish me luck!!!")
	shell.execute("wget -f --no-check-certificate --content-disposition https://www.dropbox.com/s/0qij9yilhv8gr7v/starter.lua?dl=1 starter.lua")
	print("Starter file has been updated, run normally to see everything work.")
	goto exit
end
dofile("ivm.lua")

::exit::

-------------------######
-- inventory manager script dl link    https://www.dropbox.com/s/l31qc2gjdqb3waj/InventorySystem.lua?dl=1
-- Library script dl link				https://www.dropbox.com/s/v97d9yelojtsub6/mylib.lua?dl=1
-- Starter script dl link				https://www.dropbox.com/s/0qij9yilhv8gr7v/starter.lua?dl=1