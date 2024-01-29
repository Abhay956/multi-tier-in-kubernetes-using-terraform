#!/bin/bash
  
# Function to check if the OS is RHEL
is_rhel() {
    [ -f /etc/redhat-release ]
}

# Function to check if the OS is Ubuntu
is_ubuntu() {
    [ -f /etc/lsb-release ]
}

# Check the operating system
if is_rhel; then
    echo "Detected Red Hat Enterprise Linux"
    # Run RHEL commands
   sudo dnf install rpcbind nfs-utils -y
   sudo mkdir /var/lib/mysql
   sudo chmod 777 /var/lib/mysql
   sudo echo "/var/lib/mysql *(rw,sync)" > /etc/exports
   sudo systemctl restart nfs-server
   sudo exportfs -avr
elif is_ubuntu; then
    echo "Detected Ubuntu"
    # Run Ubuntu commands
   sudo apt install nfs-kernel-server -y
   sudo mkdir /var/lib/mysql
   sudo chmod 777 /var/lib/mysql
   sudo echo  "/var/lib/mysql *(rw,sync)" > /etc/exports
   sudo systemctl restart nfs-kernel-server
   sudo exportfs -avr
   sudo ssh node01 apt install nfs-common -y
else
    echo "Unsupported operating system"
fi
