# piBlackBox

Bash shell scripts that transform a Raspberry Pi (or any single-board computer running a Debian-based Linux distribution) into an inexpensive, fully-automatic, pocketable photo backup and streaming device.

Original project name: little-backup-box
Original Author: Dmitri Popov dmpop@linux.com
Original GitHub page: https://github.com/dmpop/little-backup-box

This original script has been modified to allow the installation also on different linux distributions ( I'm using Kali).
My advice is to install this script as root. Since few commands like mount and init require to have administrative privileges.


## Installation

On your Raspberry Pi, download the latest version of piBlackBox:

    ```git clone https://github.com/akaped/piBlackBox.git```
    
    or
    
    ```wget https://github.com/akaped/piBlackBox/archive/master.zip```


Go into the project directory and make the script executable:

```
cd BlackBox
chmod +x install-piblackbox.sh
```

Run the installer script:

    sh install-piblackbox.sh

The script will create two folders called cards and storage in /media/ and set up the proper permission.
Then it will install a @reboot script insede your crontab that will run at every reboot.

## Usage

1. Boot the Raspberry Pi - The script will wait for you to insert a storage device.
2. Plug in the backup storage device
3. Plug in the card reader and wait till the Raspberry Pi shuts down. (lights fixed on red and green)

**Note:** To differentiate between different storage cards, the backup script assigns a random 8-digit identifying number to each card (this number is stored in the *CARD_ID* file in the root of the card). The contents of the card is saved on the storage device in a folder with the identifying number as its name.

## Author

Pietro Boccaletto [pietro.boccaletto@gmail.com](mailto:pietro.boccaletto@gmail.com)

## License

The [GNU General Public License version 3](http://www.gnu.org/licenses/gpl-3.0.en.html)
