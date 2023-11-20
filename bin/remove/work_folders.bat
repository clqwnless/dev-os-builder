@echo off


:: %1 is mount_path


if "%1" == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

set mount_path=%1

set feature_name=WorkFolders-Client

dism /Image:%mount_path% /Disable-Feature /FeatureName:%feature_name% /Remove
