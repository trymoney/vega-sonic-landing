@echo off
echo ========================================
echo   Vega-Sonic Command Center Setup
echo ========================================
echo.

REM Check Node.js
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo [OK] Node.js found:
node --version
echo.

REM Install dependencies
echo [INFO] Installing dependencies...
npm install

if %errorlevel% neq 0 (
    echo [ERROR] Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo ========================================
echo   Installation Complete!
echo ========================================
echo.
echo To start the server:
echo   npm start
echo.
echo Then open your browser:
echo   http://localhost:3000
echo.
pause
