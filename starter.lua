local shell = require("shell")

print("Hello! Starting the download and run of the ivm.lua script")
shell.execute("wget -f --no-check-certificate --content-disposition --no-dns-cache https://github.com/WilliamCusack/opencomputers/blob/master/Inventory%20System.lua ivm.lua")
dofile("ivm.lua")