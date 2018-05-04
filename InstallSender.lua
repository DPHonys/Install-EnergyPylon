--install sender
local libAURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Sender/lib/a"
local startupURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Sender/startup"
local senderURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Sender/EnergyPylonSender.lua"

local libA, startup, sender
local libAFile, startupFile, senderFile

fs.makeDir("lib")

libA = http.get(libAURL)
libAFile = libA.readAll()

local file1 = fs.open("lib/a", "w")
file1.write(libAFile)
file1.close()

startup = http.get(startupURL)
startupFile = startup.readAll()


local file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()

sender = http.get(senderURL)
senderFile = sender.readAll()


local file3 = fs.open("EnergyPylonSender.lua", "w")
file3.write(senderFile)
file3.close()
