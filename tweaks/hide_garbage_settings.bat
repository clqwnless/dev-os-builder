@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "SettingsPageVisibility" /t REG_SZ /d "hide:windowsdefender;windowsupdate;delivery-optimization;findmydevice;developers;windowsinsider;cortana-permissions;cortana-moredetails;mobile-devices;gaming-gamebar;gaming-gamedvr;gaming-broadcasting;gaming-gamemode;gaming-xboxnetworking;keyboard;speech;backup;recovery;privacy-feedback;privacy-speech;printers;bluetooth;pen;backup;troubleshoot;recovery;activation;quiethours;storagesense;tabletmode;easeofaccess-eyecontrol;easeofaccess-speechrecognition;workplace;maps;appsforwebsites;remotedesktop;themes" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowCpl" /t REG_DWORD /d 1 /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "1" /t REG_SZ /d "Troubleshooting" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "2" /t REG_SZ /d "BitLocker Drive Encryption" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "3" /t REG_SZ /d "Speech Recognition" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "4" /t REG_SZ /d "Backup and Restore (Windows 7)" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "5" /t REG_SZ /d "RemoteApp and Desktop Connections" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "6" /t REG_SZ /d "Speech Recognition" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "7" /t REG_SZ /d "Storage Spaces" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "8" /t REG_SZ /d "File History" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_DEFAULT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "9" /t REG_SZ /d "Credential Manager" /f > nul 2>&1
