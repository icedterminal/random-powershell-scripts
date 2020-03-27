# You've already noticed 10 comes preloaded with apps you won't use or don't need. Most can be removed safely.
# Others should be left alone. There are also other useful commands found at the bottom of this page.
# To uninstall pre-installed Windows 10 UWP apps, you can enter the commands below in Powershell as Admin.
# I have excluded the command to uninstall Snip and Sketch. In a future build, it will be your only option as the win32 based Snipping Tool will be removed.
# These are safe to remove:

# DO NOT RUN THIS SCRIPT AS IS! IT IS REFERENCE AS MANUAL INPUT ONLY!

# If you want to remove Zune Video and Music, use Zune. Otherwise, specify which one you want to remove.
Get-AppxPackage -AllUsers *[zune|zunemusic|zunevideo]* | remove-appxpackage
# I encourage you to leave Photos. Unless you prefer something else
Get-AppxPackage -AllUsers *photos* | remove-appxpackage
# I encourage you to leave Feedback. You can report OS bugs.
Get-AppxPackage -AllUsers *feedback* | remove-appxpackage
# If you do want to link your phone, just install Your Phone from the store again.
Get-AppxPackage -AllUsers *yourphone* | remove-appxpackage
# Removes the all but one of the 3D based apps.
Get-AppxPackage -AllUsers *3d* | remove-appxpackage
# This removes Paint 3D only. Win32 based Paint is untouched.
Get-AppxPackage -AllUsers *paint* | remove-appxpackage
# If you want to remove Sticky Notes and OneNote, use note. Otherwise, specify.
Get-AppxPackage -AllUsers *[note|OneNote|stickynotes]* | remove-appxpackage
# If you have a webcam, don't remove.
Get-AppxPackage -AllUsers *camera* | remove-appxpackage
# This removes the My Office hub app. Your Office apps are untouched.
Get-AppxPackage -AllUsers *officehub* | remove-appxpackage
# WARNING: If you sepcify just *xbox*, you remove everything except GameMode. The Identity Provider Service gets removed too!
# This means you can no longer login to UWP games like Forza. Those titles utilise Xbox Play Anywhere and need it.
# I encourage you to leave the Xbox app (GamingApp) or console companion (xboxapp).
# If you don't have one of those apps you will lose access to game invites, messages, and various notifications.
Get-AppxPackage -AllUsers *Microsoft.xboxapp* | remove-appxpackage
Get-AppxPackage -AllUsers *Microsoft.GamingApp* | remove-appxpackage
# The commands below remove the Game Bar. Disable it from the Settings first, then run these.
Get-AppxPackage -AllUsers *Microsoft.xboxgameoverlay* | remove-appxpackage
Get-AppxPackage -AllUsers *Microsoft.xboxgamingoverlay* | remove-appxpackage
Get-AppxPackage -AllUsers *Microsoft.xboxspeechtotextoverlay* | remove-appxpackage
# Here are the remaining apps you can remove. All self explanatory.
Get-AppxPackage -AllUsers *alarms* | remove-appxpackage
Get-AppxPackage -AllUsers *wallet* | remove-appxpackage
Get-AppxPackage -AllUsers *skype* | remove-appxpackage
Get-AppxPackage -AllUsers *WindowsScan* | remove-appxpackage
Get-AppxPackage -AllUsers *microsoft.windowscommunicationsapps* | remove-appxpackage
Get-AppxPackage -AllUsers *microsoft.people* | remove-appxpackage
Get-AppxPackage -AllUsers *getstarted* | remove-appxpackage
Get-AppxPackage -AllUsers *todos* | remove-appxpackage
Get-AppxPackage -AllUsers *solitaire* | remove-appxpackage
Get-AppxPackage -AllUsers *soundrecorder* | remove-appxpackage
Get-AppxPackage -AllUsers *maps* | remove-appxpackage
Get-AppxPackage -AllUsers *help* | remove-appxpackage
Get-AppxPackage -AllUsers *microsoft.mixedreality.portal* | remove-appxpackage
Get-AppxPackage -AllUsers *weather* | remove-appxpackage
Get-AppxPackage -AllUsers *messaging* | remove-appxpackage
# Change your mind? Replace *PackageName* with the app you want to reinstall. This will reinstall the default app. Update from the store.
Get-AppxPackage -allusers *PackageName* | foreach {Add-AppxPackage -register "$($_.InstallLocation)\appxmanifest.xml" -DisableDevelopmentMode -verbose}
# Or, if you want to reinstall all of the default apps
Get-AppxPackage -allusers | foreach {Add-AppxPackage -register "$($_.InstallLocation)\appxmanifest.xml" -DisableDevelopmentMode -verbose}
# If you just need to re-register all installed apps due to a bug
Get-AppxPackage | % { Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppxManifest.xml" -verbose}
# Query a list of all installed apps. This will place a text doc on your dekstop that you easily search through.
get-appxpackage > "$env:USERPROFILE\Desktop\apps.txt"