#apache paigaldusskript
#!/bin/bash
MYSQL=$(dpkg-query -W -f='${status}' mysql-server  2>/dev/null | grep -c 'ok installed')
#kui php võrdub 0 siis paigaldab apache2
if [ $MYSQL -eq 0 ];
then
 echo "Paigaldame mysql ja lisad"
 apt install mysql-server
 echo "Mysql ja lisad on installeeritud"
 touch $HOME/.my.cnf
 echo "[client]" >> $HOME.my.cnf
 echo "host = localhost" >> $HOME.my.cnf
 echo "user = root" >> $HOME.my.cnf
 echo "password = qwerty" >> $HOME.my.cnf

#Kui php võrdub 1 siis see on installeeritud
elif [ $MYSQL -eq 1 ];
then
 echo "Mysql ja lisad on juba installeeritud"
 mysql
#Lõpetus
fi
#Skripti lõpp

