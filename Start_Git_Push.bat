@echo off

setlocal
:PROMPT
SET /P AREYOUSURE=Overwrite the remote copy? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
set /P NAME="Commit message? "

git add .
git commit -m "%NAME%"
git push

echo.
echo Press any key to exit . . .
pause >nul

:END
endlocal