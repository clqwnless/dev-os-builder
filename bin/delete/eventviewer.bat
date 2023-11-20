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

del /s /q %mount_path:~0,-1%\Windows\System32\eventvwr.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\eventvwr.msc" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\eventvwr.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\eventvwr.msc" > nul 2>&1
del /s /q %mount_path:~0,-1%\Users\Default\AppData\Local\Microsoft\Windows\WinX\Group3\07 - Event Viewer.lnk" > nul 2>&1
del /s /q %mount_path:~0,-1%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools" > nul 2>&1
