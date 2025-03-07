sudo clear

echo "
----------------------
ANDREAS' CACHE CLEANER
----------------------
"

echo "Before:"
sudo du -sh /tmp
sudo du -sh /var/tmp
sudo du -sh .cache
sudo du -sh .var/app/com.stremio.Stremio/.stremio-server/stremio-cache

echo ""

sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*
sudo rm -rf .cache/*
sudo rm -rf .var/app/com.stremio.Stremio/.stremio-server/stremio-cache/*

echo ""

echo "After:"
sudo du -sh /tmp
sudo du -sh /var/tmp
sudo du -sh .cache
sudo du -sh .var/app/com.stremio.Stremio/.stremio-server/stremio-cache

echo ""
