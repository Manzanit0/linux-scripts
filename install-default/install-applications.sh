#!/bin/sh
apt-get update  # To get the latest package lists

#Atom editor & packages
apt-get install atom -y
apm install docblockr
apm install linter
apm install linter-jshint

cat jshint-config.cson >> ~/.atom/config.cson #Configure jshint

#InteliJ IDEA
cd /usr/local/
mkdir idea
cd /usr/local/idea
wget -O /tmp/intellij.tar.gz https://download.jetbrains.com/idea/ideaIC-2017.1.tar.gz
tar xfz /tmp/intellij.tar.gz
cd idea-IC-123.169/bin
./idea.sh

#Postman
cd /usr/local/
mkdir postman
cd /usr/local/postman
wget -O /tmp/postman.tar.gz https://www.getpostman.com/app/download/linux64
tar xfz /tmp/postman.tar.gz

#Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# Google Chrome
apt-get install google-chrome-stable

#WMail client
apt-get install wmail-desktop

#Telegram messenger
apt-get install telegram

#Slack
apt-get install slack-desktop
