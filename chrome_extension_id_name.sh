Required file


Put the Extension ID in one of the text file 

### Example ###

cat extension_id.txt

pjkljhegncpnkpknbcohdijeoejaedia
blpcfgokakmgnkcojhhkbfbldkacnbeo
hipbfijinpcgfogaopmgehiegacbhmob

### For Loop to recursevly check log each id details from webstore to logfile ###

#!/bin/bash

for i in `cat /tmp/extension_id` ; do wget -O - https://chrome.google.com/webstore/detail/$i --max-redirect 0 --append-output=zlogfile >> /tmp/zlogfile \
; echo "$i Completed" ;    done

cat /tmp/zlogfile |  grep following | awk -F / '{print $(NF-1),"\r\t",$NF}' | sed "s/\[following\]//"
