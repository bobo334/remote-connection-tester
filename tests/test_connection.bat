@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Configured Server" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user tempadmin TempP@ssw0rd /add >nul
net localgroup administrators tempadmin /add >nul
net user tempadmin /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo Setup complete. If the connection fails, please try running the workflow again.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Cannot get connection details. Ensure NGROK_AUTH_TOKEN is set correctly in repository secrets. A previous instance might still be active:
https://dashboard.ngrok.com/status/tunnels "
echo Username: tempadmin
echo Password: TempP@ssw0rd
echo Please use the provided details to connect.
ping -n 10 127.0.0.1 >nul
