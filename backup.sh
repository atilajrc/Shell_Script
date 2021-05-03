#!/bin/bash
umount /mnt/Backup/
mount -t cifs -o user=importec,password=importec,vers=1.0 //192.168.1.5/backup/backup /mnt/Backup/
rsync -razvp --progress /mnt/Backup/ /mnt/Files/Backup/Dropbox/ENTERNESS/
umount /mnt/Backup/
find /mnt/Files/Backup/Dropbox/GEWEB ! -mtime -30 | xargs rm -rf
wget -rnd -c -P /mnt/Files/Backup/Dropbox/GEWEB/ -A 7z http://192.168.1.2/bkp/4301/diario/ --http-user=importec --http-passwd=importec
wget -rnd -c -P /mnt/Files/Backup/Dropbox/GEWEB_MENSAL/ -A 7z http://192.168.1.2/bkp/4301/mensal/ --http-user=importec --http-passwd=importec
umount /mnt/Backup/
mount -t cifs -o user=Administrator,password=CRM@2017##,vers=1.0 //192.168.1.4/_BackupBanco /mnt/Backup/
rsync -razvp --progress /mnt/Backup/ /mnt/Files/Backup/Dropbox/CRM/
umount /mnt/Backup/
