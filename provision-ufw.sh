# reset everything
ufw reset

# lock everything down on eth0
ufw default deny incoming on eth0
ufw default deny outgoing on eth0

# lock everything down on eth1
# ufw default deny incoming on eth1
# ufw default deny outgoing on eth1

# docker0 is internal and should be unrestricted
ufw default allow incoming on docker0
ufw default allow outgoing on docker0

# Allow SSH in/out on eth0, limit people from brutce forcing
ufw allow in on eth0 to any port 22 proto tcp
ufw allow out on eth0 to any port 22 proto tcp
ufw limit ssh/tcp

# Expose nginx
ufw allow in on eth0 to any port 80 proto tcp
ufw allow out on eth0 to any port 80 proto tcp

# Expose insight
# ufw allow in on eth0 to any port 3000 proto tcp
# ufw allow out on eth0 to any port 3000 proto tcp

# Expose bitcoind communication port
ufw allow in on eth0 to any port 8333 proto tcp
ufw allow out on eth0 to any port 8333 proto tcp

# Expose elasticsearch (needed by Kibana)
# ufw allow in on eth0 to any port 9200 proto tcp
# ufw allow out on eth0 to any port 9200 proto tcp

# Enable all ufw rules
ufw enable

