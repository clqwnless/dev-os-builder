@echo off


rem if you disable or delete these services windows will not start, so bypassing it:

rem EhStorClass
rem fvevol
rem iorate
rem rdyboost
rem volsnap

reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f > nul 2>&1
reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f > nul 2>&1
reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f > nul 2>&1


rem bypassing dependences

rem reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\NlaSvc" /v "DependOnService" /t REG_MULTI_SZ /d "NSI\0RpcSs\0TcpIp\0\Dhcp" /f > nul 2>&1


rem disabling services

for %%i in (
    Spooler
    wscsvc
    wuauserv
    iphlpsvc
    PrintWorkflowUserSvc
    WSearch
) do (
    reg add "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\%%i" /v "Start" /t REG_DWORD /d 4 /f > nul 2>&1
)


rem deleting services

for %%i in (
    AppIDSvc
    BDESVC
    DiagTrack
    PimIndexMaintenanceSvc
    DoSvc
    MapsBroker
    NgcSvc
    NgcCtnrSvc
    swprv
    PhoneSvc
    SCardSvr
    ScDeviceEnum
    SCPolicySvc
    SysMain
    TapiSrv
    WalletService
    WinDefend
    XblAuthManager
    XblGameSave
    xboxgip
    XboxGipSvc
    XboxNetApiSvc
    Sense
    SensorDataService
    SensorService
    SensrSvc
    TabletInputService
    InstallService
    CDPSvc
    CDPUserSvc
    WaaSMedicSvc
    VSS
    SDRSVC
    FrameServer
    UsoSvc
    BTAGService
    BluetoothUserService
    bthserv
    PeerDistSvc
    WdNisSvc
    wisvc
    WpnService
    WpnUserService
    icssvc
    Fax
    WbioSrvc
    wcncsvc
    OneSyncSvc
    fhsvc
    lfsvc
    RemoteRegistry
    RetailDemo
    irmon
    WerSvc
    stisvc
    BthAvctpSvc
    AxInstSV
    BcardDVRUserService
    ALG
    AssignedAccessManagerSvc
    tzautoupdate
    AJRouter
    BITS
    wbengine
    CaptureService
    CertPropSvc
    EventSystem
    COMSysApp
    ConsentUxUserSvc
    VaultSvc
    DsSvc
    DusmSvc
    dmwappushservice
    DevQueryBroker
    diagsvc
    DPS
    WdiServiceHost
    WdiSystemHost
    SENS
    SgrmBroker
    SecurityHealthService
    DisplayEnhancementService
    TrkWks
    MSDTC
    embeddedmode
    fdPHost
    BcastDVRUserService
    GraphicsPerfSvc
    hidserv
    IKEEXT
    KtmRm
    lltdsvc
    diagnosticshub.standardcollector.service
    MSiSCSI
    smphost
    NaturalAuthentication
    Netlogon
    NcdAutoSetup
    NcbService
    NcaSvc
    CscService
    ssh-agent
    defragsvc
    SEMgrSvc
    PNRPAutoReg
    wercplsupport
    pcasvc
    QWAVE
    LanmanServer
    shpamsvc
    ShellHWDetection
    SNMPTRAP
    SharedRealitySvc
    SSDPSRV
    WiaRpc
    TieringEngineService
    upnphost
    UserDataSvc
    UnistoreSvc
    UevAgentService
    VacSvc
    WarpJITSvc
    WebClient
    WFDSConMgrSvc
    WEPHOSTSVC
    FontCache
    WMPNetworkSvc
    W32Time
    spectrum
    perceptionsimulation
    PushToInstall
    LanmanWorkstation
    PNRPsvc
    p2psvc
    p2pimsvc
    RasAuto
    RasMan
    SessionEnv
    TermService
    UmRdpService
    RpcLocator
    RemoteAccess
    WinRM
    BthEnum
    BthHFEnum
    BthLEEnum
    BthMini
    BTHMODEM
    BTHPORT
    BTHUSB
    AppID
    applockerfltr
    AppVClient
    AppvStrm
    AppvVemgr
    AppxVfs
    bindflt
    bowser
    cbdhsvc
    CSC
    Dfsc
    EapHost
    EhStorTcgDrv
    EhStorClass
    fvevol
    gencounter
    HdAudAddService
    Hidlr
    hvcrash
    HvHost
    hvservice
    hyperkbd
    HyperVideo
    IPNAT
    irda
    IRENUM
    iorate
    iScsiPrt
    kdnic
    lltdio
    luafv
    Microsoft_Bluetooth_AvrcpTransport
    Modem
    MRxDAV
    mrxsmb
    mrxsmb20
    MsBridge
    MRxDAV
    mrxsmb
    mrxsmb20
    MSTEE
    NdisCap
    NdisImPlatform
    NetTcpPortSharing
    netvsc
    PerfHost
    PktMon
    pla
    pmem
    QWAVEdrv
    RasAgileVpn
    rdbss
    rdpbus
    RdpVideoMiniport
    rdyboost
    scfilter
    rspndr
    s3cap
    sbp2port
    SgrmAgent
    spaceport
    storqosflt
    Synth3dVsc
    terminpt
    TsUsbFlt
    TsUsbGD
    tsusbhub
    Vid
    volsnap
    wcnfs
    WdBoot
    WdFilter
    WdNisDrv
    WinNat
    WINUSB
    WUDFRD
    WpcMonSvc
) do (
    reg delete HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Services\%%i /f > nul 2>&1
)

rem 1 attempt:

rem EhStorClass
rem fvevol
rem iorate
rem rdyboost
rem volsnap

rem 2 attempt:

rem AppID
rem applockerfltr
rem AppVClient
rem AppvStrm
rem AppvVemgr
rem AppxVfs
rem bindflt
rem bowser
rem cbdhsvc
rem CSC

rem 3 attempt:

rem Dfsc
rem EapHost
rem EhStorTcgDrv
rem gencounter
rem HdAudAddService
rem Hidlr
rem hvcrash
rem HvHost
rem hvservice
rem hyperkbd

rem 4 attempt:

rem HyperVideo
rem IPNAT
rem irda
rem IRENUM
rem iScsiPrt
rem kdnic
rem lltdio
rem luafv
rem Microsoft_Bluetooth_AvrcpTransport
rem Modem

rem 5 attempt:

rem mpsdrv
rem MRxDAV
rem mrxsmb
rem mrxsmb20
rem MsBridge
rem MSKSSRV
rem MsLldp
rem MSPCLOCK
rem MSPQM
rem MsSecFlt

rem success

rem 6 attempt:

rem keeping to delete:

rem mpsdrv
rem MRxDAV
rem mrxsmb
rem mrxsmb20
rem MsBridge

rem 7 attempt:

rem keeping:

rem MsBridge

rem 8 attempt:

rem keeping:

rem mpsdrv

rem success

rem 1 attempt to keep wifi

rem keeping:

rem NetBios
rem lmhosts

rem 2 attempt to keep wifi

rem keeping:

rem FDResPub

rem 3 attempt to keep wifi:

rem keeping

rem NetBT

rem 4 attempt to keep wifi:

rem keeping:

rem NetTcpPortSharing
rem EapHost

rem keeping:

rem PolicyAgent
rem Ndu

rem 5 attempt to keep wifi:

rem keeeping:

rem MRxDAV
rem mrxsmb
rem mrxsmb20
rem MSTEE
rem NdisCap
rem NdisImPlatform
rem NetTcpPortSharing
rem netvsc
rem PerfHost
rem PktMon
rem pla
rem pmem
rem Psched
rem QWAVEdrv
rem RasAgileVpn
rem rdbss
rem rdpbus
rem RdpVideoMiniport
rem scfilter
rem rspndr
rem s3cap
rem sbp2port
rem SgrmAgent
rem spaceport
rem storqosflt
rem Synth3dVsc
rem terminpt
rem TsUsbFlt
rem TsUsbGD
rem tsusbhub
rem Vid
rem wcnfs
rem WdBoot
rem WdFilter
rem WdNisDrv
rem WinNat
rem WINUSB
rem WUDFRD

rem psched crashes the ethernet
