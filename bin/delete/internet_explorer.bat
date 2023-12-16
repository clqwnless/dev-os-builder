@echo off


set mount_path="%~1"
set arch=%2
set x64_ie=Internet-Explorer-Optional-amd64
set x86_ie=Internet-Explorer-Optional-x86

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

if "%arch%" == "" (
    echo.
    echo   [*ERROR] Architecture argument required
    echo.
    pause
    exit /b 1
)

if %arch% == x64 (
    dism /Image:%mount_path% /Disable-Feature /FeatureName:%x64_ie% /Remove
) else if %arch% == x86 (
    dism /Image:%mount_path% /Disable-Feature /FeatureName:%x86_ie% /Remove
) else (
    echo.
    echo   [*ERROR] Unsupported architecture
    exit /b 1
)

rmdir /s /q %mount_path:~0,-1%\Program Files\internet explorer" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Program Files (x86)\Internet Explorer" > nul 2>&1
