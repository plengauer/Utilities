#!/bin/bash
set -e

apt-get update --allow-insecure-repositories
apt-get -y dist-upgrade --allow-unauthenticated
apt-get -y autoremove
apt-get -y autoclean
dpkg --configure -a

do-release-upgrade -f DistUpgradeViewNonInteractive

if [ -f /var/run/reboot-required ]
then
    shutdown -r +15
fi

exit 0
