#!/bin/bash

# set variables for webcalls
KEY="API Key"
HOST="FQDN or IP of Host u want to Backup"
PATHCONFIG="Path were the backupfiles should be stored"
DATE=$(date +%Y%m%d)
OPTIONS='{"secretseed":true,"root_authorized_keys":true}'

# make the api request for config as xml and alias as json
curl -X POST -H "Content-Type: application/json" -d "${OPTIONS}" -H "Authorization: Bearer ${KEY}" "https://${HOST}/api/v2.0/config/save" -o "${PATHCONFIG}"/truenasscale/nas-config-"${DATE}".tar

# check the backup destination for backups older then 14 days, if older delete the backup
find "${PATHCONFIG}" -type f -name "${HOST}"-config-\*.tar -mtime +14 -delete
