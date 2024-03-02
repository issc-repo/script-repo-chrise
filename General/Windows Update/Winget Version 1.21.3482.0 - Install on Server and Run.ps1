#User Switching Function Not Working, still need to work out why
#net user /add wingetinstall 'bN,7d9qg!h@{BL'
#net localgroup administrators /add wingetinstall

#$pw = 'bN,7d9qg!h@{BL'
#$username = 'wingetinstall'
#$password = $pw | ConvertTo-SecureString -AsPlainText -Force
#$cred = New-Object System.Management.Automation.PSCredential -ArgumentList $username,$password
#$Session = New-PSSession -Credential $cred
#Invoke-Command -Session $Session -Scriptblock {

mkdir C:\winget
cd C:\winget

# Install VCLibs
Add-AppxPackage 'https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx'

# Install Microsoft.UI.Xaml.2.7.3 from NuGet
Invoke-WebRequest -Uri https://www.nuget.org/api/v2/package/Microsoft.UI.Xaml/2.7.3 -OutFile .\microsoft.ui.xaml.2.7.3.zip
Expand-Archive .\microsoft.ui.xaml.2.7.3.zip
Add-AppxPackage .\microsoft.ui.xaml.2.7.3\tools\AppX\x64\Release\Microsoft.UI.Xaml.2.7.appx

# Install the latest release of Microsoft.DesktopInstaller from GitHub
Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/latest/download/24146eb205d040e69ef2d92d7034d97f_License1.xml -OutFile .\24146eb205d040e69ef2d92d7034d97f_License1.xml
Add-AppxProvisionedPackage -Online -PackagePath .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -LicensePath .\24146eb205d040e69ef2d92d7034d97f_License1.xml -Verbose

$folderMask = "C:\Program Files\WindowsApps\Microsoft.DesktopAppInstaller_*"
$folders = Get-ChildItem -Path $folderMask -Directory | Where-Object { $_.Name -like "*_x64_*" }
foreach ($folder in $folders) {
    $folderPath = $folder.FullName
    TAKEOWN /F $folderPath /R /A /D Y
    ICACLS $folderPath /grant Administrators:F /T
}

$ResolveWingetPath = Resolve-Path "C:\Program Files\WindowsApps\Microsoft.DesktopAppInstaller_*_x64__8wekyb3d8bbwe"
    if ($ResolveWingetPath){
           $WingetPath = $ResolveWingetPath[-1].Path
    }
$ENV:PATH += ";$WingetPath"

#}

#net user /delete wingetinstall

winget upgrade --all --accept-package-agreements --accept-source-agreements