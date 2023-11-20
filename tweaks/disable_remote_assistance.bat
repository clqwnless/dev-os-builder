@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d 0 /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "LoggingEnabled" /t REG_DWORD /d 0 /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Policies\Wow6432Node\Windows NT\Terminal Services" /v "LoggingEnabled" /t REG_DWORD /d 0 /f > nul 2>&1
