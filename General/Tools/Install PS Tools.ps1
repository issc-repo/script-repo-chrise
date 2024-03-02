# Install Powershell Tech Tools

# Allow Me to Use My Tools
set-executionpolicy remotesigned -force

#Allow Me to Install My Tools
set-psrepository PSGallery -InstallationPolicy Trusted

#Gimme My Tools
install-module az -force
install-module pswindowsupdate -force
install-module exchangeonlinemanagement -force
Install-Module MSOnline -force
install-module Microsoft.Online.SharePoint.PowerShell -force
install-module Microsoft.graph -force

#For Good Measure - Update all Installed Modules
Update-Module -force
