@echo off
setlocal
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 (
    echo Python was not found in PATH.
    echo Install Python and try again.
    pause
    exit /b 1
)

python "%~dp0compress_video.py"
set "EXIT_CODE=%ERRORLEVEL%"

if not "%EXIT_CODE%"=="0" (
    echo.
    echo Program exited with error: %EXIT_CODE%
    pause
)

exit /b %EXIT_CODE%
