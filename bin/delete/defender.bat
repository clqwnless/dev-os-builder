@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

rmdir /s /q %mount_path:~0,-1%\Program Files\Windows Defender" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Program Files\Windows Defender Advanced Threat Protection" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Program Files (x86)\Windows Defender" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\ProgramData\Microsoft\Windows Defender" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\ProgramData\Microsoft\Windows Defender Advanced Threat Protection" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\ProgramData\Microsoft\Windows Security Health" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\SecurityHealthAgent.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\SecurityHealthProxyStub.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\SecurityHealthService.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\SecurityHealthSSO.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\SecurityHealthSystray.exe" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\SystemResources\Microsoft.Windows.SecHealthUI" > nul 2>&1
