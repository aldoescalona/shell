
echo 'Detener payara'
# systemctl stop payara_domain1.service
# /etc/init.d/payara_domain1 stop
asadmin stop-domain domain1

echo 'Reiniciar db'
systemctl restart mysql.service

echo 'Iniciar payara'
# systemctl start payara_domain1.service
# /etc/init.d/payara_domain1 start
asadmin start-domain domain1


echo 'FIN'
