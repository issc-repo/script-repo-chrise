# Find Winget Directory
$wgdir=(Get-Childitem -Path "C:\Program Files\WindowsApps\Microsoft.DesktopAppInstaller*" -Include winget.exe -Recurse -ErrorAction SilentlyContinue | Select-Object -Last 1 | %{$_.FullName} | Split-Path)
# Move to WinGet Directory
cd $wgdir
#Run Winget Upgrade All
.\winget.exe upgrade --all --accept-package-agreements --accept-source-agreements --scope=machine
