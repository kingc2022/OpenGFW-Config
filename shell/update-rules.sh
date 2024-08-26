echo "Download rules.yml"
wget https://mirror.ghproxy.com/github.com/kingc2022/OpenGFW-configuration/raw/main/rules-china.yml -O /root/opengfw/rules.yml

echo "Restart OpenGFW"
systemctl restart opengfw.service
