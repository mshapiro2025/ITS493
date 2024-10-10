port=1
while [ $port -le 10000 ];
do
        timeout .1 bash -c "echo >/dev/tcp/$1/$port" 2>/dev/null && echo "$port"
        ((port++))
done
