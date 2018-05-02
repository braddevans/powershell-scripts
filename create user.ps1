[CmdletBinding()]
     Param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
		[string]$user,
		[Parameter(Mandatory=$true, Position=1)]
		[string]$Password,
		[Parameter(Mandatory=$true, Position=2)]
		[string]$fullname,
		[Parameter(Mandatory=$true, Position=3)]
		[string]$dis
	)


$gui1 = '==================================='
$gui2 = '=      User creation Script       ='
$gui3 = '==================================='
$spacer = ' '

Write-Host "$gui1"
Write-Host "$gui2"
Write-Host "$gui3"
Write-Host "$spacer"
Write-Host "$spacer"

Write-Host "login           : $user"  -foreground green

Write-Host "Password        : $password"  -foreground green

Write-Host "full user name  : $fullname"  -foreground green

Write-Host "user discription: $dis"  -foreground green

net user $user $pass /add /comment:$dis /fullname:$fullname /logonpasswordchg:no