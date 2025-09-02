# gist: Its a shell file for installing apps in ubuntu. For more info, check the README.md file
# -------------------------------------------------------------------------------------------

echo -e "\n------------------------------------------------------------"
echo "installing vlc:"
echo "------------------------------------------------------------"
sudo apt-get install vlc

echo -e "\n------------------------------------------------------------"
echo "installing pip:"
echo "------------------------------------------------------------"
sudo apt-get install pip

echo -e "\n------------------------------------------------------------"
echo "installing snap:"
echo "------------------------------------------------------------"
sudo apt-get install snap

echo -e "\n------------------------------------------------------------"
echo "installing python3:"
echo "------------------------------------------------------------"
sudo apt-get install python3

echo -e "\n------------------------------------------------------------"
echo "installing google-chrome:"
echo "------------------------------------------------------------"
echo -e "\033[1mdownloading debian file:\033[0m"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo -e "\n\033[1minstalling chrome from debian:\033[0m"
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo -e "\n\033[1mremoving debian file:\033[0m"
rm google-chrome-stable_current_amd64.deb

echo -e "\n------------------------------------------------------------"
echo "installing gcc:"
echo "------------------------------------------------------------"
sudo apt-get install gcc

echo -e "\n------------------------------------------------------------"
echo "installing vim:"
echo "------------------------------------------------------------"
sudo apt-get install vim

echo -e "\n------------------------------------------------------------"
echo "installing drawio:"
echo "------------------------------------------------------------"
sudo snap install drawio

echo -e "\n------------------------------------------------------------"
echo "installing git:"
echo "------------------------------------------------------------"
sudo apt-get install git

echo -e "\n------------------------------------------------------------"
echo "installing dropbox:"
echo "------------------------------------------------------------"
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

echo -e "\n------------------------------------------------------------"
echo "installing i3:"
echo "------------------------------------------------------------"
sudo apt install i3-wm

echo -e "\n------------------------------------------------------------"
echo "installing ranger:"
echo "------------------------------------------------------------"
sudo apt install ranger

echo -e "\n------------------------------------------------------------"
echo "installing tex:"
echo "------------------------------------------------------------"
echo -e "\n\033[1minstalling texlive-full:\033[0m"
sudo apt-get install texlive-full
echo -e "\n\033[1minstalling texstudio:\033[0m"
sudo apt-get install texstudio

echo -e "\n------------------------------------------------------------"
echo "installing zathura, vim-like pdf editor:"
echo "------------------------------------------------------------"
sudo apt-get install zathura

echo -e "\n------------------------------------------------------------"
echo "installing light, needed for brightness control in i3:"
echo "------------------------------------------------------------"
sudo apt-get install light

echo -e "\n------------------------------------------------------------"
echo "installing scrot, needed for blurring image in i3lock:"
echo "------------------------------------------------------------"
sudo apt-get install scrot

