local shell = require("shell")

print("Hello! Starting the download and run of the ivm.lua script")
shell.execute("wget -f https://raw.githubusercontent.com/WilliamCusack/opencomputers/master/starter.lua ivm.lua")
dofile("ivm.lua")