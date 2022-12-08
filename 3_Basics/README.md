## Removable Media
For get the computer recognizing USB, Android phones and even NTFS disks, I recommend:
```bash
sudo apt-get install udiskie mtpfs gvfs jmtpfs
```


## Touchpad
If you are using a laptop, I recommend you to do this for have all gestures working correctly.
```bash
sudo apt-get install xf86-input-libinput
cd /etc/X11/xorg.conf.d
sudo nano 30-touchpad.conf
```

Now put this in the file and save changes:
```bash
Section "Inputclass"
  Identifier "devname"
  Driver "libinput"
  Option "Tapping" "on"
  Option "NaturalScrolling" "false"
EndSection
```


## Audio
For this, I recommend you to use pulseaudio, so you have to install two packages: Pulseaudio and Pavucontrol, for a graphical GUI
```bash
sudo apt-get install pulseaudio pavucontrol
```

## Bluetooth
Three steps to configure bluetooth
- Step 1: Install utilities
- Step 2: Enable Bluetooth service
- Step 3: Pair with Arch Linux


***UTILITIES***
```bash
sudo apt-get install bluetooth bluez blueman bluez-firmware
```

Now, let's check if all is OK.
```bash
lsmod | grep btusb
sudo nano /etc/bluetooth/main.conf
```

And finally, enable bluetooth.
```bash
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
```

If you already installed pulseaudio, you can do something for see bluetooth volume in pavucontrol
```bash
sudo apt-get install pulseaudio-module-bluetooth
```


## File Managing
### - GUI
I recommend you to use [pcmanfm](https://wiki.archlinux.org/title/PCManFM) for have a GUI and file-roller for managing compressed files in pcmanfm
```bash
sudo apt-get install pcmanfm file-roller
```

### - Terminal
Give a try to [ranger](https://github.com/ranger/ranger)
```bash
sudo apt-get install ranger
```

## Trash
With *pcmanfm* you can open the trash clicking on the left panel, but on the command
line you can use:

```bash
ls ~/.local/share/Trash/files
```

## GTK Theming
For GTK themes, I recommend you to use [lxappearance](https://github.com/lxde/lxappearance)
```bash
sudo pacman -S gtk-engine-murrine gtk-engines lxappearance
```

## Qt Theming

GTK themes will not be applied to Qt programs, but you can use
[**Kvantum**](https://archlinux.org/packages/?name=kvantum-qt5) to change the
default theme:

```bash
sudo apt-get install qt5-style-kvantum
```
