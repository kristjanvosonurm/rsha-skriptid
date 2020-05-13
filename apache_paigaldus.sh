#apache paigaldusskript
#!/bin/bash
APACHE2=$(dpkg-query -W -f='${status}' apache2 2>/dev/null | grep -c 'ok installed')
#kui apache2 võrdub 0 siis paigaldab apache2
if [ $APACHE2 -eq 0 ]; 
then
 echo "Paigaldame apache2"
 apt install apache2
 echo "Apache on installeeritud"
#Kui apache2 võrdub 1 siis see on installeeritud
elif [ $APACHE2 -eq 1 ]; 
then
 echo "Apache2 on juba installeeritud"
 service apache2 start
 service apache2 status
#Lõpetus
fi
#Skripti lõpp
