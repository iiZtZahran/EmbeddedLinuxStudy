we use static to keep ip constant throughtout the process 

cd /etc/NetworkManager/

cd system-connections/

nmcli connection show --> show devices connected 

sudo cat Zahran.nmconnection

sudo nmcli connection modify <connection_name> ipv4.address <new_ip_address>/<subnet_mask> ipv4.gateway <new_gateway_ip> i.e connection name is your home network name 

sudo nmcli connection down TEdata78D621 && sudo nmcli connection up TEdata78D621 

press ifconfig and check your new ip address

ping the setted up address to check connectivity using ping command 

192.168.1.9


$ss --> check port connections 

$netstat --listening --program --numeric --tcp --udp --extend -->indicate the program name of uid 

to monitor and analyze packets received and sent use --> dcpdump command zahran@Zahran:~$ sudo tcpdump -i wlo1 -w output.pcap src 192.168.1.9 

the produced output.pcab is then analyzed using wireshark 
