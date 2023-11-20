@echo off


reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\SystemFileAssociations\image\shell\print" /v "ProgrammaticAccessOnly" /t "REG_SZ" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\batfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\cmdfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\docxfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\fonffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\htmlfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\inffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\inifile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\JSEFile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\otffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\pfmfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\regfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\rtffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\ttcfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\ttffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\txtfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\VBEFile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\VBSFile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SOFTWARE\Classes\WSFFile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /f > nul 2>&1
