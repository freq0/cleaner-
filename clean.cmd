@echo off
:Cleaning

:chck58
if exist %programdata%\ET\chck58.lbool del %programdata%\ET\chck58.lbool
::  TEMP/Logs/Cache/Prefetch/Updates Cleaning
title %version% [%counter%/%alltodo%] && set /a counter+=1 >nul 2>nul
powershell -Command "Write-Host ' [Clean] Temp ' -F red -B black"
powershell -Command "Get-ChildItem -Path $env:TEMP -Include *.* -Exclude *.bat, *.lbool -File -Recurse | foreach { $_.Delete()}" >nul 2>nul
Del /S /F /Q %Windir%\Temp >nul 2>nul

powershell -Command "Write-Host ' [Clean] Windows Prefetch/Cache/Logs ' -F blue -B black"
Del /S /F /Q %windir%\Prefetch >nul 2>nul

del %AppData%\vstelemetry >nul 2>nul
del %LocalAppData%\Microsoft\VSApplicationInsights /F /Q /S >nul 2>nul
del %ProgramData%\Microsoft\VSApplicationInsights  /F /Q /S >nul 2>nul
del %Temp%\Microsoft\VSApplicationInsights  /F /Q /S >nul 2>nul
del %Temp%\VSFaultInfo  /F /Q /S >nul 2>nul
del %Temp%\VSFeedbackPerfWatsonData  /F /Q /S >nul 2>nul
del %Temp%\VSFeedbackVSRTCLogs  /F /Q /S >nul 2>nul
del %Temp%\VSRemoteControl  /F /Q /S >nul 2>nul
del %Temp%\VSTelem /F /Q /S >nul 2>nul
del %Temp%\VSTelem.Out /F /Q /S >nul 2>nul

del %localappdata%\Yarn\Cache /F /Q /S >nul 2>nul

del %appdata%\Microsoft\Teams\Cache /F /Q /S >nul 2>nul

del %programdata%\GOG.com\Galaxy\webcache /F /Q /S >nul 2>nul
del %programdata%\GOG.com\Galaxy\logs /F /Q /S >nul 2>nul

del %localappdata%\Microsoft\Windows\WebCache /F /Q /S >nul 2>nul

del "%SystemDrive%\*.log" /F /Q >nul 2>nul
del "%WinDir%\Directx.log" /F /Q >nul 2>nul
del "%WinDir%\SchedLgU.txt" /F /Q >nul 2>nul
del "%WinDir%\*.log" /F /Q >nul 2>nul
del "%WinDir%\security\logs\*.old" /F /Q >nul 2>nul
del "%WinDir%\security\logs\*.log" /F /Q >nul 2>nul
del "%WinDir%\Debug\*.log" /F /Q >nul 2>nul
del "%WinDir%\Debug\UserMode\*.bak" /F /Q >nul 2>nul
del "%WinDir%\Debug\UserMode\*.log" /F /Q >nul 2>nul
del "%WinDir%\*.bak" /F /Q >nul 2>nul
del "%WinDir%\system32\wbem\Logs\*.log" /F /Q >nul 2>nul
del "%WinDir%\OEWABLog.txt" /F /Q >nul 2>nul
del "%WinDir%\setuplog.txt" /F /Q >nul 2>nul
del "%WinDir%\Logs\DISM\*.log" /F /Q >nul 2>nul
del "%WinDir%\*.log.txt" /F /Q >nul 2>nul
del "%WinDir%\APPLOG\*.*" /F /Q >nul 2>nul
del "%WinDir%\system32\wbem\Logs\*.log" /F /Q >nul 2>nul
del "%WinDir%\system32\wbem\Logs\*.lo_" /F /Q >nul 2>nul
del "%WinDir%\Logs\DPX\*.log" /F /Q >nul 2>nul
del "%WinDir%\ServiceProfiles\NetworkService\AppData\Local\Temp\*.log" /F /Q >nul 2>nul
del "%WinDir%\Logs\*.log" /F /Q >nul 2>nul
del "%LocalAppData%\Microsoft\Windows\WindowsUpdate.log" /F /Q >nul 2>nul
del "%LocalAppData%\Microsoft\Windows\WebCache\*.log" /F /Q >nul 2>nul
del "%WinDir%\Panther\cbs.log" /F /Q >nul 2>nul
del "%WinDir%\Panther\DDACLSys.log" /F /Q >nul 2>nul
del "%WinDir%\repair\setup.log" /F /Q >nul 2>nul
del "%WinDir%\Panther\UnattendGC\diagerr.xml" /F /Q >nul 2>nul
del "%WinDir%\Panther\UnattendGC\diagwrn.xml" /F /Q >nul 2>nul
del "%WinDir%\inf\setupapi.offline.log" /F /Q >nul 2>nul
del "%WinDir%\inf\setupapi.app.log" /F /Q >nul 2>nul
del "%WinDir%\debug\WIA\*.log" /F /Q >nul 2>nul
del "%SystemDrive%\PerfLogs\System\Diagnostics\*.*" /F /Q >nul 2>nul
del "%WinDir%\Logs\CBS\*.cab" /F /Q >nul 2>nul
del "%WinDir%\Logs\CBS\*.cab" /F /Q >nul 2>nul
del "%WinDir%\Logs\WindowsBackup\*.etl" /F /Q >nul 2>nul
del "%WinDir%\System32\LogFiles\HTTPERR\*.*" /F /Q >nul 2>nul
del "%WinDir%\SysNative\SleepStudy\*.etl" /F /Q >nul 2>nul
del "%WinDir%\SysNative\SleepStudy\ScreenOn\*.etl" /F /Q >nul 2>nul
del "%WinDir%\System32\SleepStudy\*.etl" /F /Q >nul 2>nul
del "%WinDir%\System32\SleepStudy\ScreenOn\*.etl" /F /Q >nul 2>nul
del "%WinDir%\Logs" /F /Q >nul 2>nul
del "%WinDir%\DISM" /F /Q >nul 2>nul
del "%WinDir%\System32\catroot2\*.chk" /F /Q >nul 2>nul
del "%WinDir%\System32\catroot2\*.log" /F /Q >nul 2>nul
del "%WinDir%\System32\catroot2\.jrs" /F /Q >nul 2>nul
del "%WinDir%\System32\catroot2\*.txt" /F /Q >nul 2>nul

:: Cleaning Disk - cleanmgr
start cleanmgr.exe /autoclean

:: Cleaning Disk - CCleaner
if not exist "%programfiles%\CCleaner\CCleaner.exe" goto NoCC
if not exist "%programfiles%\CCleaner\CCleaner64.exe" goto NoCC
start CCleaner.exe /AUTO

:NoCC

powershell -Command "Write-Host ' [Clean] Games Platforms Cache/Logs ' -F green -B black"

del %localappdata%\EpicGamesLauncher\Saved\Logs /F /Q /S >nul 2>nul
del %localappdata%\CrashReportClient\Saved\Logs /F /Q /S >nul 2>nul

del "%localappdata%\Steam\htmlcache\Code Cache" /F /Q /S >nul 2>nul
del %localappdata%\Steam\htmlcache\GPUCache /F /Q /S >nul 2>nul
del %localappdata%\Steam\htmlcache\Cache /F /Q /S >nul 2>nul

del %AppData%\Origin\Telemetry /F /Q /S >nul 2>nul
del %AppData%\Origin\Logs /F /Q /S >nul 2>nul
del %AppData%\Origin\NucleusCache /F /Q /S >nul 2>nul
del %AppData%\Origin\ConsolidatedCache /F /Q /S >nul 2>nul
del %AppData%\Origin\CatalogCache /F /Q /S >nul 2>nul
del %localAppData%\Origin\ThinSetup /F /Q /S >nul 2>nul
del %AppData%\Origin\Telemetry /F /Q /S >nul 2>nul
del %localAppData%\Origin\Logs /F /Q /S >nul 2>nul

del %localAppData%\Battle.net\Cache /F /Q /S >nul 2>nul
del %AppData%\Battle.net\Logs /F /Q /S >nul 2>nul
del %AppData%\Battle.net\Errors /F /Q /S >nul 2>nul

powershell -Command "Write-Host ' [Clean] Web Browsers Cache/Logs ' -F blue -B black"

del "%LocalAppData%\Google\Chrome\User Data\Default\Cache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Google\Chrome\User Data\Default\Media Cache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Google\Chrome\User Data\Default\GPUCache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Google\Chrome\User Data\Default\Storage\ext" /F /Q /S >nul 2>nul
del "%LocalAppData%\Google\Chrome\User Data\Default\Service Worker" /F /Q /S >nul 2>nul
del "%LocalAppData%\Google\Chrome\User Data\ShaderCache" /F /Q /S >nul 2>nul


del "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge\User Data\Default\Media Cache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge\User Data\Default\GPUCache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge\User Data\Default\Storage\ext" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge\User Data\Default\Service Worker" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge\User Data\ShaderCache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge SxS\User Data\Default\Cache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge SxS\User Data\Default\Media Cache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge SxS\User Data\Default\GPUCache" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge SxS\User Data\Default\Storage\ext" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge SxS\User Data\Default\Service Worker" /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Edge SxS\User Data\ShaderCache" /F /Q /S >nul 2>nul

del "%LocalAppData%\Opera Software\Opera Stable\cache" /F /Q /S >nul 2>nul
del "%AppData%\Opera Software\Opera Stable\GPUCache" /F /Q /S >nul 2>nul
del "%AppData%\Opera Software\Opera Stable\ShaderCache" /F /Q /S >nul 2>nul
del "%AppData%\Opera Software\Opera Stable\Jump List Icons" /F /Q /S >nul 2>nul
del "%AppData%\Opera Software\Opera Stable\Jump List IconsOld\Jump List Icons" /F /Q /S >nul 2>nul

del "%LocalAppData%\Vivaldi\User Data\Default\Cache" /F /Q /S >nul 2>nul

powershell -Command "Write-Host ' [Clean] Windows Defender Cache/Logs ' -F red -B black"

del "%ProgramData%\Microsoft\Windows Defender\Network Inspection System\Support\*.log" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\CacheManager" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\ReportLatency\Latency" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\Service\*.log" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\MetaStore" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Support" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\Results\Quick" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\Results\Resource" /F /Q /S >nul 2>nul

powershell -Command "Write-Host ' [Clean] Windows Font Cache ' -F blue -B black"

net stop FontCache >nul 2>nul
net stop FontCache3.0.0.0 >nul 2>nul
del "%WinDir%\ServiceProfiles\LocalService\AppData\Local\FontCache\*.dat" /F /Q /S >nul 2>nul
del "%WinDir%\SysNative\FNTCACHE.DAT" /F /Q /S >nul 2>nul
del "%WinDir%\System32\FNTCACHE.DAT" /F /Q /S >nul 2>nul
net start FontCache >nul 2>nul
net start FontCache3.0.0.0 >nul 2>nul

powershell -Command "Write-Host ' [Clean] Windows Icon Cache ' -F red -B black"

%WinDir%\SysNative\ie4uinit.exe -show >nul 2>nul
%WinDir%\System32\ie4uinit.exe -show >nul 2>nul
del %LocalAppData%\IconCache.db /F /Q /S >nul 2>nul
del "%LocalAppData%\Microsoft\Windows\Explorer\iconcache_*.db" /F /Q /S >nul 2>nul
:AdwCleaner

:chck63
if exist %programdata%\ET\chck63.lbool del %programdata%\ET\chck63.lbool
title %version% [%counter%/%alltodo%] && set /a counter+=1 >nul 2>nul
powershell -Command "Write-Host ' [Scanning] AdwCleaner ' -F darkgreen -B black"
Powershell -Command "wget https://downloads.malwarebytes.com/file/adwcleaner -o %programdata%\adwcleaner.exe" >nul 2>nul
if exist %programdata%\adwcleaner.exe start /WAIT %programdata%\adwcleaner.exe /eula /clean /noreboot >nul 2>nul

del %programdata%\adwcleaner.exe >nul 2>nul

goto Start

:Done
del %programdata%\ET\*.lbool >nul 2>nul

echo ------------------------------------------------------------------------

set announcement=Everything has been done. Reboot is recommended.
echo  %announcement%
powershell (New-Object -ComObject Wscript.Shell).Popup("""%announcement%""",0,"""%version%""",0x40 + 4096) >nul 2>nul

exit