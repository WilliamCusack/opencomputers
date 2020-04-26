local shell = require("shell")

print("Hello! Starting the download and run of the ivm.lua script")
shell.execute("wget -f --no-check-certificate --content-disposition https://www.dropbox.com/s/l31qc2gjdqb3waj/InventorySystem.lua?dl=1 ivm.lua")
dofile("ivm.lua")

-------------------######
