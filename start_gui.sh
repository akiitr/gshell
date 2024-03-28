# Steps for starting GUI interface with required software

#Chrome Remote Desktop:
rm -rf chrome-remote-desktop_current_amd64.deb
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt-get install --assume-yes ./chrome-remote-desktop_current_amd64.deb

Google Chrome browser:
rm -rf google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install --assume-yes ./google-chrome-stable_current_amd64.deb

#utility packages
sudo apt-get install --assume-yes vim-gtk3
sudo apt-get install --assume-yes gnome-terminal

#XFCE Desktop Lite Environment:
sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
 
#Start the GUI session
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
sudo systemctl disable lightdm.service
#To start the chrome connection (update: you need to get that for every run from chrome remote desktop from setup via SSH by selecting as debian
#DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AeaYSHDr0YbJrJbOUPUY1fheM3OuNK2P_qFM57fL0fWu7GdvKrFpfcLs10sU89wFV7GgBw" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)

#Remove the installed pkgs
rm -rf chrome-remote-desktop_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb
