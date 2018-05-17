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
		[string]$dis,
		[Parameter(Mandatory=$true, Position=4)]
		[ValidateSet("true","1","True","yes","false","0","False","no")] 
        [string]$admin
	)	

$gui1 = '==================================='
$gui2 = '||       User creation           ||'
$gui3 = '==================================='
$spacer = ' '
$out = .\netuseroutput.bat

##$user = 'student'
##$password = 'Student123'
##$dis = 'The default Student User Account'
##$fullname = 'Student' 
##$admin = 'false'

net user $user /delete

Write-Host "$gui1"
Write-Host "$gui2"
Write-Host "$gui3"
Write-Host "$spacer"

if($admin -contains 'true'){
$adminn = 'true'
}elseif($admin -contains '1'){
$adminn = 'true'
}elseif($admin -contains 'True'){
$adminn = 'true'
}elseif($admin -contains 'yes'){
$adminn = 'true'
}elseif($admin -contains 'false'){
$adminn = 'false'
}elseif($admin -contains '0'){
$adminn = 'false'
}elseif($admin -contains 'False'){
$adminn = 'false'
}elseif($admin -contains 'no'){
$adminn = 'false'
}

Write-Host "[=============================]"
Write-Host "|login           : $user"  -foreground green
Write-Host "|Password        : $password"  -foreground green
Write-Host "|full user name  : $fullname"  -foreground green
Write-Host "|user discription: $dis"  -foreground green
Write-Host "|user is admin   : $adminn"  -foreground green
Write-Host "[=============================]"

if($adminn -contains 'true'){

Write-Host 'Creating Admin User' -foreground DarkCyan
net user $user $pass /add /comment:$dis /fullname:$fullname /logonpasswordchg:no
net localgroup administrators $user /add

}
elseif($adminn -contains 'false'){
Write-Host 'Creating Non Admin User'-foreground DarkCyan
net user $user $pass /add /comment:$dis /fullname:$fullname /logonpasswordchg:no
}