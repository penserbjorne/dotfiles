#!/bin/bash

# Penserbjorne
# Taked from : https://stackoverflow.com/questions/31667160/running-docker-container-iptables-no-chain-target-match-by-that-name

echo "Resetting iptables ..."

# reset :
echo "Reset"
iptables -t filter -F
iptables -t filter -X

# Block all :
echo "Block all"
iptables -t filter -P INPUT DROP
iptables -t filter -P FORWARD DROP
iptables -t filter -P OUTPUT DROP

# Authorize already established connections :
echo "Authorize already established connections"
iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -m state --state RELATED,ESTABLISHED -j ACCEPT

# Authorize backloop :
echo"Authorize backloop"
iptables -t filter -A INPUT -i lo -j ACCEPT
iptables -t filter -A OUTPUT -o lo -j ACCEPT

# Authorize ssh :
echo "Authorize ssh"
iptables -t filter -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 22 -j ACCEPT

# Authorize HTTP :
echo "Authorize HTTP"
iptables -t filter -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 80 -j ACCEPT

# Authorize HTTPS :
echo "Authorize HTTPS"
iptables -t filter -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 443 -j ACCEPT

# Authorize DNS :
echo "Authorize DNS"
iptables -t filter -A INPUT -p tcp --dport 53 -j ACCEPT
iptables -t filter -A OUTPUT -p udp --dport 53 -j ACCEPT
iptables -t filter -A INPUT -p udp --dport 53 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 53 -j ACCEPT

# Ping :
echo "Ping"
iptables -t filter -A INPUT -p icmp -j ACCEPT
iptables -t filter -A OUTPUT -p icmp -j ACCEPT

# Authorize FTP :
echo "Authorize FTP"
iptables -t filter -A INPUT -p tcp --dport 20 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 20 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 21 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 21 -j ACCEPT

# # Authorize NTP :
# echo "Authorize NTP"
# iptables -t filter -A INPUT -p udp --dport 123 -j ACCEPT
# iptables -t filter -A OUTPUT -p udp --dport 123 -j ACCEPT

# Authorize IRC :
echo "Authorize IRC"
iptables -t filter -A INPUT -p tcp --dport 6667 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 6667 -j ACCEPT

# Authorize port 10000 (for Node.JS server) :
echo "Authorize port 10000 (for Node.JS server)"
iptables -t filter -A INPUT -p tcp --dport 10000 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 10000 -j ACCEPT

# Authorize port 631 (Cups server) :
echo "Authorize port 631 (Cups server)"
iptables -t filter -A INPUT -p tcp --dport 631 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 631 -j ACCEPT

# Authorize port 9418 (git) :
echo "Authorize port 9418 (git)"
iptables -t filter -A INPUT -p tcp --dport 9418 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 9418 -j ACCEPT

echo "Done! Remember retart services ..."
