#!/bin/sh
#

echo "$1"
echo "$2"
echo "$3"

curl -X POST http://localhost:8080/ws/v2/file/auth/data/$1 -d '{"esquema":"$2", "key":"$3"}' -H 'Content-Type: application/json' -o breakpoint.zip
unzip breakpoint.zip

