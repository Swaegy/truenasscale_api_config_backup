# TrueNAS Scale API Backup
A bash script used to access the TrueNAS Scale API remotely to backup the configuration.<br /><br />

## Requirements
A Remote system for running the script and saving the output. <br />
(Iam using Debian for example, curl needs to be installed) <br /><br />

## Setup TrueNAS Scale
You only need to create a API Key. <br /> (small how-to --> https://github.com/ARC-XX/truenasscale_api_config_backup/wiki/Create-TrueNAS-API-Key) <br /><br />

    
## Example Config Debian
Install the dependencies for debian to run the script

    $ sudo apt install curl

Make the script executable

    $ sudo chmod u+x /*pathtobackupscript*/truenasscale-backup.sh

Execute the script through crontab, in the example at 1 in the morning

    $ sudo crontab -e

    0 1 * * * /*pathtobackupscript*/truenasscale-backup.sh

## Sources
https://github.com/curl/curl <br />
https://www.truenas.com/docs/scale/api/ <br />
*You access the documentation for the TrueNAS API over the WebUI of your Truenas system*<br /><br />

## License
This repository is licensed under the GNU General Public License v3.0. <br />
For more information, see the LICENSE file.<br /><br />

## Disclaimer
This repository is for educational and informational purposes only. <br />
The author assumes no liability for any damages that may arise from the use of the contents of this repository.<br /><br />

## Contributions
Contributions are always welcome! If you find an error or would like to suggest an improvement, please create an issue.
