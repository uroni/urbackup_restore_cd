#!/bin/sh

VERSION=`cat version.txt`
CDATE=`date --iso`

echo "UrBackup Restore" > splash.txt
echo "Version: $VERSION" >> splash.txt
echo "Created: $CDATE" >> splash.txt

mkdir -p image_root/config/includes.binary/isolinux
convert logo1-3-cd2.png -font Liberation-Sans -pointsize 22 -gravity NorthWest -annotate +350+100 '@splash.txt' image_root/config/includes.binary/isolinux/splash.png


