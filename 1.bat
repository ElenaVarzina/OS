@echo off
wmic os get Caption > wmicOsGetCaption.txt
wmic os get FreePhysicalMemory > wmicOsGetFreePhisicalMemory.txt
wmic os get TotalVisibleMemorySize > wmicOsGetTotalVisibleMemorySize.txt
wmic logicaldisk get name > wmicLogicaldiskGetName.txt
wmic logicaldisk get description > wmicLogicaldiskGetDescription.txt
md TEST
copy * TEST\*
type * >> allf.txt
del wmicLogicaldiskGetDescription.txt wmicLogicaldiskGetName.txt wmicOsGetCaption.txt wmicOsGetFreePhisicalMemory.txt wmicOsGetTotalVisibleMemorySize.txt 