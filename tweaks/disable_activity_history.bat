@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d 0 /f > nul 2>&1
