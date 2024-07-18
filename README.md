# elevate_cmd.bat - Open Elevated Command Prompt in Current Directory

## Description
This batch script (`elevate_cmd.bat`) allows you to open an elevated Command Prompt (cmd) with administrative privileges directly in the current directory where the script is executed.

## Prerequisites
- Windows operating system
- Administrator privileges (to run PowerShell with elevation)

## Usage
1. **Download**: Download `elevate_cmd.bat` to your computer.
2. **Run Script**:
   - Double-click `elevate_cmd.bat` to execute it.
   - Alternatively, run it from the command line by navigating to its location and typing `elevate_cmd.bat`.

## What it Does
- **@echo off**: Disables command echoing in the console for cleaner output.
- **setlocal enabledelayedexpansion**: Enables delayed expansion of variables (`!current_dir!`).
- **set "current_dir=%cd%"**: Sets the variable `current_dir` to the current directory path (`%cd%`).
- **powershell -Command "Start-Process cmd -ArgumentList '/K cd !current_dir!' -Verb RunAs"**: Uses PowerShell to:
  - Start a new Command Prompt (`cmd`) with elevation (`-Verb RunAs`).
  - Sets the initial directory of the elevated Command Prompt to `current_dir` (`/K cd !current_dir!`).

## Notes
- This script assumes PowerShell is available and accessible from the command line.
- Ensure that your PowerShell execution policy allows running scripts (`Set-ExecutionPolicy`).

## License
This script is provided as-is under the [MIT License](https://opensource.org/licenses/MIT). Feel free to modify and distribute it according to your needs.

