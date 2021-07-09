#Set the vCenter Server
$VIserver = Read-Host "Please Enter the vCenter Server you would like to connect to."
$snapshothistory = Get-VM | Get-Snapshot |Format-List -Property VM, Name, PowerState, SizeGB
Connect-VIServer $VIserver 
$snapshothistory
