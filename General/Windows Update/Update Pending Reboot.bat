@echo off
reg query "hklm\System\CurrentControlSet\Control\Session Manager" /v PendingFileRenameOperations  >nul 2>&1
IF NOT %ERRORLEVEL% == 0 goto Not_Pending_Restart
shutdown /r /f /t 0
:Not_Pending_Restart
@exit
