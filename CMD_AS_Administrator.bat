@echo off
setlocal enabledelayedexpansion

rem Get the current directory
set "current_dir=%cd%"

rem Use PowerShell to start cmd with elevation and in the current directory
powershell -Command "Start-Process cmd -ArgumentList '/K cd !current_dir!' -Verb RunAs"
