@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d 1 /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 /f > nul 2>&1
