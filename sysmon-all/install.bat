Sysmon64.exe -i %cd%\sysmonconfig.xml
powershell -Exec bypass -File .\winlogbeat\install-service-winlogbeat.ps1
SCHTASKS /Create /RU system /TN "sysmon_update" /TR %cd%\sysmon-autoconfig.bat /SC WEEKLY /D MON /ST 12:00
SCHTASKS /Create /RU system /TN "winlogbeat_update" /TR %cd%\winlogbeat-autoconfig.bat /SC WEEKLY /D MON /ST 12:30
cd..
del sysmon-all.zip