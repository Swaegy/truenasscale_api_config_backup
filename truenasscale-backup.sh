#!/bin/bash

# API Key
KEY=""
# FQDN or IP for TrueNas Host
HOST=""
# Path to where the Export should be saved to
PATHCONFIG=""

# Variable to Add to Name for unique naming for daily export
DATE=$(date +%Y%m%d)
# Curl request Options for exporting the zfs keys needed for restoring the pools
OPTIONS='{"secretseed":true,"root_authorized_keys":true}'

# make the api request for config as xml and alias as json
curl -X POST -H "Content-Type: application/json" -d "${OPTIONS}" -H "Authorization: Bearer ${KEY}" "https://${HOST}/api/v2.0/config/save" --create-dirs -o "${PATHCONFIG}"/truenasscale/nas-config-"${DATE}".tar

# check the backup destination for backups older then 14 days, if older delete the backup
find "${PATHCONFIG}" -type f -name "${HOST}"-config-\*.tar -mtime +14 -delete
