@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d 0 /f > nul 2>&1

