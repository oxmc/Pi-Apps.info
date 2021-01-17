#! /bin/bash

#Functions
function error {
  echo -e "\e[91m$1\e[39m"
  exit 1
}

#Main
sudo apt install git || error "Unable to install git!"
git clone https:/github.com/oxmc/Pi-Apps.info.git || error "Unable to download Pi-AppsTerm!"
git clone https://github.com/Botspot/pi-apps.git || error "Unable to download pi-apps!"
rename Pi-Apps.info PITM || error "Unable to change folder name!"
cd PITM || error "Unable to change directiry to PITM!"
chmod +x files/Pi-AppsTerm || error "Unable to change executable permissons!"
cp files/Pi-AppsTerm /usr/bin/pi-apps || error "Unable to add Pi-Apps to terminal!"
pi-apps version || error "Unable to run version command, pi-appsterm might be installed incorrectly!"
