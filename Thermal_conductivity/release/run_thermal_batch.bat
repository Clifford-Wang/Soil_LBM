@echo off
setlocal
cd /d "%~dp0"
LBM_ThermalConductivity.exe --config config_thermal.txt --batch batch_cases.csv --output-root results/batch --variants binary,geometric,harmonic,arithmetic
if errorlevel 1 (
  echo Batch failed. Check sample table and input paths.
  pause
  exit /b 1
)
echo Batch completed.
pause
