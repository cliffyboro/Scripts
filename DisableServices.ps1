$services = @(
"AllJoynRouter",
"ALG",
"BthHFSrv",
"CDPSvc",
"DiagTrack",
"DiagHost",
"TrkWks",
"FDResPub",
"FDProvider",
"ICS",
"MSiSCSI",
"NisSrv",
"NetTcpPortSharing",
"Netlogon",
"netprofm",
"CscService",
"Spooler",
"QWAVE",
"Tssdis",
"TermService",
"RetailDemo",
"SensrSvc",
"SharedAccess",
"SCardSvr",
"SNMPTRAP",
"StorSvc",
"Telephony",
"WbioSrvc",
"WcnSvc",
"WerSvc",
"WMPNetworkSvc",
"icssvc"
"WSearch"
)

foreach($service in $services) {
    Set-Service -Name $service -StartupType Disabled
    Stop-Service -Name $service -Force
}
