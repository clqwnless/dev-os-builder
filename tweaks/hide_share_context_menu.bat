@echo off


reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\*\shellex\ContextMenuHandlers\ModernSharing" /f > nul 2>&1
