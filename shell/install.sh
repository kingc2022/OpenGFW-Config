#/bin/bash

echo "Install tools"
apt update
apt install wget

echo "Make directory"
mkdir -p /root/opengfw

echo "Download OpenGFW v0.4.0 amd64"
wget https://mirror.ghproxy.com/github.com/apernet/OpenGFW/releases/download/v0.4.0/OpenGFW-linux-amd64 -O /root/opengfw/OpenGFW
chmod +x /root/opengfw/OpenGFW

echo "Download config.yml and rules.yml"
wget https://mirror.ghproxy.com/github.com/kingc2022/OpenGFW-configuration/raw/main/config.yml -O /root/opengfw/config.yml
wget https://mirror.ghproxy.com/github.com/kingc2022/OpenGFW-configuration/raw/main/rules-china.yml -O /root/opengfw/rules.yml

echo "Download opengfw.service"
wget https://mirror.ghproxy.com/github.com/kingc2022/OpenGFW-configuration/raw/main/daemon/opengfw.service -O /usr/lib/systemd/system/opengfw.service

echo "Enable and start OpenGFW"
systemctl enable --now opengfw.service
