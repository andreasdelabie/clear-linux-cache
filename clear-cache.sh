#!/bin/bash

if (($EUID != 0)); then
  echo "Please run as root"
  exit
fi

clear

echo "
----------------------
ANDREAS' CACHE CLEANER
----------------------
"

echo "Before:"
du -sh /tmp
du -sh /var/tmp
du -sh .cache
du -sh /var/lib/docker
du -sh .var/app/com.stremio.Stremio/.stremio-server/stremio-cache

echo ""

rm -rf /tmp/*
rm -rf /var/tmp/*
rm -rf .cache/*
docker system prune -a -f > /dev/null
rm -rf .var/app/com.stremio.Stremio/.stremio-server/stremio-cache/*

echo ""

echo "After:"
du -sh /tmp
du -sh /var/tmp
du -sh .cache
du -sh /var/lib/docker
du -sh .var/app/com.stremio.Stremio/.stremio-server/stremio-cache

echo ""
