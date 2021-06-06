#!/bin/bash

set -e

./create_splash.sh
cd image_root
lb clean
lb build
