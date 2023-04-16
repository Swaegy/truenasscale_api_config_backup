# TrueNAS Scale API Backup

A bash script used to access the TrueNAS Scale API remotely to backup the configuration.

## Requirements

A Remote system for running the script and saving the output. 
(Iam using Debian for example, curl needs to be installed) 

## Setup TrueNAS Scale

You only need to create a API Key.
It's hidden in the top right of your TrueNAS Scale WebUI under the User Icon.
The Name for the API Key doesn't matter, but should be recognisable for the future.
    
## Example Config Debian
Install the dependencies for debian to run the script

    $ sudo apt install curl

Make the script executable

    $ sudo chmod u+x /*pathtobackupscript*/truenasscale-backup.sh

Execute the script through crontab, in the example at 1 in the morning

    $ sudo crontab -e

    0 1 * * * /*pathtobackupscript*/truenasscale-backup.sh

## Sources
https://github.com/curl/curl
https://www.truenas.com/docs/scale/api/

*You access the documentation for the TrueNAS API over the WebUI of your Truenas system*
