@echo off

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_COMPONENTS\CanonicalData" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_COMPONENTS\CanonicalData" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_COMPONENTS\CanonicalData\Catalogs" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_COMPONENTS\CanonicalData\Deployments" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_COMPONENTS\DerivedData\Components" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_COMPONENTS\DerivedData\Components" /f > nul 2>&1
