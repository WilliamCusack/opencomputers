local shell = require("shell")

local args, opts = shell.parse(...)

if args[1] = "dl" then
	print("Hello! Starting the download and run of the ivm.lua script")
	shell.execute("wget -f --no-check-certificate --content-disposition https://www.dropbox.com/s/l31qc2gjdqb3waj/InventorySystem.lua?dl=1 ivm.lua")
end
if args[1] = "fresh" then
	print("Hello, we're gonna try to replace this starter file with a new one. Wish me luck!")
end
dofile("ivm.lua")

-------------------######
