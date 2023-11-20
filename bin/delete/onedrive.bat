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


del /s /q %mount_path:~0,-1%\Windows\SysWOW64\OneDrive.ico" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\OneDriveSettingSyncProvider.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\OneDriveSettingSyncProvider.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\OneDriveSetup.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" > nul 2>&1
