@echo off

title DEV OS TOOLBOX

mode con cols=125 lines=50

chcp 65001 > nul

color 4

cls

call :find_root_folder

cd %root_folder%

call :ran_as_admin_check

call :find_build

setlocal enabledelayedexpansion

call :find_product_name
call :find_version

rem making product name & version global variables

echo !product_name! > temp.txt
echo !version! > temp_two.txt

endlocal

for /f "delims=" %%i in (temp.txt) do (
    set product_name=%%i
)

for /f "delims=" %%i in (temp_two.txt) do (
    set version=%%i
)

set product_name=%product_name:~0,-1%
set version=%version:~0,-1%

del /s /q temp.txt > nul 2>&1
del /s /q temp_two.txt > nul 2>&1


:main

cls

echo.
echo  ==========================================================================
echo    [*COMPUTER NAME: %ComputerName% ^| CURRENT USER: %username%*]
echo    [*CURRENT OS: %product_name% ^| Build: %build% ^| Version: %version%*]
echo  ==========================================================================


echo.

echo  ▄▄▄█████▓▒█████  ▒█████  ██▓    ▄▄▄▄   ▒█████ ▒██   ██▒
echo  ▓  ██▒ ▓▒██▒  ██▒██▒  ██▓██▒   ▓█████▄▒██▒  ██▒▒ █ █ ▒░
echo  ▒ ▓██░ ▒▒██░  ██▒██░  ██▒██░   ▒██▒ ▄█▒██░  ██░░  █   ░
echo  ░ ▓██▓ ░▒██   ██▒██   ██▒██░   ▒██░█▀ ▒██   ██░░ █ █ ▒ 
echo    ▒██▒ ░░ ████▓▒░ ████▓▒░██████░▓█  ▀█░ ████▓▒▒██▒ ▒██▒
echo    ▒ ░░  ░ ▒░▒░▒░░ ▒░▒░▒░░ ▒░▓  ░▒▓███▀░ ▒░▒░▒░▒▒ ░ ░▓ ░
echo      ░     ░ ▒ ▒░  ░ ▒ ▒░░ ░ ▒  ▒░▒   ░  ░ ▒ ▒░░░   ░▒ ░
echo    ░     ░ ░ ░ ▒ ░ ░ ░ ▒   ░ ░   ░    ░░ ░ ░ ▒  ░    ░  
echo              ░ ░     ░ ░     ░  ░░         ░ ░  ░    ░  
echo                                       ░                 

echo.

echo  TWEAKS                                             APPS INSTALLATION
echo  -------                                            ------------------
echo  [1]  ^|  Clear all event viewer logs                [11]  ^|  Brave Browser
echo  [2]  ^|  Compress OS (LZX)                          [12]  ^|  FireFox
echo  [3]  ^|  Right click open Command Prompt here       [13]  ^|  Thorium
echo  [4]  ^|  Right click take Ownership Menu            [14]  ^|  7-Zip
echo  [5]  ^|  Theme configuration                        [15]  ^|  Notepad+
echo.
echo  OTHER ^| ETC                                        REBOOT ^| SHUTDOWN ^| EXIT
echo  ------------                                       -------------------------
echo  [6]  ^|  Windows Activation (6-8 months)            [16]  ^|  Shutdown
echo  [7]  ^|  Add ultimate power                         [17]  ^|  Reboot
echo  [8]  ^|  Firewall configuration                     [18]  ^|  Safe Mode
echo  [9]  ^|  Event Viewer configuration                 [19]  ^|  Bios
echo  [10] ^|  Install C++ redistributable                [20]  ^|  Exit


echo.

set choice=

set /p choice=">>> "

set choice="%choice%"

if not defined choice (
    goto main
)

if %choice% equ "1" (
    call :clear_all_event_viewer_logs
) else if %choice% equ "2" (
    call :os_compression
) else if %choice% equ "3" (
    call :cmd_here_configuration
) else if %choice% equ "4" (
    call :ownership_menu_configuration
) else if %choice% equ "5" (
    call :theme_configuration
) else if %choice% equ "6" (
    call :windows_activation
) else if %choice% equ "7" (
    call :ultimate_power_addition
) else if %choice% equ "8" (
    call :firewall_configuration
) else if %choice% equ "9" (
    call :event_viewer_configuration
) else if %choice% equ "10" (
    call :cpp_redistributable_installation
) else if %choice% equ "11" (
    call :brave_browser_installation
) else if %choice% equ "12" (
    call :firefox_installation
) else if %choice% equ "13" (
    call :thorium_installation
) else if %choice% equ "14" (
    call :7_zip_installation
) else if %choice% equ "15" (
    call :notepad_pp_installation
) else if %choice% equ "16" (
    call :shutdown
) else if %choice% equ "17" (
    call :reboot
) else if %choice% equ "18" (
    call :safe_mode_configuration
) else if %choice% equ "19" (
    call :bios
) else if %choice% equ "20" (
    exit 0
)

goto main


:find_root_folder

set root_folder=%~dp0

set root_folder="%root_folder:~0,-1%"

exit /b 0


:ran_as_admin_check

fltmc > nul 2>&1

if %errorlevel% neq 0 (
    echo.
    echo [*ERROR] The Script requires admin rights
    echo.
    pause
    exit 1
)

exit /b 0


:find_build

set unknown_build=false

reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "CurrentBuild" > %root_folder%\temp.txt 2>&1

if %errorlevel% neq 0 (
    set build=unknown
    
    del /q temp.txt > nul 2>&1
    
    exit /b 1
)

for /f "tokens=3" %%i in (temp.txt) do (
    set build=%%i
)

exit /b 0


:find_product_name

set next_word_is_value=false

set product_name=

reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName" > %root_folder%\temp.txt 2>&1

if %errorlevel% neq 0 (
    set product_name=unknown
    
    del /q temp.txt > nul 2>&1
    
    exit /b 1
)

for /f "delims=" %%i in (temp.txt) do (
    set result=%%i
)

for %%i in (%result%) do (
    if !next_word_is_value! equ true (
        set product_name=!product_name! %%i
    )

    if "%%i" equ "REG_SZ" (
        set next_word_is_value=true
    )
)

set product_name=!product_name:~1!

del /q temp.txt > nul 2>&1

exit /b 0


:find_version 


set result=

set next_word_is_value=false

reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" > %root_folder%\temp.txt 2>&1

if %errorlevel% neq 0 (
    reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ReleaseId" > %root_folder%\temp.txt 2>&1
)

if %errorlevel% neq 0 (
    set version=unknown
    
    del /q temp.txt > nul 2>&1
    
    exit /b 1
)

for /f "delims=" %%i in (temp.txt) do (
    set result=%%i
)

set flag=false

set version=

for %%i in (%result%) do (
    if !next_word_is_value! equ true (
        set version=!version! %%i
    )

    if "%%i" equ "REG_SZ" (
        set next_word_is_value=true
    )
)

set version=!version:~1!

del /q temp.txt > nul 2>&1

exit /b 0


:clear_all_event_viewer_logs

cls

echo.

echo  [*INFO] Clearing all event viewer logs

for /F "tokens=*" %%G in ('wevtutil.exe el') do (
    wevtutil.exe cl "%%G" > nul 2>&1
)

echo.

pause

exit /b 0


:os_compression

cls

echo.

echo  WARNING:
echo  The following folders will be compressed
echo  C:\Program Files (x86)
echo  C:\Program Files
echo  C:\ProgramData
echo  C:\Windows
echo  C:\Users

echo.

echo  [*OS COMPRESSION*]
echo  -------------------
echo  [1] ^| Compress folders listed above
echo  [2] ^| Compress all disk "C"
echo  [3] ^| Back

echo.

set choice=

set /p choice=">>> "

set choice="%choice%"

if not defined choice (
    goto os_compression
)

if %choice% equ "1" (
    "C:\Windows\System32\compact.exe" /c "C:/Program Files (x86)/*.*" /s /i /a /exe:lzx
    "C:\Windows\System32\compact.exe" /c "C:/Program Files/*.*" /s /i /a /exe:lzx
    "C:\Windows\System32\compact.exe" /c "C:/ProgramData/*.*" /s /i /a /exe:lzx
    "C:\Windows\System32\compact.exe" /c "C:/Windows/*.*" /s /i /a /exe:lzx
    "C:\Windows\System32\compact.exe" /c "C:/Users/*.*" /s /i /a /exe:lzx
    
    echo.
    
    echo.
    
    pause
) else if %choice% equ "2" (
    "C:\Windows\System32\compact.exe" /c "C:/*.*" /s /i /a /exe:lzx
    
    echo.
    
    echo.
    
    pause
) else if %choice% equ "3" (
    exit /b 0
) else (
    goto os_compression
)

exit /b 0


:cmd_here_configuration

cls

echo.

echo  [*CMD HERE CONFIGURATION*]
echo  ---------------------------
echo  [1] ^| Enable cmd here right click
echo  [2] ^| Disable cmd here right click
echo  [3] ^| Back

echo.

set choice=

set /p choice=">>> "

set choice="%choice%"

if not defined choice (
    goto cmd_here_configuration
)

echo.

if %choice% equ "1" (
    reg add "HKEY_CLASSES_ROOT\Directory\shell\cmdprompt" /ve /t REG_SZ /d "@shell32.dll,-8506" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\shell\cmdprompt" /v "NoWorkingDirectory" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\shell\cmdprompt" /v "Extended" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\cmdprompt" /ve /t REG_SZ /d "@shell32.dll,-8506" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\cmdprompt" /v "NoWorkingDirectory" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\cmdprompt\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Drive\shell\cmdprompt" /ve /t REG_SZ /d "@shell32.dll,-8506" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Drive\shell\cmdprompt" /v "NoWorkingDirectory" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Drive\shell\cmdprompt" /v "Extended" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Drive\shell\cmdprompt\command" /ve /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f > nul 2>&1
    
    echo  [*INFO] Enabled "right click cmd here"
    
    echo.
    
    pause
) else if %choice% equ "2" (
    reg delete "HKEY_CLASSES_ROOT\Directory\shell\cmdprompt" /f > nul 2>&1
    
    reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\cmdprompt" /f > nul 2>&1
    echo  [*INFO] Disabled "right click cmd here"
    
    echo.
    
    pause
) else if %choice% equ "3" (
    exit /b 0
) else (
    goto cmd_here_configuration
)

exit /b 0


:ownership_menu_configuration

cls

echo.

echo  [*OWNERSHIP MENU CONFIGURATION*]
echo  ---------------------------------
echo  [1] ^| Enable OwnerShip menu
echo  [2] ^| Disable OwnerShip menu
echo  [3] ^| Back

echo.

set choice=

set /p choice=">>> "

set choice="%choice%"

if not defined choice (
    goto ownership_menu_configuration
)

echo.

if %choice% equ "1" (
    reg delete "HKEY_CLASSES_ROOT\*\shell\TakeOwnership" /f > nul 2>&1

    reg delete "HKEY_CLASSES_ROOT\*\shell\runas" /f > nul 2>&1

    reg delete "HKEY_CLASSES_ROOT\Directory\shell\TakeOwnership" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\*\shell\TakeOwnership" /ve /t REG_SZ /d "Take Ownership" /f  > nul 2>&1

    reg delete "HKEY_CLASSES_ROOT\*\shell\TakeOwnership" /v "Extended" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\*\shell\TakeOwnership" /v "HasLUAShield" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\*\shell\TakeOwnership" /v "NoWorkingDirectory" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\*\shell\TakeOwnership" /v "NeverDefault" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\*\shell\TakeOwnership\command" /ve /t REG_SZ /d "powershell -windowstyle hidden -command Start-Process cmd.exe -ArgumentList '/c takeown /f \\\"%%1\\\" && icacls \\\"%%1\\\" /grant *S-1-3-4:F /t /c /l' -Verb runAs" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\*\shell\TakeOwnership\command" /v "IsolatedCommand" /t REG_SZ /d "powershell -windowstyle hidden -command Start-Process cmd.exe -ArgumentList '/c takeown /f \\\"%%1\\\" && icacls \\\"%%1\\\" /grant *S-1-3-4:F /t /c /l' -Verb runAs" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\shell\TakeOwnership" /ve /t REG_SZ /d "Take Ownership" /f > nul 2>&1

    reg delete "HKEY_CLASSES_ROOT\Directory\shell\TakeOwnership" /v "Extended" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\shell\TakeOwnership" /v "HasLUAShield" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\shell\TakeOwnership" /v "NoWorkingDirectory" /t REG_SZ /d "" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\shell\TakeOwnership" /v "Position" /t REG_SZ /d "middle" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\shell\TakeOwnership\command" /ve /t REG_SZ /d "powershell -windowstyle hidden -command Start-Process cmd.exe -ArgumentList '/c takeown /f \\\"%%1\\\" /r /d y && icacls \\\"%%1\\\" /grant *S-1-3-4:F /t /c /l /q' -Verb runAs" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Directory\shell\TakeOwnership\command" /v "IsolatedCommand" /t REG_SZ /d "powershell -windowstyle hidden -command Start-Process cmd.exe -ArgumentList '/c takeown /f \\\"%%1\\\" && icacls \\\"%%1\\\" /grant *S-1-3-4:F /t /c /l /q' -Verb runAs" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Drive\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\\\" /r /d y && icacls \"%%1\\\" /grant *S-1-3-4:F /t /c" /f > nul 2>&1

    reg add "HKEY_CLASSES_ROOT\Drive\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\\\" /r /d y && icacls \"%%1\\\" /grant *S-1-3-4:F /t /c" /f > nul 2>&1



    echo  [*INFO] Enabled "right click take ownership"
    
    echo.
    
    pause
) else if %choice% equ "2" (
    reg delete "HKEY_CLASSES_ROOT\*\shell\TakeOwnership" /f > nul 2>&1
    
    reg delete "HKEY_CLASSES_ROOT\*\shell\runas" /f > nul 2>&1
    
    reg delete "HKEY_CLASSES_ROOT\Directory\shell\TakeOwnership" /f > nul 2>&1
    
    reg delete "HKEY_CLASSES_ROOT\Drive\shell\runas" /f > nul 2>&1
    
    echo  [*INFO] Disabled "right click take ownership"
    
    echo.

    pause
) else if %choice% equ "3" (
    exit /b 0
) else (
    goto ownership_menu_configuration
)

exit /b 0


:theme_configuration

cls

echo.

echo  [*THEME CONFIGURATION*]
echo  ------------------------
echo  [1] ^| Set Light Theme
echo  [2] ^| Set Dark Theme
echo  [3] ^| Back

echo.

set choice=

set /p choice=">>> "

set choice="%choice%"

if not defined choice (
    goto theme_configuration
)

echo.

if %choice% equ "1" (
    reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 1 /f > nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 1 /f > nul 2>&1

    echo  [*INFO] Set Light Theme
    
    echo.
    
    pause
) else if %choice% equ "2" (
    reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 0 /f > nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 0 /f > nul 2>&1

    echo  [*INFO] Set Dark Theme
    
    echo.
    
    pause
) else if %choice% equ "3" (
    exit /b 0
) else (
    goto theme_configuration
)

exit /b 0


:windows_activation

cls

echo.

echo  [*INFO] Activating windows

slmgr /upk

slmgr /cpky

slmgr /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D

slmgr /skms kms.digiboy.ir

slmgr /ato

echo.

pause

exit /b 0


:ultimate_power_addition

cls

echo.

echo  [*INFO] Adding ultimate power

chcp 437 > nul

echo.

powershell -NoLogo -Command "powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

chcp 65001 > nul

echo.
echo.

pause

exit /b 0


:firewall_configuration

cls

echo.

echo  [*FIREWALL CONFIGURATION*]
echo  ---------------------------
echo  [1] ^| Enable Firewall
echo  [2] ^| Disable Firewall
echo  [3] ^| Back

echo.

set choice=

set /p choice=">>> "

set choice="%choice%"

if not defined choice (
    goto firewall_configuration
)

echo.

if %choice% equ "1" (
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d 1 /f > nul 2>&1
    
    nsudo.exe -u:t -p:e cmd.exe /c "sc config mpssvc start=auto" > nul 2>&1
    
    echo  [*INFO] Enabled Firewall
    
    echo.
    
    pause
) else if %choice% equ "2" (
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f > nul 2>&1
    
    nsudo.exe -u:t -p:e cmd.exe /c "sc config mpssvc start=disabled" > nul 2>&1
    
    echo  [*INFO] Disabled Firewall
    
    echo.
    
    pause
) else if %choice% equ "3" (
    exit /b 0
) else (
    goto firewall_configuration
)

exit /b 0


:event_viewer_configuration

cls

echo.

echo  [*EVENT VIEWER CONFIGURATION*]
echo  -------------------------------
echo  [1] ^| Enable Event Viewer
echo  [2] ^| Disable Event Viewer
echo  [3] ^| Back

echo.

set choice=

set /p choice=">>> "

set choice="%choice%"

if not defined choice (
    goto event_viewer_configuration
)

echo.

if %choice% equ "1" (
    sc config EventLog start=auto > nul 2>&1

    echo  [*INFO] Enabled Event Viewer
    
    echo.
    
    pause
) else if %choice% equ "2" (
    sc config EventLog start=disabled > nul 2>&1


    echo  [*INFO] Disabled Event Viewer
    
    echo.
    
    pause
) else if %choice% equ "3" (
    exit /b 0
) else (
    goto event_viewer_configuration
)

exit /b 0


:cpp_redistributable_installation 

cls

echo.

echo  [*INFO] Installing 2005 package [x64 and x86]

curl --location "http://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.exe" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /q

del /q %TEMP%\package.exe > nul 2>&1

curl --location "http://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.exe" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /q

del /q %TEMP%\package.exe > nul 2>&1

echo  [*INFO] Installing 2008 package [x64 and x86]

curl --location "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /qb

del /q %TEMP%\package.exe > nul 2>&1

curl --location "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /qb

del /q %TEMP%\package.exe > nul 2>&1

echo  [*INFO] Installing 2010 package [x64 and x86]

curl --location "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /passive /norestart

del /q %TEMP%\package.exe > nul 2>&1

curl --location "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /passive /norestart

del /q %TEMP%\package.exe > nul 2>&1

echo  [*INFO] Installing 2012 package [x64 and x86]

curl --location "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /passive /norestart

del /q %TEMP%\package.exe > nul 2>&1

curl --location "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /passive /norestart

del /q %TEMP%\package.exe > nul 2>&1

echo  [*INFO] Installing 2013 package [x64 and x86]

curl --location "https://aka.ms/highdpimfc2013x64enu" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /passive /norestart

del /q %TEMP%\package.exe > nul 2>&1

curl --location "https://aka.ms/highdpimfc2013x86enu" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /passive /norestart

del /q %TEMP%\package.exe > nul 2>&1

echo  [*INFO] Installing 2015, 2017 ^& 2019 ^& 2022 package [x64 and x86]

curl --location "https://aka.ms/vs/17/release/vc_redist.x64.exe" --output %TEMP%\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /passive /norestart

del /q %TEMP%\package.exe > nul 2>&1

curl --location "https://aka.ms/vs/17/release/vc_redist.x86.exe" --output %TEMP%\\package.exe > nul 2>&1

start /wait %TEMP%\package.exe /passive /norestart

del /q %TEMP%\package.exe > nul 2>&1

echo.

pause

exit /b 0


:brave_browser_installation

cls

echo.

echo  [*INFO] Installing Brave Browser

curl --location "https://github.com/brave/brave-browser/releases/download/v1.57.62/BraveBrowserSetup.exe" --output %TEMP%\brave_installer.exe > nul 2>&1

start /wait %TEMP%\brave_installer.exe

del /q %TEMP%\brave_installer.exe

echo.

pause

exit /b 0


:firefox_installation

cls

echo.

echo  [*INFO] Installing FireFox

curl --location "https://ftp.mozilla.org/pub/firefox/releases/99.0b8/win64/en-US/Firefox%%20Setup%%2099.0b8.exe" --output %TEMP%\firefox_installer.exe > nul 2>&1

start /wait %TEMP%\firefox_installer.exe

del /q %TEMP%\firefox_installer.exe

echo.

pause

exit /b 0


:thorium_installation

cls

echo.

echo  [*INFO] Installing Thorium

curl --location "https://github.com/Alex313031/Thorium-Win/releases/download/M117.0.5938.157/thorium_mini_installer.exe" --output %TEMP%\thorium_installer.exe > nul 2>&1

start /wait %TEMP%\thorium_installer.exe

del /q %TEMP%\thorium_installer.exe

echo.

pause

exit /b 0


:7_zip_installation

cls

echo.

echo  [*INFO] Installing 7-Zip

curl --location "https://www.7-zip.org/a/7z2301-x64.exe" --output %TEMP%\7_zip_installer.exe > nul 2>&1

start /wait %TEMP%\7_zip_installer.exe

del /q %TEMP%\7_zip_installer.exe

echo.

pause

exit /b 0

:notepad_pp_installation

cls

echo.

echo  [*INFO] Installing Notepad ++

curl --location "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.5.8/npp.8.5.8.Installer.x64.exe" --output %TEMP%\\notepad_pp_installer.exe > nul 2>&1

start /wait %TEMP%\notepad_pp_installer.exe

del /q %TEMP%\notepad_pp_installer.exe

echo.

pause

exit /b 0


:shutdown

cls

echo.

echo  [*INFO] Shutting down . . .

shutdown /s /t 003

timeout /t 003 /nobreak > nul 2>&1


:reboot

cls

echo.

echo  [*INFO] Rebooting . . .

shutdown /r /t 003

timeout /t 003 /nobreak > nul 2>&1


:safe_mode_configuration


cls

echo.

echo  [*SAFE MODE*]
echo  ---------------------------
echo  [1] ^| Reboot to Safe Mode
echo  [2] ^| Exit Safe Mode
echo  [3] ^| Back

echo.

set choice=

set /p choice=">>> "

set choice="%choice%"

if not defined choice (
    goto safe_mode
)

echo.

if %choice% equ "1" (
    echo  [*INFO] Rebooting to Safe Mode . . .

    bcdedit /set {current} safeboot minimal > nul 2>&1

    shutdown /r /t 003
    
    timeout /t 003 /nobreak > nul 2>&1
) else if %choice% equ "2" (
    echo  [*INFO] Exiting Safe Mode . . .

    bcdedit /deletevalue {current} safeboot > nul 2>&1

    shutdown /r /t 003
    
    timeout /t 003 /nobreak > nul 2>&1
) else if %choice% equ "3" (
    exit /b 0
) else (
    goto safe_mode_configuration
)


:bios

cls

echo.

echo  [*INFO] Rebooting to Bios . . .

shutdown /r /fw /t 003

timeout /t 003 /nobreak > nul 2>&1
