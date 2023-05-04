#!/bin/sh

/sbin/ip link add br0 type bridge
/sbin/ip link set dev br0 up
/sbin/ip addr add 10.1.1.2/24 dev eth0

if [[ $1 -eq 1 ]]
then
	/sbin/ip link add vxlan10 type vxlan id 10 group 239.1.1.1 dev eth0 dstport 4789
else
	/sbin/ip link add vxlan10 type vxlan id 10 local 10.1.1.2 remote 10.1.1.1 dev eth0 dstport 4789
fi
/sbin/ip addr add 12.1.1.2/24 dev vxlan10

brctl addif br0 eth1
brctl addif br0 vxlan10
/sbin/ip link set dev vxlan10 up
