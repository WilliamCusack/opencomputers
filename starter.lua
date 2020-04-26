local shell = require("shell")

print("Hello! Starting the download and run of the ivm.lua script")
shell.execute("wget -f --no-check-certificate --content-disposition https://www.dropbox.com/s/enklptrbywr8p27/InventorySystem.lua?dl=1 ivm.lua")
dofile("ivm.lua")

-------------------######
