@echo off


reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /f > nul 2>&1
