## Script to automate the process of making sure that all the dependencies required by this tool are satisfied.

## Colors !

red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
green_bg="\e[0;102m${expand_bg}"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"

REQ_MODULES="libpulse pulseaudio bluez"

echo  
echo -e "Allowed distro flavors are: [Debian, Arch, Fedora, openSUSE, Gentoo]"
read -p "$(echo -e "${white}[*]${reset} ${blue}Choose your distro flavor: ${reset}")" distro

if [[ "$distro" == "Debian" ]]; then

        sudo apt update
        sudo apt install -y $REQ_MODULES

elif [[ "$distro" == "Arch" ]]; then
        
        sudo pacman -Syyy
        sudo pacman -Sy $REQ_MODULES

elif [[ "$distro" == "Fedora" ]]; then

        sudo dnf update
        sudo dnf install -y $REQ_MODULES

elif [[ "$distro" == "openSUSE" ]]; then

        sudo zypper refresh
        sudo zypper in -y $REQ_MODULES

elif [[ "$distro" == "Gentoo" ]]; then
        
        sudo emerge --update --deep world
        sudo emerge $REQ_MODULES
        
else
        echo -e "${red}${bold}Exitting the tool. ${reset}${bold}Unsupported distro type specified.${reset}"
fi