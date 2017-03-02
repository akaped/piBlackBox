# Little Backup Box

Bash shell scripts that transform a Raspberry Pi (or any single-board computer running a Debian-based Linux distribution) into an inexpensive, fully-automatic, pocketable photo backup and streaming device.

## Installation

On your Raspberry Pi, download the latest version of Little Backup Box:

    wget https://chiselapp.com/user/dmpop/repository/little-backup-box/tarball/little-backup-box.tar.gz

Unpack the downloaded tarball archive:

    tar xzvf little-backup-box.tar.gz

Switch to the resulting directory and make the *install-little-backup-box.sh* script executable:

```
cd little-backup-box
chmod +x install-little-backup-box.sh
```

Run the installer script:

    ./install-little-backup-box.sh

## Usage

1. Boot the Raspberry Pi
2. Plug in the backup storage device
3. Plug in the card reader and wait till the Raspberry Pi shuts down

**Note:** To differentiate between different storage cards, the backup script assigns a random 8-digit identifying number to each card (this number is stored in the *CARD_ID* file in the root of the card). The contents of the card is saved on the storage device in a folder with the identifying number as its name.

## Author

Dmitri Popov [dmpop@linux.com](mailto:dmpop@linux.com)

## License

The [GNU General Public License version 3](http://www.gnu.org/licenses/gpl-3.0.en.html)
