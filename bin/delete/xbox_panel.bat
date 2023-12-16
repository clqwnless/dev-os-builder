@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

del /s /q %mount_path:~0,-1%\Windows\SysWOW64\GameBarPresenceWriter.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\GameBarPresenceWriter.proxy.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\GameChatOverlayExt.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\GameChatTranscription.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\GamePanel.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\SysWOW64\GamePanelExternalHook.dll" > nul 2>&1
