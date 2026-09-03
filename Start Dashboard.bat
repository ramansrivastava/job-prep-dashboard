@echo off
setlocal
set PORT=8765
cd /d "%~dp0"

:: Open the browser after a short delay (server needs a moment to start)
powershell -windowstyle hidden -command "Start-Sleep -Seconds 1; Start-Process 'http://localhost:%PORT%'" >nul 2>&1

:: Try Python 3
python --version >nul 2>&1
if %errorlevel%==0 (
    echo CS Prep OS dashboard running at http://localhost:%PORT%
    echo Close this window to stop the server.
    python -m http.server %PORT% --bind 127.0.0.1 2>nul
    goto :done
)

:: Try py launcher (Microsoft Store Python)
py --version >nul 2>&1
if %errorlevel%==0 (
    echo CS Prep OS dashboard running at http://localhost:%PORT%
    echo Close this window to stop the server.
    py -m http.server %PORT% --bind 127.0.0.1 2>nul
    goto :done
)

:: Try Node.js
node --version >nul 2>&1
if %errorlevel%==0 (
    echo CS Prep OS dashboard running at http://localhost:%PORT%
    echo Close this window to stop the server.
    npx --yes serve -p %PORT% -s . 2>nul
    goto :done
)

echo.
echo ERROR: Python or Node.js is required.
echo.
echo Install Python (recommended): https://www.python.org/downloads/
echo Install Node.js:              https://nodejs.org/
echo.
echo After installing, run this file again.
echo.
pause

:done
endlocal
