Write-Host "

Wallpaper images must be JPEG (.jpg) format. If it is not, please save it as such.
In the space below, enter the name of your image. You must include the extension.
EX: my-wallpaper.jpg

" -ForegroundColor Yellow
$mine = Read-Host 'Image name'
copy-item "$env:USERPROFILE\Desktop\$mine" -destination "$env:APPDATA\Microsoft\Windows\Themes"
cd $env:APPDATA\Microsoft\Windows\Themes
remove-item TranscodedWallpaper
rename-item $mine TranscodedWallpaper
copy-item TranscodedWallpaper -destination "CachedFiles"
cd CachedFiles
$name = Get-ChildItem -name *.jpg
Remove-Item $name
rename-item TranscodedWallpaper $name
Write-Host "
Right click on your Desktop and click Refresh
"
cd $env:USERPROFILE\Desktop
