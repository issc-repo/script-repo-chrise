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

:UpdateCleanup
@cls
@REM Clears out Windows Update Cache 
@REM This Runs twice as the Windows Update service tends to restart while the delete is running, causing "access denied" errors
net stop wuauserv
del C:\Windows\SoftwareDistribution /Q /S
net stop wuauserv
del C:\Windows\SoftwareDistribution /Q /S
net start wuauserv

:Defrag
@REM Defragments all Available Volumes
@cls
defrag -c -v -d
@exit
