@echo off
:: BatchGotAdmin (Run as Admin code starts)
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:: BatchGotAdmin (Run as Admin code ends)
:: Your codes should start from the following line
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Firefox.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\7-Zip.lnk" > out.txt 2>&1
net config server /srvcomment:"DoGiTot.Com" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator Red123456 >nul
net user administrator /active:yes >nul
echo Vị trí VPS hiện tại của bạn: %LO%
echo Để thay đổi vùng VPS khác, hãy Tạo mới VPS của bạn
echo Khu vực có sẵn: West Europe, Central US, East Asia, Brazil South, Canada Central, Autralia East, UK South, South India
echo Hoàn tất! Kết nối VPS của bạn bằng RDP. Khi RDP hết hạn VPS sẽ tắt, hãy chạy lại VPS để nhận RDP mới.
net user installer /delete
curl -o "D:\a\wallpaper.bat" https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/wallpaper.bat > out.txt 2>&1
curl -o "D:\a\wallpaper.jpg" https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/wallpaper.jpg > out.txt 2>&1
curl -O "C:\Users\Public\Desktop\DisablePasswordComplexity.ps1" https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/DisablePasswordComplexity.ps1 > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Thong-tin.txt" https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/Thong-tin.txt > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\a.ps1" https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/a.ps1 > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Unikey.exe" https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/UniKeyNT.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\CPUZ.exe" https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/cpuz_x64.exe > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "C:\Users\Public\Desktop\a.ps1" > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "C:\Users\Public\Desktop\DisablePasswordComplexity.ps1" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo VPS đã đc tạo! Kết nối VPS của bạn bằng Remote Desktop (RDP).
echo IP VPS:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Không thể tải NGROK tunnel, vui lòng dán NGROK_AUTH_TOKEN vào. Kiểm tra tunnel tại đây: https://dashboard.ngrok.com/status/tunnels " && exit
echo User: administrator
echo Pass: Red123456
echo https://dogitot.com
echo By HuyGK
ping -n 99999999999999999999 127.0.0.1 >nul
