#!/bin/bash

USER="*******"
PASSWORD="********"
DATABASE="db1"
DATABASE2="db2"
DATABASE3="db3"
DATABASE4="db4"
DATABASE5="db5"

rm -rf /home/userdocker/respaldos/db/glpi/*
rm -rf /home/userdocker/respaldos/db/ocs/*
rm -rf /home/userdocker/respaldos/db/red_emprende/*
rm -rf /home/userdocker/respaldos/db/formacion_continua/*
rm -rf /home/userdocker/respaldos/db/moodle/*

FINAL_OUTPUT=/home/userdocker/respaldos/db/glpi/`date +%d-%m-%Y`_$DATABASE.sql
/usr/bin/docker exec servidor_mariadb mysqldump --user=$USER --password=$PASSWORD $DATABASE > $FINAL_OUTPUT

FINAL_OUTPUT=/home/userdocker/respaldos/db/ocs/`date +%d-%m-%Y`_$DATABASE2.sql
/usr/bin/docker exec servidor_mariadb mysqldump --user=$USER --password=$PASSWORD $DATABASE2 > $FINAL_OUTPUT

FINAL_OUTPUT=/home/userdocker/respaldos/db/red_emprende/`date +%d-%m-%Y`_$DATABASE3.sql
/usr/bin/docker exec servidor_mariadb mysqldump --user=$USER --password=$PASSWORD $DATABASE3 > $FINAL_OUTPUT

FINAL_OUTPUT=/home/userdocker/respaldos/db/formacion_continua/`date +%d-%m-%Y`_$DATABASE4.sql
/usr/bin/docker exec servidor_mariadb mysqldump --user=$USER --password=$PASSWORD $DATABASE4 > $FINAL_OUTPUT

FINAL_OUTPUT=/home/userdocker/respaldos/db/moodle/`date +%d-%m-%Y`_$DATABASE5.sql
/usr/bin/docker exec servidor_mariadb mysqldump --user=$USER --password=$PASSWORD $DATABASE5 > $FINAL_OUTPUT


#gzip $FINAL_OUTPUT

#gzip $FINAL_OUTPUT
