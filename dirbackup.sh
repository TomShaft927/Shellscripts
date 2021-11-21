#!/bin/bash
#This Script backs up a directory of you choice

echo -e "What directory do you want to Backup?-->\c"
read ANS

echo "performing backup....."
sleep 3
FILE='echo $ANS | sed s#/#-#g'
DATE='date +%F'
tar -zcvf ~/backup-$FILE-$DATE.tar.gz $ANS

echo "Backup performed to ~/backup-$FILE-$DATE.tar.gz"


echo "This Script does not work on Fedora 34 correctly."
