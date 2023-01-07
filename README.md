<div id="top"></div>

> **Note** This repository has been archived simply because I lost interest in the project as I don't use linux anymore.

# WHAPC - Wireless Headset Audio Profile Controller

<!-- PROJECT SHIELDS -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
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
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

I had to manage my profiles using the gui tool, had to connect disconnect, and change profiles while listening to song and when i had to call, all of this needed
a separate tool to implement and several commands which needed human interaction, that's exactly where this script will come in handy it reduced human interaction 
to the point of execution of command and put all of those things 'I USED' into one place.

<p align="right">(<a href="#top">back to top</a>)</p>

### Built With

* [Bash Script](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

_To install and configure the project on your system locally, use suitable method:_

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

See the [open issues](https://github.com/proffapt/whapc/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage

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

<p>
📫 Arpit Bhardwaj ( aka proffapt ) -   

<a href="https://twitter.com/proffapt">
  <img align="center" alt="proffapt's Twitter " width="22px" src="https://raw.githubusercontent.com/edent/SuperTinyIcons/master/images/svg/twitter.svg" />
</a>
<a href="https://t.me/proffapt">
  <img align="center" alt="proffapt's Telegram" width="22px" src="https://raw.githubusercontent.com/edent/SuperTinyIcons/master/images/svg/telegram.svg" />
</a>
<a href="https://www.linkedin.com/in/proffapt/">
  <img align="center" alt="proffapt's LinkedIn" width="22px" src="https://raw.githubusercontent.com/edent/SuperTinyIcons/master/images/svg/linkedin.svg" />
</a> 
<a href="mailto:proffapt@pm.me">
  <img align="center" alt="proffapt's mail" width="22px" src="https://raw.githubusercontent.com/edent/SuperTinyIcons/master/images/svg/mail.svg" />
</a> 
<a href="https://cybernity.group">
  <img align="center" alt="proffapt's forum for cybernity" width="22px" src="https://cybernity.group/uploads/default/original/1X/a8338f86bbbedd39701c85d5f32cf3d817c04c27.png" />
</a> 
</p>

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Choose an Open Source License](https://choosealicense.com)
* [Img Shields](https://shields.io)

<p align="right">(<a href="#top">back to top</a>)</p>

## Miscelleneous

Do consider looking at other paradigms of this documentation
  - [License used](LICENSE.txt)
  - [Code Of Conduct](CODE_OF_CONDUCT.md)
  - [How to contribute?](CONTRIBUTING.md)

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/proffapt/whapc.svg?style=for-the-badge
[contributors-url]: https://github.com/proffapt/whapc/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/proffapt/whapc.svg?style=for-the-badge
[forks-url]: https://github.com/proffapt/whapc/network/members
[stars-shield]: https://img.shields.io/github/stars/proffapt/whapc.svg?style=for-the-badge
[stars-url]: https://github.com/proffapt/whapc/stargazers
[issues-shield]: https://img.shields.io/github/issues/proffapt/whapc.svg?style=for-the-badge
[issues-url]: https://github.com/proffapt/whapc/issues
[license-shield]: https://img.shields.io/github/license/proffapt/whapc.svg?style=for-the-badge
[license-url]: https://github.com/proffapt/whpac/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/proffapt
