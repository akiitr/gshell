## To be sourced when wsl messed up and you have to do respawn it##
## remove old ubuntu from powershell
# wsl --list (to list all wsl)
# wsl --unregister Ubuntu-22.04 (to delete)
# wsl.exe --install Ubuntu-22.04 (to reinstall)


# To correct the internet issue
sudo rm /etc/resolv.conf
sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'
sudo bash -c 'echo "[network]" > /etc/wsl.conf'
sudo bash -c 'echo "generateResolvConf = false" >> /etc/wsl.conf'
sudo chattr +i /etc/resolv.conf

# update the env
yes | sudo apt update
yes | sudo apt upgrade

# installing github cli client
yes | sudo apt install gh
#create dir for git repos
cd ~
mkdir git
cd git
#clone the required repos
git clone https://github.com/akiitr/gshell.git
git clone https://github.com/akiitr/python.git

git config --global user.email "akumar14@ec.iitr.ac.in"
git config --global user.name "akiitr"
echo " starting the github auth login choose and connect"
gh auth login

# link the alias and vimrc
cd ~
ln -s ~/git/gshell/bash_aliases .bash_aliases
ln -s ~/git/gshell/vimrc .vimrc
source ~/.bashrc

