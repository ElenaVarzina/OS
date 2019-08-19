@echo off
setlocal enabledelayedexpansion
for %%X in (C:\LAB6\cd\*) do (
call getSize %%X
echo !getSize!
if !getSize! GTR 2097152 (xcopy /Z %%X \\%computername%\c$\temp\)
)