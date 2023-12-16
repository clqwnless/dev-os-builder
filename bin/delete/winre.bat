@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

rmdir /s /q %mount_path:~0,-1%\Windows\System32\Recovery" > nul 2>&1
