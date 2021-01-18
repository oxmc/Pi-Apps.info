#! /bin/bash

#Variables

message="Thanks to Itai on discord for helping me fix install errors!"

#Functions
function error {
  echo -e "\e[91m$1\e[39m"
  exit 1
}

#Main
echo "${message}"
sudo apt install git || error "Unable to install git!"
git clone https://github.com/oxmc/Pi-Apps.info.git || error "Unable to download Pi-AppsTerm!"
git clone https://github.com/Botspot/pi-apps.git || error "Unable to download pi-apps!"
sudo mv Pi-Apps.info /usr/local/bin/Pi-AppsTerm || error "Unable to move folder to /usr/local/bin!"
cd /usr/local/bin/Pi-AppsTerm || error "Unable to change directiry to Pi-AppsTerm!"
sudo chmod +x *.* || error "Unable to change executable permissons!"
sudo cp /usr/local/bin/Pi-AppsTerm/files/Pi-AppsTerm /usr/local/bin/pi-apps || error "Unable to add pi-apps to terminal!"
sudo chmod +x /usr/local/bin/pi-apps || error "Unable to change executable permissons! pi-apps will not work in terminal!"
sudo rm -r index.html || error "Unable to delete non required files!"
sudo rm -r stylesheet.css || error "Unable to delete non required files!"
sudo rm -r README.md || error "Unable to delete non required files!"
sudo rm -r images/*.* || error "Unable to delete non required files!"
pi-apps version || error "Unable to run version command, pi-appsterm might be installed incorrectly!"
