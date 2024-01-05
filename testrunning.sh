#!/bin/bash

echo  "Prueba glassfis is running"

result=`ps -ef|grep 'java -classpath' | grep -v grep | wc -l`
if [ $result -ge 1 ]
   then
        echo "script is running"
   else
        echo "script is not running"
fi

