#! /bin/sh
    

# The ip -4 -o addr show eth0 command retrieves information about the IPv4 addresses associated with the eth0 network interface.
#    The awk '{print $4}' part extracts the fourth field (the IP address) from the output.
 #   The cut -d "/" -f 1 further strips the CIDR notation to provide just the IP address.

ip -4 -o addr show wlp1s0 | awk '{print $4}' | cut -d "/" -f 1  # Outputs: 192.168.1.166
