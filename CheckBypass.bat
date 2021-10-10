@echo off
openfiles>nul 2>&1
if %errorlevel% EQU 0 goto run
echo You need to run this script as Administrator
pause
exit
:run
set target=C:\$WINDOWS.~BT\Sources\appraiserres.dll
echo Keep this window open while running the setup.
:a
if exist %target% echo appraiserres.dll got removed& del %target% /F /Q > nul 2> nul
goto a
