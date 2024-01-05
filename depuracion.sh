#!/bin/bash

echo  "Depuracion de facturas"

cd /opt/respaldos

curl https://ristocloud.com/batch/v1/depuracion/facturas/50 > depuracion.log
