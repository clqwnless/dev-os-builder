@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\Power" /v "HibernateEnabled" /t DWORD_REG /d 0 > nul 2>&1
