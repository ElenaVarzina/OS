@echo off
echo %computername%
set /a hour=%time:~0,2%
set /a minute=%time:~3,2%
 
if %minute% == 59 (
        set minute=0
        if %hour% == 23 (
                set %hour%=0
        ) else (
                set /a hour=%hour%+1
        )
) else (
        set /a minute=%minute%+1
)
 
if %minute% LSS 10 (
        set minute=0%minute%
)
if %hour% LSS 10 (
        set hour=0%hour%
)
echo %hour%:%minute%
call \\%computername%\c$\LAB6\script.bat

schtasks /create /SC once /TN newTask /TR "\\%computername%\c$\LAB6\script.bat" /ST %hour%:%minute%s