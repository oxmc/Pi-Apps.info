#! /bin/bash

#Functions
function error {
  echo -e "\e[91m$1\e[39m"
  $2
  exit 1
}

#Main
git clone https://github.com/oxmc/Pi-AppsTerm.git || error "Unable to download files, git may not be installed, if not there is a problem." "sudo apt install git"
