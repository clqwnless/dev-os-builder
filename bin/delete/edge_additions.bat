@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

del /s /q %mount_path:~0,-1%\Windows\System32\MicrosoftEdgeBCHost.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\MicrosoftEdgeCP.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\MicrosoftEdgeDevTools.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\MicrosoftEdgeSH.exe" > nul 2>&1
