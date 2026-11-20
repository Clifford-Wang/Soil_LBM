@echo off
setlocal
cd /d "%~dp0"
LBM_SinglePhase_MRT.exe config_single_phase.txt
pause
