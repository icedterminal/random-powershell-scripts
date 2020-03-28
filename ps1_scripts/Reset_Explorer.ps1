# This resets all aspects of File Explorer, Taskbar and Start Menu.

taskkill /f /im explorer.exe
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -recurse -force
Remove-Item -Path "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" -recurse -force
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" -recurse -force
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams" -recurse -force
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" -recurse -force
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\Shell\BagMRU" -recurse -force
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\Shell\Bags" -recurse -force
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\ShellNoRoam\Bags" -recurse -force
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\ShellNoRoam\BagMRU" -recurse -force
Remove-Item -Path "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" -recurse -force
Remove-Item -Path "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" -recurse -force
Remove-Item -Path "HKCU:\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags" -recurse -force
Remove-Item -Path "HKCU:\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" -recurse -force
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store" -recurse -force
logoff
