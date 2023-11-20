@echo off


:: %1 is mount_path

if "%1" == "" (
    echo.
    echo   [*ERROR] Extras enabled argument required
    echo.
    pause
    exit /b 1
)


:: if extras was not copied, script will not delete eventlog service,
:: because it can not delete without trustedinstaller rights,
:: because run_as_ti script in extras


if "%1" == "extras_enabled" (
    reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "delete_ie_shortcut" /t REG_SZ /d "C:\Windows\System32\cmd.exe /c del /s /q \"%AppData%\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk\" /f > nul 2>&1" /f > nul 2>&1
    
    rem reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "delete_lfsvc_service" /t REG_SZ /d "C:\Windows\System32\cmd.exe /c reg delete \"HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\lfsvc\" /f > nul 2>&1" > nul 2>&1 /f

    reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "delete_eventlog_service" /t REG_SZ /d "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -File C:\Utils\RunAsTI\run_as_ti.ps1 --command \"C:\Windows\System32\cmd.exe /c reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\EventLog /f\"  > $null 2>&1 " /f > nul 2>& 1
) else if "%1" == "extras_disabled" (
    reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "delete_ie_shortcut" /t REG_SZ /d "C:\Windows\System32\cmd.exe /c del /s /q \"%AppData%\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk\" /f > nul 2>&1" /f > nul 2>&1

    rem reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "delete_lfsvc_service" /t REG_SZ /d "C:\Windows\System32\cmd.exe /c reg delete \"HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\lfsvc\" /f > nul 2>&1" > nul 2>&1 /f
)
