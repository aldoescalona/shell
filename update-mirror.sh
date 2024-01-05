#!/bin/bash

echo  "Actualizar risto mirror"

cd /opt/respaldos

 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers --no-data risto | sed -e '1s/^/\nUSE risto;\n/' | sed -e 's/\/\*[^*]*DEFINER=[^*]*\*\///'> /var/mirror/dump/risto.1.0.20.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers --skip-add-drop-table --no-create-info risto _sequences parametro sqlversion catalogosat | sed -e '1s/^/\nUSE risto;\n/' > /var/mirror/dump/dristo.1.0.20.sql
 mysqldump -u root -proot --routines --default-character-set=UTF8 --no-create-info --no-data --no-create-db --skip-opt risto | sed -e '1s/^/\nUSE risto;\n/' | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/' | sed -e 's/DEFINER=`[^`][^`]*`@`[^`][^`]*`//g'> /var/mirror/dump/tristo.1.0.20.sql
 echo -e "\nUSE risto;\n" > /var/mirror/dump/fristo.1.0.20.sql
