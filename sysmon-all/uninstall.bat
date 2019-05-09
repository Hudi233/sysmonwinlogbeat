powershell -Exec bypass -File .\winlogbeat\uninstall-service-winlogbeat.ps1
SCHTASKS /Delete /TN "sysmon_update" /F
SCHTASKS /Delete /TN "winlogbeat_update" /F
Sysmon64.exe -u