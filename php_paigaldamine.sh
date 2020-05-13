#apache paigaldusskript
#!/bin/bash
PHP=$(dpkg-query -W -f='${status}' php7.0 2>/dev/null | grep -c 'ok installed')
#kui php võrdub 0 siis paigaldab apache2
if [ $PHP -eq 0 ];
then
 echo "Paigaldame php ja lisad"
 apt install php7.0 libapache2-mod-php7.0 php7.0-mysql
 echo "Php ja lisad on installeeritud"
#Kui php võrdub 1 siis see on installeeritud
elif [ $PHP -eq 1 ];
then
 echo "Php ja lisad on juba installeeritud"
 which php
#Lõpetus
fi
#Skripti lõpp

