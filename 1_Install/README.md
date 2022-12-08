
## 1. Download your ISO:
You can download the standard netinstall ISO from [Debian](https://www.debian.org/download), but you must take into account that if you want to configure it only using wifi, you will probably need a ISO with included non-free firmware, so you could take it from [here](https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/)
   
## 2. Install your ISO
No matter which iso you have chosen, start the installation normally, either graphical or non-graphical, but when you arrive to the Software selection section, be sure that the only marked option is "Standard System Utilities" (unless you need SSH or web server).
When iinstallation had finished, reboot, and be ready...
  
--> If you chose Standard ISO install or you have an ethernet connection, just skip step 3.
## 3. Network Config
Debian does not include NetworkManager by default like Arch. Instead, it uses
wpa_supplicant, which involves a somewhat more complex process.
First, login as root
Now enable and start wpa_supplicant:
```bash
systemctl enable wpa_supplicant
systemctl start wpa_supplicant
```
Then, run
```bash
ip a
```
And copy your wifi device name. It isn't "lo".
Run
```bash
ip link set %Your device name% up
```
And,
```bash
wpa_passphrase your-ESSID your-wifi-passphrase | tee -a /etc/wpa_supplicant/wpa_supplicant.conf
```
After that,
```bash
wpa_supplicant -B -c /etc/wpa_supplicant.conf -i %Your device name%
```
Then,
```bash
dhclient %Your device name%
```
Now your wireless interface has a private IP address, which can be shown with
```bash
ip addr show %Your device name%
```
Nice.. You are connected to internet via Wifi.

## 4. System Config
First of all
```bash
apt update && apt upgrade
```
Now,
```bash
apt install sudo xorg
```
Then, edit /etc/sudoers and be sure to leave sudo group line like that:
```bash
%sudo ALL=(ALL:ALL) ALL
```
After that,
```bash
usermod -aG sudo,video,audio %Your username%
```
Finally,
```bash
apt install network-manager
```
and,
```bash
systemctl enable NetworkManager
systemctl --now disable wpa_supplicant
```
Reboot:
```bash
reboot
```
That's all, you succesfully installed a basic vanilla Debian
