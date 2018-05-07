--install Receiver
local libSURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Receiver/lib/s"
local libKURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Receiver/lib/k"
local libAURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Receiver/lib/a"
local startupURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Receiver/startup"
local reciverURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Receiver/EnergyPylonReceiver.lua"

local libA, libK, libS, startup, Receiver
local libAFile, libKFile, libSFile, startupFile, ReceiverFile

fs.makeDir("lib")

--A
libA = http.get(libAURL)
libAFile = libA.readAll()

local file1 = fs.open("lib/a", "w")
file1.write(libAFile)
file1.close()

--K
libK = http.get(libKURL)
libKFile = libK.readAll()

local file2 = fs.open("lib/k", "w")
file2.write(libKFile)
file2.close()

--S
libS = http.get(libSURL)
libSFile = libS.readAll()

local file3 = fs.open("lib/s", "w")
file3.write(libSFile)
file3.close()

--Startup
startup = http.get(startupURL)
startupFile = startup.readAll()

local file4 = fs.open("startup", "w")
file4.write(startupFile)
file4.close()

--Receiver
Receiver = http.get(reciverURL)
ReceiverFile = Receiver.readAll()

local file5 = fs.open("EnergyPylonReceiver.lua", "w")
file5.write(ReceiverFile)
file5.close()