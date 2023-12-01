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

del /s /q %mount_path:~0,-1%\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility\Narrator.lnk" > nul 2>&1
