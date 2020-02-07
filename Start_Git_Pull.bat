@echo off

setlocal
:PROMPT
SET /P AREYOUSURE=Delete local copy (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

git fetch --all
git pull origin master

echo.
echo Press any key to exit . . .
pause >nul

:END
endlocal