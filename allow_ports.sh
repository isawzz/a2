#!/bin/bash

# List of TCP ports to allow
PORTS=(7822 22 3000 3001 3002 4000 4001 4002 5000 5001 5002 6000 6001 6002 8000 80 8080)

# Enable UFW if not already enabled
sudo ufw enable

# Allow specified ports
for port in "${PORTS[@]}"
do
    sudo ufw allow $port/tcp
done

# Reload UFW to apply changes
sudo ufw reload

# Display UFW status
sudo ufw status
