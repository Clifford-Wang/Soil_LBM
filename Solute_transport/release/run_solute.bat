@echo off
setlocal
cd /d "%~dp0"
if not exist input mkdir input
LBM_SoluteTransport.exe config_solute.txt
set "RESULT=%ERRORLEVEL%"
echo.
if not "%RESULT%"=="0" echo Simulation failed. Review the error message above.
pause
exit /b %RESULT%
