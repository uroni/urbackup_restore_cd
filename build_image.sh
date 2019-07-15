#!/bin/sh
./create_splash.sh
cd image_root
lb clean
lb build
cp live-image-amd64.hybrid.iso /media/sf_urbackup_cd_workspace/
cd ..
