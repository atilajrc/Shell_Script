#!/bin/bash
umount /mnt/Backup/
mount -t cifs -o user=xxx,password=xxx,vers=1.0 //192.168.1.5/backup/backup /mnt/Backup/
rsync -razvp --progress /mnt/Backup/ /mnt/Files/Backup/Dropbox/ENTERNESS/
umount /mnt/Backup/
find /mnt/Files/Backup/Dropbox/GEWEB ! -mtime -30 | xargs rm -rf
wget -rnd -c -P /mnt/Files/Backup/Dropbox/GEWEB/ -A 7z http://192.168.1.2/bkp/4301/diario/ --http-user=xxx --http-passwd=xxx
wget -rnd -c -P /mnt/Files/Backup/Dropbox/GEWEB_MENSAL/ -A 7z http://192.168.1.2/bkp/4301/mensal/ --http-user=xxx --http-passwd=xxx
umount /mnt/Backup/
mount -t cifs -o user=xxx,password=xxx,vers=1.0 //192.168.1.4/_BackupBanco /mnt/Backup/
rsync -razvp --progress /mnt/Backup/ /mnt/Files/Backup/Dropbox/CRM/
umount /mnt/Backup/
