#!/bin/sh
cd ~/.500px/
wget -q -O- --header="Accept: text/html"  -U 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:13.0) Gecko/20100101 Firefox/13.0.1' http://feed.500px.com/500px-best | grep -oP 'https://g.+4.jpg'  | sed  -e "s/4.jpg/5.jpg/g" | while read line ; do wget "$line"  ; done
