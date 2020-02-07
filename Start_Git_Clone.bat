@echo off

setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure you want to clone the repo (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

git clone https://github.com/Callum-Bartle-92019337/RPG-Prototype.git
echo.
echo Press any key to exit . . .
pause >nul

:END
endlocal