@echo off

:: waiting for windows to be prepared

:loop

tasklist | findstr /i "logonui" > nul 2>&1

if %errorlevel% == 0 (
    goto loop
)

color 4

chcp 65001 > nul

cls

taskkill /f /im explorer.exe > nul 2>&1

call :show_banner

echo   [*INFO] Grouping svchost . . .

set command=^
    "$systemInfo = systeminfo | findstr /i /c:'total physical memory'; " ^
    "$ram_in_mb = $systemInfo -replace '[^\d,]', ''; "    ^
    "$ram_in_mb = $ram_in_mb -replace ',', ''; " ^
    "$ram_in_b = [int]$ram_in_mb * 1024 * 2; " ^
    "$registryPath = 'HKLM:SYSTEM\ControlSet001\Control'; " ^
    "$Name = 'SvcHostSplitThresholdInKB'; " ^
    "New-ItemProperty -Path $registryPath -Name $Name -Value $ram_in_b -PropertyType DWORD -Force | Out-Null; "

chcp 437 > nul

powershell -NoLogo -Command %command%

chcp 65001 > nul

echo   [*INFO] Switching to dark theme

reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 0 /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 0 /f > nul 2>&1

echo   [*INFO] Deleting garbage services

sc delete AppReadiness > nul 2>&1

echo   [*INFO] Compacting OS

timeout /t 3 /nobreak > nul

"C:\Windows\System32\compact.exe" /c c:\*.* /s /i /a /exe:lzx

cls

call :show_banner

echo   [*INFO] Done with compacting . . . 

echo   [*INFO] Reboting to apply changes . . .

shutdown /r /t 010

timeout /t 009 /nobreak > nul

:: self-destruct

(goto) 2>nul & rmdir /s /q "%~dp0"

:show_banner

echo          __                       
echo     ____/ /__ _   __   ____  _____
echo    / __  / _ \ ^| / /  / __ \/ ___/
echo   / /_/ /  __/ ^|/ /  / /_/ (__  ) 
echo   \__,_/\___/^|___/   \____/____/  

echo.

exit /b 0
