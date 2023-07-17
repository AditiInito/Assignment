cat webserver.log | awk '{print $9}' | sort | uniq -c
