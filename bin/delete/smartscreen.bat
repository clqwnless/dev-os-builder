@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

del /s /q %mount_path:~0,-1%\Windows\System32\smartscreen.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\smartscreenps.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\smartscreenps.dll" > nul 2>&1
