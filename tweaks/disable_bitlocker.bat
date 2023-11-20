@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\BitLocker" /v "PreventDeviceEncryption" /t REG_DWORD /d 1 /f > nul 2>&1
