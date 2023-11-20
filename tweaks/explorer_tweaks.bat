@echo off


rem show file extensions

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f > nul 2>&1

rem show hidden files/directories

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f > nul 2>&1
