ufw default deny incoming on eth0
ufw default deny outgoing on eth0

ufw default allow incoming on docker0
ufw default allow outgoing on docker0

ufw allow in on eth0 to any port 22 proto tcp
ufw allow out on eth0 to any port 22 proto tcp
ufw limit ssh/tcp

ufw allow in on eth0 to any port 80 proto tcp
ufw allow out on eth0 to any port 80 proto tcp

ufw allow in on eth0 to any port 3000 proto tcp
ufw allow out on eth0 to any port 3000 proto tcp

ufw allow in on eth0 to any port 8333 proto tcp
ufw allow out on eth0 to any port 8333 proto tcp

ufw allow in on eth0 to any port 9200 proto tcp
ufw allow out on eth0 to any port 9200 proto tcp

ufw enable

