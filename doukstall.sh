echo THIS ONLY WORKS ON DEBIAN WITH APT-GET!!
cd /etc/apt/sources.list.s/
touch eduke32.list
echo "deb http://apt.duke4.net codename main" >> eduke32.list
echo "deb-src http://apt.duke4.net codename main" >> eduke32.list
wget -q http://apt.duke4.net/key/eduke32.gpg -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install eduke32
sudo apt-get install mapster32
sudo apt-get install duke3d-shareware

