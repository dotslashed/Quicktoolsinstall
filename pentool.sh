#!/bin/bash

clear

sudo apt-get update
sudo apt-get install python3.6
sudo apt-get install python3.7
sudo apt-get install python3-pip

git clone https://github.com/maurosoria/dirsearch.git

cp dir.txt dirsearch

cd dirsearch

sleep 5

clear

python3 dirsearch.py -e php,asp,aspx,jsp,py,txt,conf,config,bak,backup,swp,old,db,sqlasp,aspx,aspx~,asp~,py,py~,rb,rb~,php,php~,bak,bkp,cache,cgi,conf,csv,html,inc,jar,js,json,jsp,jsp~,lock,log,rar,old,sql,sql.gz,sql.zip,sql.tar.gz,sql~,swp,swp~,tar,tar.bz2,tar.gz,txt,wadl,zip -l dir.txt -i 200
