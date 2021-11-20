countHost=0;
for num in {2..254}; do
    ping -c 1 -w 1 192.168.1.$num;
    if [ $? -eq 0 ];
    then
        let "countHost++"
        echo "#$countHost: 192.168.1.$num" >> active_hosts.txt;
        echo "host found!";
    fi
done
