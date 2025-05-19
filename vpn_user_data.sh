#!/bin/bash
yum update -y
yum install -y openvpn easy-rsa
cd /etc/openvpn
make-cadir easy-rsa
chown ec2-user:ec2-user -R easy-rsa
echo "OpenVPN base installed. Use EasyRSA to finish configuration."
