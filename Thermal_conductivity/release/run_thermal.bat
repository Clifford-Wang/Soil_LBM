@echo off
setlocal
cd /d "%~dp0"
LBM_ThermalConductivity.exe --config config_thermal.txt
if errorlevel 1 (
  echo.
  echo Calculation failed. Check configuration, input files and NVIDIA driver.
  pause
  exit /b 1
)
echo Calculation completed.
pause
