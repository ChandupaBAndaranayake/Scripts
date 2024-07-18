# elevate_cmd.bat - Open Elevated Command Prompt or PowerShell in Current Directory

## Description
This repository includes two batch scripts (`CMD_AS_Administrator.bat` and `PS_AS_Admin.bat`) that allow you to open an elevated Command Prompt (cmd) or PowerShell with administrative privileges directly in the current directory where the script is executed.

## Prerequisites
- Windows operating system
- Administrator privileges (to run PowerShell or cmd with elevation)

## Usage
1. **Download**: Download either `CMD_AS_Administrator.bat` or `PS_AS_Admin.bat` to your computer.
2. **Run Script**:
   - **For Command Prompt (`CMD_AS_Administrator.bat`)**:
     - Double-click `CMD_AS_Administrator.bat` to execute it.
     - Alternatively, run it from the command line by navigating to its location and typing `CMD_AS_Administrator.bat`.
   - **For PowerShell (`PS_AS_Admin.bat`)**:
     - Double-click `PS_AS_Admin.bat` to execute it.
     - Alternatively, run it from the command line by navigating to its location and typing `PS_AS_Admin.bat`.

## What They Do
### CMD_AS_Administrator.bat
- `@echo off`: Disables command echoing in the console for cleaner output.
- `setlocal enabledelayedexpansion`: Enables delayed expansion of variables (`!current_dir!`).
- `set "current_dir=%cd%"`: Sets the variable `current_dir` to the current directory path (`%cd%`).
- `powershell -Command "Start-Process cmd -ArgumentList '/K cd !current_dir!' -Verb RunAs"`:
  - Uses PowerShell to start a new Command Prompt (`cmd`) with elevation (`-Verb RunAs`).
  - Sets the initial directory of the elevated Command Prompt to `current_dir` (`/K cd !current_dir!`).

### PS_AS_Admin.bat
- `@echo off`: Disables command echoing in the console for cleaner output.
- `set "current_dir=%cd%"`: Sets the variable `current_dir` to the current directory path (`%cd%`).
- `powershell -Command "Start-Process powershell -ArgumentList '-NoExit -Command Set-Location ''%current_dir%''' -Verb RunAs"`:
  - Uses PowerShell to start a new PowerShell session with elevation (`-Verb RunAs`).
  - Sets the initial directory of the elevated PowerShell to `current_dir` (`-Command Set-Location '%current_dir%'`).

## Notes
- These scripts assume PowerShell is available and accessible from the command line.
- Ensure that your PowerShell execution policy allows running scripts (`Set-ExecutionPolicy`).

## License
These scripts are provided as-is under the [MIT License](https://opensource.org/licenses/MIT). Feel free to modify and distribute them according to your needs.
