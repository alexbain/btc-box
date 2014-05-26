# Setup 1GB swap file - I found that bitcoind would crash without it
touch /var/swap.img
chmod 600 /var/swap.img
dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
mkswap /var/swap.img
swapon /var/swap.img
echo "/var/swap.img    none    swap    sw    0    0" >> /etc/fstab
sysctl -w vm.swappiness=30

