#sudo apt install arping
sudo setcap "cap_net_raw+ep" /usr/sbin/arping
arping -c 1 192.168.2.1
sudo crontab -e
#add "*/15 * * * * arping -c 1 192.168.2.1" to last line of file
#to ping the router every 15 minutes
sudo crontab -l
tail -f /var/log/syslog | grep arping #To see when the pings are made

