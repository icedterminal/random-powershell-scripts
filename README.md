# What's Here
* Quality_Wallpaper.ps1	- Manual work around for high quality wallpaper.
* Reset_Icon_Thumb_Cache.ps1 - Deletes icon and thumb cache. Some files will need to be removed with Disk Cleanup
* UWP_Removal_Reference.ps1 - Safe to remove UWP apps.
* scripted_backup.ps1 - Copies important user and program data to be restored when reinstalling Windows
* Reset_Explorer.ps1 - Resets File Explorer and Taskbar

# How to use
By default, PowerShell blocks scripts that even you make. Only scripts that are signed can be ran. If you trust the script and the source, you can allow scripts from anywhere. Enter in: 

`set-executionpolicy unrestricted`

If you prefer, you can set this policy back to the way it was:

`set-executionpolicy restricted`
