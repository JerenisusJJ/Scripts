taskkill /f /im browser.exe & 
taskkill /f /im iexplore.exe & 
taskkill /f /im chrome.exe & 
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8 & 
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2 & REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" /v Proxy /d "C:\Windows\proxy.bat" /t REG_SZ /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /d 0x00000001 /t REG_DWORD /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d XXX.XXX.XXX.XXX:XXXX /t REG_SZ /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /d "<local>" /t REG_SZ /f & 
Start "" "%ProgramFiles%\Internet Explorer\iexplore.exe" "www.iplocation.net" & 
taskkill /f /im iexplore.exe