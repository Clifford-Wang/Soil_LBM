@echo off
setlocal
cd /d "%~dp0"
if not exist input mkdir input
echo LBM Melting - Native CUDA D3Q19 MRT
echo Configuration: config_melting.txt
echo If input files do not exist, copy soil_sample_1.txt and Temperature.txt into input.
LBM_Melting_MRT.exe config_melting.txt
set "ERRORCODE=%ERRORLEVEL%"
echo.
if not "%ERRORCODE%"=="0" echo Simulation failed. See the error message above.
pause
exit /b %ERRORCODE%
