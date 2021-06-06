#!/bin/sh

cd image_root
lb config --apt apt --apt-recommends false --tasksel none --apt-indices false --distribution bullseye --memtest false --mirror-binary http://ftp.uni-stuttgart.de/debian/ --mirror-bootstrap http://ftp.uni-stuttgart.de/debian/ --architectures amd64 --mirror-chroot http://ftp.uni-stuttgart.de/debian/ --linux-flavours "amd64" --debian-installer false --firmware-binary true --system live --compression xz --bootappend-live "boot=live components username=urbackup" --iso-application "UrBackup Restore" --iso-preparer="Martin Raiber <martin@urbackup.org>" --iso-publisher="Martin Raiber <martin@urbackup.org>" --zsync false --iso-volume "UrBackup Restore" --archive-areas "main contrib non-free" --parent-archive-areas "main contrib non-free" --parent-distribution bullseye --initsystem systemd --firmware-chroot true --security false
#lb config --distribution testing --memtest false --mirror-binary http://ftp.de.debian.org/debian/ --mirror-bootstrap http://ftp.de.debian.org/debian/ --architectures i386 --mirror-chroot http://ftp.de.debian.org/debian/ --linux-flavours 486 --debian-installer false --firmware-binary true --system live --iso-volume "UrBackup Restore"
cd ..
