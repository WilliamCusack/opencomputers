local shell = require("shell")

print("Hello! Starting the download and run of the ivm.lua script")
shell.execute("wget -f --no-check-certificate --content-disposition --no-dns-cache https://raw.githubusercontent.com/WilliamCusack/opencomputers/master/Inventory%20System.lua ivm.lua")
print("NO CACHE WORKKKKED???")
dofile("ivm.lua")

-------------------######
