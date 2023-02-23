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
set size=2
if exist %target% for /f %%i in ("%target%") do set size=%%~zi
if not "%size%"=="2" del %target% /F /Q& echo.>%target%& echo appraiserres.dll got nuked.
goto a
