$RegKey = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies"
If(Test-Path ($RegKey + "\Explorer"))
{
 $RegKey = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"
 ##Enabled
 New-ItemProperty -path $RegKey -name UseDefaultTile -value 1 -PropertyType DWord -Force
 ##Disabled
 ##New-ItemProperty -path $RegKey -name UseDefaultTile -value 0 -PropertyType DWord -Force
}
else
{
 New-Item -path $RegKey -name Explorer
 $RegKey = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"
 ##Enabled
 New-ItemProperty -path $RegKey -name UseDefaultTile -value 1 -PropertyType DWord
 ##Disabled
 ##New-ItemProperty -path $RegKey -name UseDefaultTile -value 0 -PropertyType DWord
}

Not Configured

$RegKey = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies"
Remove-ItemProperty -Path($RegKey + "\Explorer") -name UseDefaultTile
If( (Get-Item -Path($RegKey + "\Explorer")).ValueCount -eq 0 -and (Get-Item -Path($RegKey + "\Explorer")).SubKeyCount -eq 0)
{
  Remove-Item -Path($RegKey + "\Explorer")
}