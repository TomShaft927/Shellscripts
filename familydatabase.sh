#!/bin/bash
while true 
do
clear
echo -e "What would you like to do?
Add an entry (a)
Search an entry (s)
Quit (q)
Enter your choice (a/s/q)-->\c"
read ANSWER
case $ANSWER in
a|A ) echo -e "Name of the family member -->\c"
	read NAME
	echo -e "Family member's relation to you -->\c"
	read RELATION
	echo -e "Family member's phone number -->\c"
	read PHONE
	echo "$NAME\$RELATION\$PHONE" >> database
	;;
s|S ) echo "What word are you looking for? -->"
	read WORD
	grep "$WORD" database
	sleep 4
      ;;
q|Q ) exit
      ;;
*)    echo "you must enter either the letter a or s."
      sleep 4
      ;;
esac
done
