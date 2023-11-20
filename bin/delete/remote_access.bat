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

del /s /q %mount_path:~0,-1%\Windows\System32\mstsc.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\mstscax.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\mstsc.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\mstscax.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Remote Desktop Connection.lnk" > nul 2>&1
