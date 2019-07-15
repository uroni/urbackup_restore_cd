## UrBackup

Please see the website at https://www.urbackup.org for more information, wiki, forums and the issue tracker.

### Building on Debian (10 - buster)

Install dependencies

```bash
apt install live-build imagemagick
```

Remove the strict security policy of imagemagick for splash screen generation: Remove `<policy domain="path" rights="none" pattern="@*"/>` from `/etc/ImageMagick-6/policy.xml`.

Build the image:

```bash
./build_image.sh
```

### Sef-compiled restore client

The restore cd build downloads the UrBackup restore client binaries from the build server. To compile it yourself follow the instructions at https://github.com/uroni/urbackup_backend to build your own client on Debian 10. Then run `./update_restore.sh` and adjust the download step in `image_root/config/hooks/normal/urbackup.chroot` to your own location.