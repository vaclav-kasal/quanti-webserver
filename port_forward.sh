#!/bin/bash


echo "1" | sudo tee /proc/sys/net/ipv4/ip_forward

#sudo iptables -t nat -A OUTPUT -p tcp --dport 80  -j REDIRECT --to-port 18080

DPORT=80
TO=18080
sudo iptables -t nat -A PREROUTING -s 127.0.0.1 -p tcp --dport $DPORT -j REDIRECT --to $TO
sudo iptables -t nat -A OUTPUT -s 127.0.0.1 -p tcp --dport $DPORT -j REDIRECT --to $TO

DPORT=443
TO=18443
sudo iptables -t nat -A PREROUTING -s 127.0.0.1 -p tcp --dport $DPORT -j REDIRECT --to $TO
sudo iptables -t nat -A OUTPUT -s 127.0.0.1 -p tcp --dport $DPORT -j REDIRECT --to $TO

