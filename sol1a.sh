cat webserver.log | awk '{print $9}' | grep -c 200
