# sysmonwinlogbeat
用于在Windows上安装sysmon和winlogbeat
需要重新配置winlogbeat.yml，根据需要配置sysmonconfig
程序会建立周期任务，每周从http链接（内网部署）获取最新版本的配置文件并重新应用到服务中，不需要时删除这部分代码
