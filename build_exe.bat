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

echo [1/3] Installing project dependencies...
python -m pip install -r "%~dp0requirements.txt"
if errorlevel 1 (
    echo Failed to install project dependencies.
    pause
    exit /b 1
)

echo [2/3] Installing PyInstaller...
python -m pip install pyinstaller
if errorlevel 1 (
    echo Failed to install PyInstaller.
    pause
    exit /b 1
)

echo [3/3] Building EXE...
python -m PyInstaller ^
    --noconfirm ^
    --clean ^
    "%~dp0VideoTool.spec"
if errorlevel 1 (
    echo Build failed.
    pause
    exit /b 1
)

echo.
echo Done. The file is here:
echo %~dp0dist\VideoTool.exe
pause
exit /b 0
