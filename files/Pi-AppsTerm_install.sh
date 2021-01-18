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
mv Pi-Apps.info PITM || error "Unable to change folder name!"
cd PITM || error "Unable to change directiry to PITM!"
chmod +x *.* || error "Unable to change executable permissons!"
sudo cp files/Pi-AppsTerm /usr/bin/pi-apps || error "Unable to add Pi-Apps to terminal!"
sudo chmod +x /usr/bin/pi-apps
pi-apps version || error "Unable to run version command, pi-appsterm might be installed incorrectly!"
