--install reciver
local libSURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Reciver/lib/s"
local libKURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Reciver/lib/k"
local libAURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Reciver/lib/a"
local startupURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Reciver/startup"
local reciverURL = "https://raw.githubusercontent.com/DPHonys/SenderReciver-EnergyPylon/master/Reciver/EnergyPylonReciver.lua"

local libA, libK, libS, startup, reciver
local libAFile, libKFile, libSFile, startupFile, reciverFile

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
libSFile = libA.readAll()

local file3 = fs.open("lib/s", "w")
file3.write(libSFile)
file3.close()

--Startup
startup = http.get(startupURL)
startupFile = startup.readAll()

local file4 = fs.open("startup", "w")
file4.write(startupFile)
file4.close()

--Reciver
reciver = http.get(reciverURL)
reciverFile = reciver.readAll()

local file5 = fs.open("EnergyPylonReciver.lua", "w")
file5.write(reciverFile)
file5.close()