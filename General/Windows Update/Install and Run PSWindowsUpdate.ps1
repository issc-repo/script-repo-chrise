# Install Powershell Module for Windows Updates

# Allow Installation from Repository
set-psrepository PSGallery -InstallationPolicy Trusted

# Allow Signed CMDlets to Actually Run
set-executionpolicy remotesigned -force

# Install Powershell Module for Windows Updates
install-module pswindowsupdate -force

# Run Windows Updates from Powershell
Install-WindowsUpdate -AcceptAll
