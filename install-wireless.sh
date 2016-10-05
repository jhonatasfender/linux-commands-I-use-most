
lspci

# Add a "non-free" component to /etc/apt/sources.list, for example:

# Debian 8 "Jessie"
deb http://httpredir.debian.org/debian/ jessie main contrib non-free

# Update the list of available packages and install the firmware-ralink package:

apt-get update 

apt-get install firmware-ralink

# 0c:00.0 Network controller: Broadcom Corporation BCM4312 802.11b/g LP-PHY (rev 01)
apt-get install firmware-b43-installer

apt-get update 
