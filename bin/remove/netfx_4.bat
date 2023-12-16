@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

dism /Image:%mount_path% /Disable-Feature /FeatureName:NetFx4-AdvSrvs /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:NetFx4Extended-ASPNET45 /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:Microsoft-Windows-NetFx4-US-OC-Package /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:Microsoft-Windows-NetFx4-WCF-US-OC-Package /Remove
