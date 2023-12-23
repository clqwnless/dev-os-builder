@echo off

:::::::::::::::::::::::::::::::::::::::::::::::
::                                           ::
::                                           ::
::                                           ::
::    WINDOWS 10 2019 LTSC DEV OS BUILDER    ::
::        MADE BY GITHUB.COM/CLQWNLESS       ::
::                                           ::
::                                           ::
::                                           ::
:::::::::::::::::::::::::::::::::::::::::::::::


chcp 65001 > nul 2>&1

cls

set wim_path="C:\Users\admin\Desktop\temp\install.wim"
set index=1
set mount_path="C:\Users\admin\Desktop\temp\os-files"

color 4


echo             _           __                                  __  _           _                
echo   _      __(_)___  ____/ /___ _      _______   ____  ____  / /_(_)___ ___  (_)___  ___  _____
echo  ^| ^| /^| / / / __ \/ __  / __ \ ^| /^| / / ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/
echo  ^| ^|/ ^|/ / / / / / /_/ / /_/ / ^|/ ^|/ (__  )  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /    
echo  ^|__/^|__/_/_/ /_/\__,_/\____/^|__/^|__/____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/     
echo                                                 /_/                                         
echo.

echo ===========================================================================
echo   [*WINDOWS 10 2019 LTSC DEV OS BUILDER*]
echo   [*MADE BY GITHUB.COM/CLQWNLESS*]
echo ===========================================================================

echo.

echo   [*NOTE] THIS AN EXTREME OPTIMIZATOR. MOST FEATURES WILL BE DELETED*]


whoami > temp.txt

for /f "delims=" %%i in (temp.txt) do (
    if "%%i" neq "nt authority\system" (
        echo.
        echo   [*ERROR] The script requires trustedinstaller rights
        echo   [*INFO] You can use Process Hacker ; PowerRun ; NSudo to do this
        
        del /s /q temp.txt > nul 2>&1

        goto error_exit
    )
)

if not exist %wim_path% (
    echo.
    echo   [*ERROR] Wim path does not exist
    
    del /s /q temp.txt > nul 2>&1
    
    goto error_exit
)

if not exist %mount_path% (
    echo.
    echo   [*ERROR] Mount path does not exist
    
    del /s /q temp.txt > nul 2>&1
    
    goto error_exit
)

del /s /q temp.txt > nul 2>&1

dism /Get-WimInfo /WimFile:%wim_path% /Index:%index% | findstr /i "Architecture" > temp.txt

if %errorlevel% neq 0 (
    echo.
    echo   [*ERROR] Invalid wim
    
    del /s /q temp.txt > nul 2>&1
    
    goto error_exit
)

for /f "delims=" %%i in (temp.txt) do (
    if "%%i" == "Architecture : x64" (
        set architecture=x64
    ) else if "%%i" == "Architecture : x86" (
        set architecture=x86
    ) else (
        echo.
        echo   [*ERROR] Unsupported architecture
        
        del /s /q temp.txt > nul 2>&1
        
        goto error_exit
    )
)

del /s /q temp.txt > nul 2>&1

echo   [*INFO] Trying to mount wim


dism /Mount-WIM /WimFile:%wim_path% /Index:%index% /MountDir:%mount_path%

echo.

if %errorlevel% neq 0 (
    goto :error_exit
)

:loop_1

set choice=

echo   [*] Integrate updates? (y, n):

set /p choice=">>> "

if "%choice%" == "" (
    goto loop_1
)

if /i %choice% neq y (
    if /i %choice% neq n (
        goto loop_1
    )
)

if /i %choice% == n (
    goto main
)

echo.

:loop_2

set update_path=

echo   [*] Update path (it should be cab or msu):

set /p update_path=">>> "

if "%update_path%" == "" (
    goto loop_2
)

if not exist %update_path% (
    echo.
    echo   [*ERROR] Update path does not exist
    goto loop_2
)

dism /add-package /image:%mount_path% /PackagePath=%update_path%


:main

echo   [*INFO] Deleting Defender

call bin\delete\defender.bat %mount_path%

echo   [*INFO] Deleting AdobeFlash

call bin\delete\adobeflash.bat %mount_path%

echo   [*INFO] Deleting MicrosoftEdge additions

call bin\delete\edge_additions.bat %mount_path%

echo   [*INFO] Deleting MixedRealityBroker

call bin\delete\mixedrealitybroker.bat %mount_path% 

echo   [*INFO] Deleting OneDrive

call bin\delete\onedrive.bat %mount_path%

echo   [*INFO] Deleting QuickAssist

call bin\delete\quickassist.bat %mount_path%

echo   [*INFO] Deleting InternetExplorer

call bin\delete\internet_explorer.bat %mount_path% x64

echo   [*INFO] Deleting SkypeOrtc

call bin\delete\skypeortc.bat %mount_path%

echo   [*INFO] Deleting SmartScreen

call bin\delete\smartscreen.bat %mount_path%

echo   [*INFO] Deleting Xbox Panel

call bin\delete\xbox_panel.bat %mount_path%

echo   [*INFO] Deleting garbage folders

call bin\delete\garbage_folders.bat %mount_path%

echo   [*INFO] Deleting Speech Recognition from start menu

call bin\delete\speech_recognition_start_menu.bat %mount_path%

echo   [*INFO] Deleting Narrator from start menu

call bin\delete\narrator_start_menu.bat %mount_path%

echo   [*INFO] Deleting SgrmBroker

call bin\delete\sgrmbroker.bat %mount_path%

rem echo   [*INFO] Deleting Event Viewer

rem call bin\delete\eventviewer.bat %mount_path%

echo   [*INFO] Deleting WinRE

call bin\delete\winre.bat %mount_path%

echo   [*INFO] Disabling ^& deleting RemoteAccess ^& RemoteAssistance

call tweaks\disable_remote_assistance.bat %mount_path%

call bin\delete\remote_access.bat %mount_path%

echo   [*INFO] Disabling ^& deleting BitLocker

call tweaks\disable_bitlocker.bat %mount_path%

call bin\delete\bitlocker.bat %mount_path%

echo   [*INFO] Removing some features

call bin\remove\direct_play.bat %mount_path%

call bin\remove\fax.bat %mount_path%
rem call bin\remove\netfx_3.bat %mount_path%
rem call bin\remove\netfx_4.bat %mount_path%
call bin\remove\printing.bat %mount_path%
call bin\remove\simple_tcp.bat %mount_path%
call bin\remove\subsystem_linux.bat %mount_path%
call bin\remove\windows_defender_default_definitions.bat %mount_path%
call bin\remove\work_folders.bat %mount_path%

echo.

echo   [*INFO] Cleaning WinSxS (This can take a while)

python bin\winsxs_cleanup.py -mount_path %mount_path% > nul 2>&1

echo   [*INFO] Deleting bloaty system apps

python bin\system_apps_cleanup.py -mount_path %mount_path% > nul 2>&1

echo   [*INFO] Loading registry hives to apply tweaks

set components_registry_path=%mount_path:~0,-1%\Windows\system32\config\COMPONENTS"
set software_registry_path=%mount_path:~0,-1%\Windows\system32\config\SOFTWARE"
set system_registry_path=%mount_path:~0,-1%\Windows\system32\config\SYSTEM"
set default_user_registry_path=%mount_path:~0,-1%\Users\Default\NTUSER.DAT"

reg load HKLM\OFFLINE_COMPONENTS %components_registry_path% > nul 2>&1
reg load HKLM\OFFLINE_SOFTWARE %software_registry_path% > nul 2>&1
reg load HKLM\OFFLINE_SYSTEM %system_registry_path% > nul 2>&1
reg load HKLM\OFFLINE_DEFAULT_USER %default_user_registry_path% > nul 2>&1

echo   [*INFO] Bypassing dism sfc ^& dism

call tweaks\sfc_and_dism_bypass.bat

echo   [*INFO] Bypassing UAC

call tweaks\uac_bypass.bat

echo   [*INFO] Bypassing powershell policy

call tweaks\powershell_policy_bypass.bat

reg unload HKLM\OFFLINE_COMPONENTS > nul 2>&1

echo   [*INFO] Disabling toolbars

call tweaks\disable_toolbars.bat

echo   [*INFO] Disabling ^& hiding features from control panel

call tweaks\disable_and_hide_features_control_panel.bat

echo   [*INFO] Hiding "share" from context menu

call tweaks\hide_share_context_menu.bat

echo   [*INFO] Hiding "Paint 3d" ^& "Print 3D" from context menu

call tweaks\hide_paint_3d_and_print_3d_context_menu.bat

echo   [*INFO] Hiding "Cast to Device" from context menu

call tweaks\hide_cast_to_device_context_menu.bat

echo   [*INFO] Hiding "Print" from context menu

call tweaks\hide_print_context_menu.bat

echo   [*INFO] Hiding some event logs

call tweaks\hide_some_event_logs.bat

echo   [*INFO] Hiding People

call tweaks\hide_people.bat

echo   [*INFO] Hiding garbage settings

call tweaks\hide_garbage_settings.bat

echo   [*INFO] Hiding notifications ^& notification center

call tweaks\hide_notifications_and_center.bat

echo   [*INFO] Applying explorer tweaks

call tweaks\explorer_tweaks.bat

echo   [*INFO] Hiding task view

call tweaks\hide_taskview.bat

echo   [*INFO] Disabling Telemetry

call tweaks\disable_telemetry.bat

echo   [*INFO] Disabling Open File Security Warning

call tweaks\disable_open_file_security_warning.bat

echo   [*INFO] Cleaning up StartUp

call tweaks\startup_cleanup.bat

echo   [*INFO] Disabling BitLocker

call tweaks\disable_bitlocker.bat

echo   [*INFO] Disabling first logon animation

call tweaks\disable_first_logon_animation.bat

echo   [*INFO] Disabling firewall

call tweaks\disable_firewall.bat

echo   [*INFO] Disabling activity history

call tweaks\disable_activity_history.bat

echo   [*INFO] Disabling storage sense

call tweaks\disable_storage_sense.bat

echo   [*INFO] Disabling wifi sense

call tweaks\disable_wifi_sense.bat

echo   [*INFO] Disabling hibernation

call tweaks\disable_hibernation.bat

echo   [*INFO] Cleaning up garbage services

call tweaks\services_cleanup.bat %mount_path%

echo   [*INFO] Cleaning up garbage scheduled tasks

call tweaks\scheduled_tasks_cleanup.bat

echo.

:loop_4

set choice=

echo   [*] Apply changes? (y, n):

set /p choice=">>> "

if "%choice%" == "" (
    goto loop_4
)

if /i %choice% neq y (
    if /i %choice% neq n (
        goto loop_4
    )
)

if /i %choice% == n (
    echo   [*INFO] Unloading registry hives

    reg unload "HKLM\OFFLINE_SOFTWARE" > nul 2>&1
    reg unload "HKLM\OFFLINE_SYSTEM" > nul 2>&1
    reg unload "HKLM\OFFLINE_DEFAULT_USER" > nul 2>&1
    
    echo   [*INFO] Unmounting wim

    dism /Unmount-WIM /MountDir:%mount_path% /Discard
    
    echo.
    
    if %errorlevel% equ 0 (
        echo   [*INFO] Done!
        goto success_exit
    )
)


call tweaks\scheduled_tasks_cleanup.bat

echo   [*INFO] Unloading registry hives

reg unload "HKLM\OFFLINE_SOFTWARE" > nul 2>&1
reg unload "HKLM\OFFLINE_SYSTEM" > nul 2>&1
reg unload "HKLM\OFFLINE_DEFAULT_USER" > nul 2>&1

echo   [*INFO] Unmounting wim

dism /Unmount-WIM /MountDir:%mount_path% /Commit

echo.

if %errorlevel% equ 0 (
    echo   [*INFO] Done!
    goto success_exit
)

goto error_exit


:success_exit

echo.

pause

exit /b 0


:error_exit

echo.

pause

exit /b 1
