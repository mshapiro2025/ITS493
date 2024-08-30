# Molly Shapiro
# Bash script for automating basic pen testing

# Recon
# do you know the IP of your DNS server?
# yes? keep going
# no?
sudo nmap 10.0.5.0/24 -p 53 --open | egrep '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' >> $dnsserver
echo "Your DNS server IP is $dnsserver"

echo "Do you have the [H]ostname or [I]P of your server?"
$hostname = read -p "What is the hostname of your server?"
nslookup $hostnamename $dnsserver
$ipadd = read -p "What is the IP of your server?"
nslookup $ipadd $dnsserver

nmap -sV $ipadd

# Is this a web server?
dirb http://$ipadd -wfr
#

# take versions of apps from nmap and dump into metasploit search/searchsploit, then test exploits with check function

#
