#! /bin/bash
figlet D1rkPanther
echo "Creating Directory in /mnt/backup"
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."
echo  "."

sudo mkdir /mnt/backup

echo "Finished"

# Backup folders  
backup_files="/home /var/ /etc /root /boot /opt"

# Backup destination path.
dest="/mnt/backup"

# Create archive filename.
day=$(date +%d-%B-%Y)
hostname=$(hostname)
archive_file="$hostname-$day.tgz"


echo "Backing up $backup_files to $dest/$archive_file"
date
echo
echo 


# Backup the files using tar.
sudo tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# $dest to check file sizes.
ls -lh $dest

echo "Have a Nice Day!"
