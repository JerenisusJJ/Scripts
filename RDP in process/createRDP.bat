$ErrorActionPreference = "SilentlyContinue"

  function shortcut
{
    param
  ( 
    $DestinationPath,   
    $source,
    $icon
  )

  # CODE

  $WshShell = New-Object -ComObject WScript.shell
  $shortcut = $WshShell.CreateShortcut($DestinationPath)
  $shortcut.TargetPath = $Source
  $shortcut.iconlocation = $Icon
  $Shortcut.Save() 
}

$DestinationPath = read-host "Host"
$User = read-host "User"

#Example

shortcut "\$DestinationPath\c$\users$user\desktop\[your shortcut.lnk]" "[source for your shortcut]" "[icon path if needed]"    

if(Test-Path "\$DestinationPath\c$\users$user\desktop\[your shortcut.lnk]")
{Write-host "`nShortcut created: [your shortcut]`nHost:$DestinationPath`nUser:$user`n" -ForegroundColor Green}

else{write-host "Shortcut couldn't be created in $DestinationPath"}