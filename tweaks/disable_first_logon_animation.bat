@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "EnableFirstLogonAnimation" /t REG_DWORD /d 0 /f > nul 2>&1
