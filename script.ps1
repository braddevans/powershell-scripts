[CmdletBinding()]
     Param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
		[string]$files
	)

$gui1 = '==================================='
$gui2 = '=      removing userfiles         ='
$gui3 = '==================================='
$spacer = ' '

Write-Host "$spacer"
Write-Host "$spacer"
Write-Host "$gui1"
Write-Host "$gui2"
Write-Host "$gui3"
Write-Host "$spacer"
Write-Host "$spacer"

write-host "Deleting all Files From: $files!"
Write-Host "$spacer"

Get-ChildItem -Path $files -Recurse | Remove-Item -force -recurse