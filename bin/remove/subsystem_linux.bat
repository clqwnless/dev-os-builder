@echo off


set mount_path="%~1"
set feature_name=Microsoft-Windows-Subsystem-Linux

if %mount_path% == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

dism /Image:%mount_path% /Disable-Feature /FeatureName:%feature_name% /Remove
