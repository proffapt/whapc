# WHAPC - Wireless Headset Audio Profile Controller

<!-- PROJECT SHIELDS -->
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

  <p align="center">
    <a href="https://github.com/proffapt/whapc/issues">Report Bug</a>
    ·
    <a href="https://github.com/proffapt/whapc/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#features">Features</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

I had to manage my profiles using the gui tool, had to connect disconnect, and change profiles while listening to song and when i had to call, all of this needed
a separate tool to implement and several commands which needed human interaction, that's exactly where this script will come in handy it reduced human interaction 
to the point of execution of command and put all of those things 'I USED' into one place, you want something else? Fork it or send a pull request so that i can
add this into the original script.

<p align="right">(<a href="#top">back to top</a>)</p>

### Built With

* [Bash Script](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

I will be illustrating you on how to setup the tool and what features it has in the next few sections.

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/proffapt/whapc.git
   ```
2. Make the scripts executable
   ```sh
   cd whapc 
   chmod +x ./whapc ./setup.sh
   ```
3. Executing the setup script
   ```sh
   ./setup.sh
   ```
   Aliter:
   Install following dependencies according to your package manager, if the install script fails.
   `bluez`, `libpulse` and `pulseaudio`.
   Along with installing the above mentioned dependencies, it adds the script path into the PATH env variable (obviously after asking you.. duhh).
   Currently supported shell types are `bash`, `fish` and `zsh`.
   
4. Run the tool for first time using, and learn the usage on the go

   ```sh
   ./whapc -h
   ```
   And follow as the screen instructs, i.e. add the name for bluetooth device and mac-address for it (This will be a one time task)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- FEATURES -->
## Features

- [ ] Connecting/Disconnecting the device.
- [ ] Changing the audio profile.
- [ ] Changing the state of smart-switch

See the [open issues](https://github.com/proffapt/whapc/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage

Here are a few use cases of the script with currect set of features:

1. Connecting/Disconnecting the device:

   ```sh
   whapc connect
   whapc disconnect
   ```
   
2. Changing audio profiles:

   ```sh
   whapc -p ad2p // music profile
   whapc -p hsp // headset profile
   whapc -p hfp // handsfree profile
   whapc -p off 
   ```

3. Changing the state of smart-switch:

    ```sh
    whapc -s on
    whapc -s off
    ```

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Your Name - [@proffapt](https://twitter.com/proffapt) - proffapt@protonmail.com

Project Link: [https://github.com/proffapt/whapc](https://github.com/proffapt/whapc)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS -->
[stars-shield]: https://img.shields.io/github/stars/proffapt/whapc.svg?style=for-the-badge
[stars-url]: https://github.com/proffapt/whapc/stargazers
[issues-shield]: https://img.shields.io/github/issues/proffapt/whapc.svg?style=for-the-badge
[issues-url]: https://github.com/proffapt/whapc/issues
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/proffapt