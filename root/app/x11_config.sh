#!/bin/bash
adduser abc sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
usermod abc -s /bin/bash
chown abc:abc /config/.Xauthority
rm -f /etc/services.d/videoserver/run
sudo -i -u abc /opt/ivideon/ivideon-server/ivideon-server
