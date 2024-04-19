$ComputerSystem = Get-WmiObject -ClassName Win32_ComputerSystem

if ($ComputerSystem.AutomaticManagedPageFile -match "true") {

  echo '<-Start Result->'
  echo "CSMon_Result=Pagefile setting correct "$ComputerSystem.AutomaticManagedPageFile""
  echo '<-End Result->'

  exit 0

} else {
  
  echo '<-Start Result->'
  echo "CSMon_Result=Pagefile setting incorrect "$ComputerSystem.AutomaticManagedPageFile""
  echo '<-End Result->'

  exit 1
}
