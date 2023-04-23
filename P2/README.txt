# Start the Project with the command below
gns3 P2.gns3

# Multicast or Unicast setting
1. Go to the router 1 logo right click
2. Select edit config
3. Go to the vxlan10 interface
4.a. Multicast : Comment out /sbin/ip link add vxlan10 type vxlan id 10 group 239.1.1.1 dev eth0 dstport 4789
4.b. Unicast : Comment out /sbin/ip link add vxlan10 type vxlan id 10 local 10.1.1.1 remote 10.1.1.2 dev eth0 dstport 4789
5. Do the same thing for router 2
