@echo off


reg /add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /v "AutoConnectAllowedOEM" /t REG_DWORD /d 0 /f > nul 2>&1
