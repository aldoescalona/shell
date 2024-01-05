#!/bin/bash

echo  "Respaldos"

cd /opt/respaldos

touch test.txt

RESPFILENAME="RESPALDO.zip"
echo $RESPFILENAME
mv $RESPFILENAME RESPALDO_1.zip


# RESPALDOS
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST0 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST0.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST1 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST1.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST2 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST2.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST3 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST3.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST4 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST4.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST5 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST5.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST6 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST6.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST7 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST7.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST8 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST8.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST9 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST9.BK.sql 
 # mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST10 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST10.BK.sql
 # mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST11 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST11.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST12 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST12.BK.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers RST13 | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/'> /opt/respaldos/RST13.BK.sql


# RST_X [1,2,3]
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers --no-data RSTX | sed -e 's/\/\*[^*]*DEFINER=[^*]*\*\///'> /opt/respaldos/1.RST_X.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers --skip-add-drop-table --no-create-info RSTX > /opt/respaldos/2.DATARST_X.sql
 mysqldump -u root -proot --routines --default-character-set=UTF8 --no-create-info --no-data --no-create-db --skip-opt RSTX | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/' | sed -e 's/DEFINER=`[^`][^`]*`@`[^`][^`]*`//g'> /opt/respaldos/3.TRIGRST.sql
 cp /opt/respaldos/1.RST_X.sql /home/aldo/sql/
 cp /opt/respaldos/2.DATARST_X.sql /home/aldo/sql/
 cp /opt/respaldos/3.TRIGRST.sql /home/aldo/sql/
 
# dristo, tristo
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers --skip-add-drop-table --no-create-info risto > /opt/respaldos/dristo.sql
 mysqldump -u root -proot --routines --default-character-set=UTF8 --no-create-info --no-data --no-create-db --skip-opt risto | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/' | sed -e 's/DEFINER=`[^`][^`]*`@`[^`][^`]*`//g'> /opt/respaldos/tristo.sql

# controluser
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 controluser | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/' | sed -e 's/DEFINER=`[^`][^`]*`@`[^`][^`]*`//g'> /opt/respaldos/controluser.sql
# ctrlristo
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 ctrlristo | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/' | sed -e 's/DEFINER=`[^`][^`]*`@`[^`][^`]*`//g'> /opt/respaldos/ctrlristo.sql
# appapi
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 appapi | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/' | sed -e 's/DEFINER=`[^`][^`]*`@`[^`][^`]*`//g'> /opt/respaldos/appapi.sql
#catcorp
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 catcorp descripcionessat estado formapagosat municipio proveedorcfdi tipoasentamiento > /opt/respaldos/catcorp.BK.sql

zip $RESPFILENAME *.sql
rm *.sql

#!/bin/bash

echo  "Actualizar risto mirror"

cd /opt/respaldos

 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers --no-data risto | sed -e '1s/^/\nUSE risto;\n/' | sed -e 's/\/\*[^*]*DEFINER=[^*]*\*\///'> /var/mirror/dump/risto.1.0.20.sql
 mysqldump -u root -proot --skip-comments --default-character-set=UTF8 --skip-lock-tables --skip-triggers --skip-add-drop-table --no-create-info risto _sequences parametro sqlversion catalogosat | sed -e '1s/^/\nUSE risto;\n/' > /var/mirror/dump/dristo.1.0.20.sql
 mysqldump -u root -proot --routines --default-character-set=UTF8 --no-create-info --no-data --no-create-db --skip-opt risto | sed -e '1s/^/\nUSE risto;\n/' | sed -e 's/DEFINER[ ]*=[ ]*[^*]*\*/\*/' | sed -e 's/DEFINER=`[^`][^`]*`@`[^`][^`]*`//g'> /var/mirror/dump/tristo.1.0.20.sql
 echo -e "\nUSE risto;\n" > /var/mirror/dump/fristo.1.0.20.sql
