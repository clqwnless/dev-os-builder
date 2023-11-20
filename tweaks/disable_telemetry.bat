@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "Allow Telemetry" /t REG_DWORD /d 0 /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f > nul 2>&1
