local shell = require("shell")

print("Hello! Starting the download and run of the ivm.lua script")
shell.execute("wget -f --no-check-certificate --content-disposition --no-dns-cache https://www.dropbox.com/s/enklptrbywr8p27/Inventory System.lua?dl=1 ivm.lua")
print("NO CACHE WORKKKKED???")
dofile("ivm.lua")

-------------------######
