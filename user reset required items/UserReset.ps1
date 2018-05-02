$gui1 = '==================================='
$gui2 = '||       User creation           ||'
$gui4 = '||       User deleting           ||'
$gui3 = '==================================='
$spacer = ' '
$out = .\netuseroutput.bat
$user = 'student'
$password = 'Student123'
$dis = 'The default Student User Account'
$fullname = 'Student' 

Write-Host "$gui1"
Write-Host "$gui4"
Write-Host "$gui3"
Write-Host "$spacer"

net user $user /delete

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