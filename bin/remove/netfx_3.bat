@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

dism /Image:%mount_path% /Disable-Feature /FeatureName:NetFx3 /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:Microsoft-Windows-NetFx3-OC-Package /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:Microsoft-Windows-NetFx3-WCF-OC-Package /Remove
