@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
sc config LicenseManager start= auto & net start LicenseManager
sc config wuauserv start= auto & net start wuauserv
changepk.exe /productkey VK7JG-NPHTM-C97JM-9MPGT-3V66T
exit
exit