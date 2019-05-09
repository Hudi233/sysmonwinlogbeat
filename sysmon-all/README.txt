Windows监控部署文档

安装：
1、sysmon-all.zip解压到安装文件夹

2、双击运行install.bat，查看是否有报错，如遇到提示直接agree即可，显示如下则安装成功

Loading configuration file with schema version 4.00
Sysmon schema version: 4.10
Configuration file validated.
Sysmon64 installed.
SysmonDrv installed.
Starting SysmonDrv.
SysmonDrv started.
Starting Sysmon64..
Sysmon64 started.

Status   Name               DisplayName                           
------   ----               -----------                           
Stopped  winlogbeat         winlogbeat                            


成功: 成功创建计划任务 "sysmon_update"。
成功: 成功创建计划任务 "winlogbeat_update"。


卸载：
1、进入sysmon-all文件夹，双击运行uninstall.bat，查看是否有报错，显示如下则卸载成功


__GENUS          : 2
__CLASS          : __PARAMETERS
__SUPERCLASS     : 
__DYNASTY        : __PARAMETERS
__RELPATH        : 
__PROPERTY_COUNT : 1
__DERIVATION     : {}
__SERVER         : 
__NAMESPACE      : 
__PATH           : 
ReturnValue      : 0

__GENUS          : 2
__CLASS          : __PARAMETERS
__SUPERCLASS     : 
__DYNASTY        : __PARAMETERS
__RELPATH        : 
__PROPERTY_COUNT : 1
__DERIVATION     : {}
__SERVER         : 
__NAMESPACE      : 
__PATH           : 
ReturnValue      : 0




.\sysmon-all>SCHTASKS /Delete /TN "sysmon_update" /F 
成功: 计划的任务 "sysmon_update" 被成功删除。

.\sysmon-all>SCHTASKS /Delete /TN "winlogbeat_update" /F 
成功: 计划的任务 "winlogbeat_update" 被成功删除。

.\sysmon-all>Sysmon64.exe -u 
Stopping Sysmon64.
Sysmon64 stopped.
Sysmon64 removed.
Stopping SysmonDrv......
SysmonDrv stopped.
SysmonDrv removed.
Removing service files.
