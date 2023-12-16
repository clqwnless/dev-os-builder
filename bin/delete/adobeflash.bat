@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

rmdir /s /q %mount_path:~0,-1%\Windows\SysWOW64\Macromed" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\System32\Macromed" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\FlashPlayerApp.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\FlashPlayerCPLApp.cpl" > nul 2>&1
