@echo off
setlocal
cd /d "%~dp0"
LBM_LEV_MRT.exe config_lev_mrt.txt
if errorlevel 1 (
  echo.
  echo LEV-MRT calculation failed. Check input, gas properties, GPU and driver.
  pause
  exit /b 1
)
echo LEV-MRT calculation completed.
pause
