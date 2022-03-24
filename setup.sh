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

## Storing location to script and required dependencies

REQ_MODULES="libpulse pulseaudio bluez"
location=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

## Installing dependencies by choosing the distro

echo  
echo -e "Allowed distro flavors are: [Debian, Arch, Fedora, openSUSE, Gentoo, skip]"
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
        
elif [[ "$distro" == "skip" ]]; then

        break

else

        echo -e "${red}${bold}Aborting this step.${reset} ${bold}Unsupported distro type specified.${reset}"

fi

## Making the script executable from anywhere

echo
read -p "$(echo -e "${white}[*]${reset} ${blue}Do you want to add this script location to your path?${reset}${green}[y/n]: ${reset}")" iccha

if [[ "$iccha" == "y" ]]; then

        read -p "$(echo -e "${white}[*]${reset} ${blue}What's your shell type?${reset}${green}[bash, zsh, fish]: ${reset}")" SHELL_TYPE

        BASH_ENV_FILE=~/.profile
        ZSH_ENV_FILE=~/.zshenv
        FISH_ENV_FILE=

        if [[ "$SHELL_TYPE" == bash ]]; then

            if [[ ! -f "$BASH_ENV_FILE" ]]; then
                touch $BASH_ENV_FILE
            else
                echo "# Storing PATH variables modified by whapc script by @proffapt" >> $BASH_ENV_FILE
                echo "export PATH=$PATH:$location" >> $BASH_ENV_FILE
                echo "# Storing ends here." >> $BASH_ENV_FILE
            fi

            source $BASH_ENV_FILE

        elif [[ "$SHELL_TYPE" == zsh ]]; then

            if [[ ! -f "$ZSH_ENV_FILE" ]]; then
                touch $ZSH_ENV_FILE
            else
                echo "# Storing PATH variables modified by whapc script by @proffapt" >> $ZSH_ENV_FILE
                echo "export PATH=$PATH:$location" >> $ZSH_ENV_FILE
                echo "# Storing ends here." >> $ZSH_ENV_FILE
            fi

            source $ZSH_ENV_FILE            

        elif [[ "$SHELL_TYPE" == fish ]]; then

                set -U fish_user_paths /usr/local/bin $fish_user_paths
             
        else

            echo -e "${red}${bold}Aborting this step.${reset} ${bold}Unsupported shell type specified.${reset}"

        fi

elif [[ "$iccha" == "n" ]]; then

        echo -e "${red}${bold}Aborting this step and exitting tool.${reset} Since you chose no.${bold}${reset}"

else

        echo -e "${red}${bold}Exitting the tool.${reset} Wrong choice entered !${bold}${reset}"

fi