# Ubuntu (18.04+)

## 安装Docker
```bash
$ sudo curl -sS https://get.docker.com/ | sh
```
手动安装 https://docs.docker.com/install/linux/docker-ce/ubuntu/

## 安装Go
```bash
$ sudo curl -s https://raw.githubusercontent.com/rpccloud/deploy/main/linux/ubuntu/install/go.sh | bash
```

## 支持 rc.local

```bash
$ sudo su
# vim /etc/systemd/system/rc-local.service
[Unit]
 Description=/etc/rc.local Compatibility
 ConditionPathExists=/etc/rc.local

[Service]
 Type=forking
 ExecStart=/etc/rc.local start
 TimeoutSec=0
 StandardOutput=tty
 RemainAfterExit=yes
 SysVStartPriority=99

[Install]
 WantedBy=multi-user.target
 
# vim /etc/rc.local
#!/bin/bash
echo "ok" > /root/rc.local.ok
```

