if [[ $(hostname) = "asus" ]]; then
    sudo cp -R ./2_DesktopGUI/1366x768/* /home/$(whoami)/.config/
    sudo cp ./2_DesktopGUI/1366x768/xprofile /home/$(whoami)/
    sudo mv /home/$(whoami)/xprofile /home/$(whoami)/.xprofile

elif [[ $(hostname) = "hp" ]]; then
    sudo cp -R ./2_DesktopGUI/1920x1080/* /home/$(whoami)/.config/
    sudo cp ./2_DesktopGUI/1920x1080/xprofile /home/$(whoami)/
    sudo mv /home/$(whoami)/xprofile /home/$(whoami)/.xprofile

else
    sudo cp -R ./2_DesktopGUI/1920x1080/* /home/$(whoami)/.config/
    sudo cp ./2_DesktopGUI/1366x768/xprofile /home/$(whoami)/
    sudo mv /home/$(whoami)/xprofile /home/$(whoami)/.xprofile

fi
    
sudo cp -R ./2_DesktopGUI/general/* /home/$(whoami)/.config/
sudo ln /home/$(whoami)/.config/xorg-xinit/xinitrc /home/$(whoami)/.xinitrc
sudo mv /home/$(whoami)/.config/fonts/* /usr/share/fonts/
sudo rm -R /home/$(whoami)/.config/fonts/
sudo cp ./2_DesktopGUI/i3_sync.sh /home/$(whoami)/
