#! /usr/bin/sh

cd $HOME/Documents/debian/
git pull

cd

if [[ $(hostnamectl hostname) == "hp" ]]; then
    cp $HOME/.xprofile $HOME/Documents/debian/2_GUI/1920x1080/xprofile

elif [[ $(hostnamectl hostname) == "asus" ]]; then
    cp $HOME/.xprofile $HOME/Documents/debian/2_GUI/1366x768/xprofile
else
    echo "Skipping sync, unknown hostname"
fi

cp -R $HOME/.config/i3 $HOME/Documents/debian/2_GUI/general/
cp -R $HOME/.config/fish $HOME/Documents/debian/2_GUI/general/
cp -R $HOME/.config/picom $HOME/Documents/debian/2_GUI/general/
cp -R $HOME/.config/xorg-xinit $HOME/Documents/debian/2_GUI/general/
cp -R $HOME/.config/rofi $HOME/Documents/debian/2_GUI/general/
cp $HOME/i3_sync.sh $HOME/Documents/debian/2_GUI/


cd $HOME/Documents/debian/
git add --all
git commit -m "update debian files"
git push

cd
