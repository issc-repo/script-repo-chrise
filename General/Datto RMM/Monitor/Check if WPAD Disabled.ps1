$WPADSetting = Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp' -Name DisableWpad

if ($WPADSetting.DisableWpad -eq 1) {

  Write-Host '<-Start Result->'
  Write-Host "STATUS=WPAD is Disabled with value $WPADSetting.DisableWpad"
  Write-Host '<-End Result->'

  Exit 0

} else {

  Write-Host '<-Start Result->'
  Write-Host "ALERT=WPAD is Enabled"
  Write-Host '<-End Result->'

  Exit 1
  
}
