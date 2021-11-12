#!/usr/bin/env bash

# Script to backup db
source ~/.profile

find ~/backups/*.dump -mtime +4 -exec rm {} \;

date=`date +%Y-%m-%d`

filename=colouringlondondb_$date.dump

echo $filename

# Needs a .pgpass file defined in the home directory
pg_dump -U cldbadmin -Fc colouringlondondb > ~/backups/$filename

az storage blob upload -f ~/backups/$filename -c production-db-backups -n $filename --connection-string=$AZURE_CONNECTION_STRING
