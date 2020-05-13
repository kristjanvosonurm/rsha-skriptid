#apache paigaldusskript
#!/bin/bash
PMA=$(dpkg-query -W -f='${status}' phpmyadmin 2>/dev/null | grep -c 'ok installed')
#kui php võrdub 0 siis paigaldab apache2
if [ $PMA -eq 0 ];
then
 echo "Paigaldame phpmyadmini"
 apt install phpmyadmin
 echo "Phpmyadmin on installeeritud"
#Kui php võrdub 1 siis see on installeeritud
elif [ $PMA -eq 1 ];
then
 echo "Phpmyadmin on juba installeeritud"
 which php
#Lõpetus
fi
#Skripti lõpp

