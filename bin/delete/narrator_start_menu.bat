@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

del /s /q %mount_path:~0,-1%\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility\Narrator.lnk" > nul 2>&1
