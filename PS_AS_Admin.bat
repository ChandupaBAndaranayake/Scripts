@echo off

rem Get the current directory
set "current_dir=%cd%"

rem Use PowerShell to start PowerShell with elevation and in the current directory
powershell -Command "Start-Process powershell -ArgumentList '-NoExit -Command Set-Location ''%current_dir%''' -Verb RunAs"
