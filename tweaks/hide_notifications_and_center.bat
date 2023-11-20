@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d 1 /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d 0 /f > nul 2>&1
