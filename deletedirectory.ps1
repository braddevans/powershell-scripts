[CmdletBinding()]
     Param (
        [parameter(mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string]$files
    )


$gui1 = '==================================='
$gui2 = '=      removing userfiles         ='
$gui3 = '==================================='
$spacer = ' '
$ehelp = 'you can set peramiters in the commandline for setting a different folder to delete e.g. -files C:\Users\test\test'
$eeheelp = ''

Write-Host "$spacer"
Write-Host "$spacer"
Write-Host "$gui1"
Write-Host "$gui2"
Write-Host "$gui3"
Write-Host "$spacer"
Write-Host "$spacer"

Write-Host "$ehelp"
Write-Host "$eeheelp"

write-host "Deleting Files From: $files !"
Write-Host "$spacer"

Get-ChildItem -Path $files -Recurse | Remove-Item -force -recurse
