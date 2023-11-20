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

rmdir /s /q %mount_path:~0,-1%\Windows\PrintDialog" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\Speech" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\Speech_OneCore" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\System\Speech" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\SysWOW64\Speech" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\SysWOW64\Speech_OneCore" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\ProgramData\Microsoft\Speech_OneCore" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\System32\Speech" > nul 2>&1
rem rmdir /s /q %mount_path:~0,-1%\Windows\System32\Speech_OneCore" > nul 2>&1 (keeping because breaks windows search. if you do not need it, delete)
rmdir /s /q %mount_path:~0,-1%\Windows\System32\WinBioDatabase" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\System32\WinBioPlugIns" > nul 2>&1
