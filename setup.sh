cd

wget https://github.com/plengauer/Scripts/blob/main/update.sh > update.sh &&
echo '0 0 * * * root /usr/bin/bash '$(pwd)'/update.sh' > /etc/cron.d/update

if [ -f /sys/hypervisor/uuid ] && [ cat /sys/hypervisor/uuid == *ec2* ]; then
    bash install_amazon_cloudwatch.sh
fi
