@echo off


:: %1 is mount_path

if "%1" == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)


set mount_path=%1

set utils_path=%mount_path:~0,-1%\Utils"

if not exist %utils_path% (
    mkdir %utils_path%"
)


xcopy /E /H /C /I /K /Y "%cd%\extras\Utils" %utils_path% > nul 2>&1
