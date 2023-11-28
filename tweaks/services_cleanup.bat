@echo off


:: %1 is mount_path

if "%1" == "" (
    echo.
    echo   [*ERROR] Mount path argument required
    echo.
    pause
    exit /b 1
)

set mount_path=%1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\AppIDSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\BDESVC" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\AppReadiness" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\DiagTrack" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\PimIndexMaintenanceSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\DoSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\MapsBroker" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\NgcSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\NgcCtnrSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\swprv" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\PhoneSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SCardSvr" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\ScDeviceEnum" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SCPolicySvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SysMain" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\TapiSrv" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WalletService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WinDefend" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\XblAuthManager" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\XblGameSave" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\xboxgip" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\XboxGipSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\XboxNetApiSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\Sense" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SensorDataService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SensorService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SensrSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\Spooler" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\TabletInputService" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\wscsvc" /v "Start" /t REG_DWORD /d 4 /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\InstallService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\CDPSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\CDPUserSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WaaSMedicSvc" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d 4 /f > nul 2>&1

rem Is ok. If you disable AppReadiness, windows will crash

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\VSS" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SDRSVC" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\FrameServer" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\UsoSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WpcMonSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\BTAGService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\BluetoothUserService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\bthserv" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\PeerDistSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\Wecsvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WdNisSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\wisvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WpnService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WpnUserService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\icssvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\Fax" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WbioSrvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\wcncsvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\OneSyncSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\fhsvc" /f > nul 2>&1

rem Is ok. If you disable EventLog, windows will crash

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\lfsvc" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SharedAccess" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\RemoteRegistry" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\RetailDemo" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\irmon" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WerSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\stisvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\BthAvctpSvc" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\MessagingService" /f > nul 2>&1

rem messagingservice may crash system i think. disabling it (only temporary)

rem Is ok. If you disable SharedAccess, windows will crash

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\AppMgmt" /f > nul 2>&1

rem appmgmt may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\AxInstSV" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\BcardDVRUserService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\ALG" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\AssignedAccessManagerSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\tzautoupdate" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\Appinfo" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\AJRouter" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\BITS" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\wbengine" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\camsvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\CaptureService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\CertPropSvc" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\ClipSVC" /f > nul 2>&1

rem ClipSVC may crash system i think. disabling it (only temporary)

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\cbdhsvc" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\KeyIso" /f > nul 2>&1

rem KeyIso may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\EventSystem" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\COMSysApp" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\ConsentUxUserSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\VaultSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\DsSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\DusmSvc" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\DevicesFlowUserSvc" /f > nul 2>&1

rem deviceflowsvc may crash system i think. disabling it (only temporary)

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\DevicePickerUserSvc" /f > nul 2>&1

rem DevicePickerUserSvc may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\dmwappushservice" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\DevQueryBroker" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\diagsvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\DPS" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WdiServiceHost" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WdiSystemHost" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\lmhosts" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SENS" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SgrmBroker" /f > nul 2>&1

del /s /q %mount_path:~0,-1%\Windows\System32\SgrmBroker.exe" > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\StorSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SecurityHealthService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\DisplayEnhancementService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\TrkWks" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\MSDTC" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\embeddedmode" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\EFS" /f > nul 2>&1

rem efs may crash system i think. disabling it (only temporary)

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\EntAppSvc" /f > nul 2>&1

rem entappsvc may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\Eaphost" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\fdPHost" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\FDResPub" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\BcastDVRUserService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\GraphicsPerfSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\hidserv" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\IKEEXT" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\iphlpsvc" /v "Start" /t REG_DWORD /d 4 /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\ipxlatCfgSvc" /f > nul 2>&1

rem ipxlatCfgSvc may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\PolicyAgent" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\KtmRm" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\LxpSvc" /f > nul 2>&1

rem LxpSvc may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\lltdsvc" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\wlpasvc" /f > nul 2>&1

rem wlpasvc may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\diagnosticshub.standardcollector.service" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\wlidsvc" /f > nul 2>&1

rem wlidsvc may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\MSiSCSI" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\smphost" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\NaturalAuthentication" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\Netlogon" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\NcdAutoSetup" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\NcbService" /f > nul 2>&1

rem ncbservice is real garbage

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\NcaSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\CscService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\ssh-agent" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\defragsvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SEMgrSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\PNRPAutoReg" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\PrintWorkflowUserSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\wercplsupport" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\pcasvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\QWAVE" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\RmSvc" /f > nul 2>&1

rem RmSvc may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\LanmanServer" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\shpamsvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\ShellHWDetection" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SNMPTRAP" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SharedRealitySvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SSDPSRV" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WiaRpc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\TieringEngineService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\upnphost" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\UserDataSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\UnistoreSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\UevAgentService" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\vds" /f > nul 2>&1

rem vds may crash system i think. disabling it (only temporary)

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\VacSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WarpJITSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WebClient" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WFDSConMgrSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WEPHOSTSVC" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\FontCache" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WMPNetworkSvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\W32Time" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\spectrum" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\perceptionsimulation" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\PushToInstall" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\LanmanWorkstation" /f > nul 2>&1

rem start

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SamSs" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WinHttpAutoProxySvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\Themes" /f > nul 2>&1

rem reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\StateRepository" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\PNRPsvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\p2psvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\p2pimsvc" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\RasAuto" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\RasMan" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\SessionEnv" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\TermService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\UmRdpService" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\RpcLocator" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\RemoteAccess" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WinRM" /f > nul 2>&1

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\WSearch" /v "Start" /t REG_DWORD /d 4 /f > nul 2>&1"

rem if you delete event viewer system will not run
rem critical services (not all):

rem AppXSvc
rem EventLog
rem StateRepository
rem SharedAccess
rem AppReadiness
rem wlidsvc (microsoft account oobe)

rem logs:

rem LanmanWorkstation enabled to delete
rem cbdhsvc enabled to leave to enable clipboard buffer
rem Appinfo enabled to leave, because you cannot run apps as admin without this service
rem LanmanServer enabled to delete
rem AppXSvc enabled to leave because you cannot use taskbar normal without this service

rem all is ok

rem wlidsvc enabled to delete
rem SamSs enabled to delete ( i think it could crash )
rem dmwappushservice enabled to delete
rem WinHttpAutoProxySvc enabled to delete
rem AppMgmt enabled to delete
rem camsvc enabled to delete
rem Themes enabled to delete
rem PNRPsvc enabled to delete
rem RasAuto enabled to delete
rem RasMan enabled to delete
rem SessionEnv enabled to delete
rem TermService enabled to delete
rem UmRdpService enabled to delete

rem start

rem SamSs enabled to leave
rem wlidsvc enabled to leave
rem StateRepository enabled to leave
rem WinHttpAutoProxySvc enabled to leave ( i think it could crash )

rem no success

rem start

rem RasMan enabled to leave
rem RemoteAccess enabled to leave
rem dmwappushservice enabled to leave
rem AppMgmt enabled to leave
rem camsvc enabled to leave

rem success

rem start

rem SamSs enabled to delete
rem StateRepository enabled to leave
rem WinHttpAutoProxySvc enabled to delete
rem wlidsvc enabled to leave

rem (StateRepository ruins oobe) if disabled

rem success

rem is ok

rem start

rem camsvc enabled to delete
rem dmwappushservice enabled to delete
rem mpssvc enabled to delete (firewall)

rem camsvc enabled to leave, because it crashes oobe

rem success

rem start

rem wecsvc enabled to delete
rem WinRM enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
rem  enabled to delete
