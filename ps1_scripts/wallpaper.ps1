Write-Host "

Wallpaper images must be Portable Network Graphics (.png) format. If it is not, please convert.
In the space below, enter the name of your image. DO NOT include the extension.
Yes: my-wallpaper
No: my-wallpaper.jpg

" -ForegroundColor Yellow
$mine = Read-Host 'Image name'
copy-item "$env:USERPROFILE\Desktop\$mine.png" -destination "$env:APPDATA\Microsoft\Windows\Themes"
cd $env:APPDATA\Microsoft\Windows\Themes
remove-item TranscodedWallpaper
rename-item "$mine.png" TranscodedWallpaper
copy-item TranscodedWallpaper -destination "CachedFiles"
cd CachedFiles
$name = Get-ChildItem -name *.jpg
Remove-Item $name
rename-item TranscodedWallpaper $name
Write-Host "
Right click on your Desktop and click Refresh or log out / in.
"
#New-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "JPEGImportQuality" -Value "100"  -PropertyType "DWORD"
cd $env:USERPROFILE\Desktop
