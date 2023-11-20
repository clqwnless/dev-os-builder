@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{7AD84985-87B4-4a16-BE58-8B72A5B390F7}" /t REG_SZ /f > nul 2>&1
