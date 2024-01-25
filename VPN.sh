#!/bin/bash
warp-cli connect
echo "############processing################"
sleep 30
ifconfig > ip.txt
y=$(grep "destination" ip.txt | cut -d " " -f 10)
echo "Your Warp ip is "$y
echo "please enter the path of opnvpn"
read z
sudo openvpn $z>/dev/null&
ifconfig > ip.txt
x=$(grep "destination 10" ip.txt |cut -d " " -f 10)
sleep 30
ping 10.10.10.10 -c 3 
warp-cli disconnect


