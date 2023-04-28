# Start the Project with the command below
gns3 P3.gns3

#Run router script

1. Go to the router icon you want to choose
2. click right
3. start auxialiary console
4. Run the command sh script/router-x.sh #with x being the router number
5. Do it for every router
6. Add ip address to the hosts # for example /sbin/ip addr add 20.1.1.1/24 dev eth1 host-1
					/sbin/ip addr add 20.1.1.2/24 dev eth0 host-3
7. Test ping
