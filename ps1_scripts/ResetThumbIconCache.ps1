taskkill /f /im explorer.exe
cd "$env:USERPROFILE\AppData\Local\Microsoft\Windows\Explorer"
Remove-Item *
logoff