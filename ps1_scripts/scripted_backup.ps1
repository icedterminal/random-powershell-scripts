$outputfile = "$env:systemdrive\PS_Output.log"
Start-Transcript -path $outputfile -append

Write-Host "
Paths do not need to exist at this time, they will be created for you.
Simply enter a root path where you want everything to end up
A root path example is C:. If you want to use a hard drive mounted under F:, enter F:"

$out = Read-Host 'Enter a root path'

Write-Host "Backup files will reside at: $out\POWERSHELL_BACKUP"
New-Item -Path "$out" -Name "POWERSHELL_BACKUP" -ItemType "directory"
New-Item -Path "$out\POWERSHELL_BACKUP" -Name "PUBLIC" -ItemType "directory"
New-Item -Path "$out\POWERSHELL_BACKUP" -Name "USER" -ItemType "directory"
New-Item -Path "$out\POWERSHELL_BACKUP" -Name "PROGDATA" -ItemType "directory"

takeown /f $env:ProgramData /a /r /d Y
icacls $env:ProgramData /inheritance:r /t /q
icacls $env:ProgramData /t /grant Administrators:F Users:F SYSTEM:F Everyone:F /q
takeown /f $env:PUBLIC /a /r /d Y
icacls $env:PUBLIC /inheritance:r /t /q
icacls $env:PUBLIC /t /grant Administrators:F Users:F SYSTEM:F Everyone:F /q

Copy-Item "$env:USERPROFILE\*" -Destination "$out\POWERSHELL_BACKUP\USER" -Recurse
Copy-Item "$env:ProgramData\*" -Destination "$out\POWERSHELL_BACKUP\PROGDATA" -Recurse
Copy-Item "$env:PUBLIC\*" -Destination "$out\POWERSHELL_BACKUP\PUBLIC" -Recurse 

Stop-Transcript