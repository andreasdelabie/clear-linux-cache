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
du -sh .var/app/com.stremio.Stremio/.stremio-server/stremio-cache

echo ""

rm -rf /tmp/*
rm -rf /var/tmp/*
rm -rf .cache/*
rm -rf .var/app/com.stremio.Stremio/.stremio-server/stremio-cache/*

echo ""

echo "After:"
du -sh /tmp
du -sh /var/tmp
du -sh .cache
du -sh .var/app/com.stremio.Stremio/.stremio-server/stremio-cache

echo ""
