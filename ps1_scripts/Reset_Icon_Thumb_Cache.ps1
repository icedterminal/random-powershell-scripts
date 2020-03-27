# Deletes icon and thumb cache. Some files will need to be removed with Disk Cleanup.
# For that you must select Thumbnails and then click OK
# Once clean up completes type in logoff

taskkill /f /im explorer.exe
cd "$env:USERPROFILE\AppData\Local\Microsoft\Windows\Explorer"
Remove-Item *
cleanmgr