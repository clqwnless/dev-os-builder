@echo off


set mount_path="%~1"

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

dism /Image:%mount_path% /Disable-Feature /FeatureName:Printing-PrintToPDFServices-Features /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:Printing-Foundation-Features /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:Printing-Foundation-InternetPrinting-Client /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:Printing-Foundation-LPDPrintService /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:Printing-Foundation-LPRPortMonitor /Remove

dism /Image:%mount_path% /Disable-Feature /FeatureName:Printing-XPSServices-Features /Remove
