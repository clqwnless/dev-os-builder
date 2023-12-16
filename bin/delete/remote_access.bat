@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

del /s /q %mount_path:~0,-1%\Windows\System32\mstsc.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\mstscax.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\mstsc.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\mstscax.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Remote Desktop Connection.lnk" > nul 2>&1
