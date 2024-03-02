@REM # This Script Performs maintenance on endpoint machines.
@REM # Some Parts of this process still need to be performed manually.
@REM # version 1.1 - Corrected syntax error in enabling System Restore, this was due to incorrect ASCII characterter been used.
@REM # Version 1.2 - Moved Defrag task to the end of the queue, as this does not really need to be monitored.
@Rem # Version 1.3 - Script now disables hibernation, as this funtion causes more problems than needed.

:DiskCleanup
@cls
@rem Cleanup Cookies and Internet Temp Files
@del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
@del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\*.*"
@rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5"
@del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.MSO\*.*"
@rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.MSO"
@del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Outlook\*.*"
@rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Outlook"
@del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Word\*.*"
@rmdir /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Word"
@del /f /q "%userprofile%\Cookies\*.*"
@del /f /q "C:\WINDOWS\temp\*.*"
@rmdir /s /q C:\Windows\Temp
@del /f /q "%temp%\*.*"
@rmdir /s /q "%temp%"
@REM Disk Cleanup Wizard - opens GUI in Windows 7
cleanmgr /autoclean
@REM Clears out Update Rollback Files (Windoows 8+ and Server 2012+)
dism /online /cleanup-image /startcomponentcleanup /resetbase

:EnableSystemRestore
REM Enables System Protection
@cls
wmic /namespace:\\root\default Path SystemRestore Call enable "C:\"

:RunMSUpdates
@cls
@rem Runs Windows Updates (Pre-Windows 10)
wuauclt /detectnow /resetauthorization /updatenow
@rem Run Windows Updates (Windows 10, Server 2016)
USOClient scaninstallwait

:DisableHibernation
@powercfg -h off

@rem # Everything below this line either needs to be checked manually, needs to be reported manually, or should not be run automatically.

:EventDiskError
@REM This queries the System Log for HDD Errors. If none are found, it shows nul output.
@cls
@REM Event ID 7 Shows  Failing HDD
@REM Event ID 11 Shows a potential Driver or SATA Controller Error, this generally also happens with USB Storage when it is not safely removed.
wevtutil qe System "/q:*[System[Provider[@Name='disk'] and (Level=2 or Level=1)]]" /c:5 /rd:true /f:text
@pause

:BackupReport
@rem # Check last backup and remaining space on backup
@cls
@Echo Manual Process - Check backup software for last backup times and backup failures.
@pause

:AntiVirusChecks
@rem Check whether antivirus is running, and when it was last updated
@cls
@echo Manual Process - Check whether  antivirus is running, and when it was last updated. 
@pause

:MailBoxCleanup
@rem check if mailbox needs archiving
@cls
@echo Manual Process - Open Outlook and check if any mailboxes need to be archived for each account
@pause

:ReportBack
@cls
@Echo Note Down Any Issues and report them to the relevant parties
@echo maintenance is almost complete
@echo.
@echo Enter "Y" to cleanup Update Cache Folder
@echo Any other input will start the Defrag Task
@echo Do not do this if updates are in progress or pending reboot
@Set /p UpdatesFinished= Have All Updates Completed?
@if %UpdatesFinished% == y goto UpdateCleanup
@if %UpdatesFinished% == Y goto UpdateCleanup
@goto Defrag
@exit

:Defrag
@REM Defragments all Available Volumes
@cls
defrag -c -v -d
@exit

:UpdateCleanup
@cls
@REM Clears out Windows Update Cache 
@REM This Runs twice as the Windows Update service tends to restart while the delete is running, causing "access denied" errors
net stop wuauserv
del C:\Windows\SoftwareDistribution /Q /S
net stop wuauserv
del C:\Windows\SoftwareDistribution /Q /S
net start wuauserv
goto Defrag
@exit
