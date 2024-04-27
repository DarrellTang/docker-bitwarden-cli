#!/bin/bash

set -e

bw config server ${BW_HOST}

bw login --apikey

eval $(bw unlock --passwordenv BW_PASSWORD | grep -o 'export.*')

echo 'Running `bw server` on port 8087'
bw serve --hostname 0.0.0.0 #--disable-origin-protection
