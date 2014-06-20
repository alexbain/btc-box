# reset everything
ufw reset --force

# lock everything down 
ufw default deny incoming
ufw default allow outgoing

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
ufw allow in on eth1 to any port 8333 proto tcp
ufw allow out on eth0 to any port 8333 proto tcp
ufw allow out on eth1 to any port 8333 proto tcp

# Expose bitcoind json-rpc port via eth1
ufw allow in on eth1 to any port 8332 proto tcp
ufw allow out on eth1 to any port 8332 proto tcp

# Enable all ufw rules
ufw enable

