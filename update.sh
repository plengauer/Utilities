sudo apt-get update &&
sudo apt-get -y dist-upgrade &&
sudo apt-get -y autoremove &&
sudo apt-get -y autoclean ||
sudo dpkg --configure -a

sudo do-release-upgrade -f DistUpgradeViewNonInteractive

if [ -f /var/run/reboot-required ]
then
    sudo shutdown -r +15
fi
