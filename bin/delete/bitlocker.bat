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

rmdir /s /q %mount_path:~0,-1%\Windows\System32\WindowsPowerShell\v1.0\Modules\BitLocker" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\BitLocker" > nul 2>&1
rmdir /s /q %mount_path:~0,-1%\Windows\BitLockerDiscoveryVolumeContents" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\BitLockerCsp.dll" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\BitLockerWizard.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\BitLockerWizardElev.exe" > nul 2>&1
del /s /q %mount_path:~0,-1%\Windows\System32\BitLockerDeviceEncryption.exe" > nul 2>&1
