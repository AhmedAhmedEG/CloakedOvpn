#!/bin/sh
while ! wget -q -c -O /opt/Dockovpn_data/client.ovpn dockovpn:8080; do echo "Waiting for OpenVPN server initialization (May take a long time)..."; sleep 5; done