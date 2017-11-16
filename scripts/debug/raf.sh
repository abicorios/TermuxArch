#!/data/data/com.termux/files/usr/bin/bash -e
# Website for this project at https://sdrausty.github.io/TermuxArch
# See https://sdrausty.github.io/TermuxArch/CONTRIBUTORS Thank You! 
# Copyright 2017 by SDRausty. All rights reserved.  🌎 🌍 🌏 🌐 🗺
# Run the following before using `raf.sh` to debug `setupTermuxArch.sh`:
# apt-get -qq update && apt-get -qq upgrade --yes
# apt-get -qq install findutils --yes 
# See README.md for instructions and warning! 
#####################################################################
if [ ! -d $HOME/arch ] ;then
rm setupTermuxArch.sh 2>/dev/null||:
wget https://raw.githubusercontent.com/sdrausty/TermuxArch/master/setupTermuxArch.sh
bash setupTermuxArch.sh 
printf "Exited setupTermuxArch.sh\nContinuing raf.sh \n"
cd $HOME/arch||:
rm -rf * 2>/dev/null||:
find -type d -exec chmod 700 {} \; 2>/dev/null||:
rm -rf *
cd ..
rm -rf arch
cd $HOME
rm setupTermuxArch.sh 2>/dev/null||:
#dpkg --purge termux-exec
printf "raf.sh done\n"
else 
printf "raf.sh exiting\n"
exit
fi
exit

