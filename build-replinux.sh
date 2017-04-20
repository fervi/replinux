#!/bin/sh

echo "Welcome in Replinux builder - Ubuntu 16.04"
echo "deb http://ports.ubuntu.com/ xenial main universe" > /etc/apt/sources.list
echo "deb-src http://ports.ubuntu.com/ xenial main universe" >> /etc/apt/sources.list
apt-get update
apt-mark hold libc6
apt-get -y dist-upgrade

#Telnet support (for login without SSH in app)
apt-get -y install telnetd

apt-get -y autoremove
apt-get clean