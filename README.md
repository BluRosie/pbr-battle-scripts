# pbr-battle-scripts
## About
 A dump of the battle scripts in Pokémon Battle Revolution

## Creators
* [BluRose](https://github.com/BluRosie)

## Setup Instructions (Debian Linux)
1. Download and install Devkitpro using the downloads and instructions [**here**][DEVKITPRO].
2. In a Terminal window, run the following commands:
   * ```sudo apt-get install build-essential cmake python3-pip git automake```
   * ```pip3 install ndspy```
3. Continue to [Build Instructions](#build-instructions-all-platforms)


## Setup Instructions (macOS)
1. Download and install Devkitpro using the Mac download (.pkg) and instructions [**here**][DEVKITPRO].
2. If you don't have it already, install `brew` by running the following in Terminal: ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```
3. In a Terminal window, run the following commands:
   * ```xcode-select --install```
   * ```brew install python3```
   * ```brew install automake```
   * ```pip3 install ndspy```
4. Continue to [Build Instructions](#build-instructions-all-platforms)


## Setup Instructions (Windows)
1. Download and install [Microsoft .NET Framework](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net48). Choose the **Developer pack** option.
   * If you already have a different version of .NET Framework installed, you may use the newest one you have instead of downloading the version linked above.
2. In the search bar in the Start Menu, search for "environment variables", and click on "Edit the system environment variables". Wait for a new window to pop up.
   * Proceed by clicking on "Environment Variables..." in the bottom right of the window, then find "Path" in the bottom section of the new window that pops up. Press the "Edit" button on the bottom section of the window, then see below for further instructions.
     * In the new window, press "New", then "Browse". Navigate to "This PC", then "Local Disk", and then from there, go to "Windows/Microsoft .NET/Framework". Here, you will see all of the versions of .NET Framework that you have installed. Select the newest one by clicking on its name, then press the "OK" button. Now you just need to press "OK" on every Window you had open to get to this point to save your changes.
3. Open the Windows Command Prompt as Administrator (look up "Command Prompt" on your Start Menu, Right Click -> Run as Administrator). Once you have done that, execute the following command: ```dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all```
    * Once this process finishes, you will have to restart your PC by entering "Y"
4. Go to the Microsoft Store and search "Ubuntu 18.04 LTS". Go to its page in the store and click the blue "Get" button.
   * Once Ubuntu finishes installing, launch it from its page in the Microsoft Store so it can finish setting itself up.
   * Once Ubuntu finishes setting itself up, it will ask you to enter a username (in lowercase letters only) and password. After doing so, you can close Ubuntu.
5. Open the "Run" window by pressing the `Windows key` and `R` at the same time, then type in "wsl" and press Enter. This is how you should open WSL from now on.
6. In WSL, type in ```sudo apt update```, and after it finishes processing, type in ```sudo apt upgrade```. This will take a **QUITE** a while, so find something else to do in the meantime. These two commands together will update all of the packages that came pre-installed with Ubuntu.
   * At some point during the process, you'll be asked to confirm whether you want WSL to restart automatically during package updates. We'll select "Yes" and press Enter. The process will then proceed.
7. In WSL, run the following commands:
   * ```sudo apt-get install gcc git gdebi-core python3 python3-pip cmake automake```
      * You will be asked to confirm the installation, so press "y" followed by Enter to do so.
   * ```pip3 install ndspy```
8. Download Devkitpro for Linux (one of the .deb files), specifically the amd64 file, [**here**][DEVKITPRO]. The file should be kept in your Downloads folder.
9. In WSL, run the following commands and input your password if asked:
    * ```cd Downloads```
    * ```sudo gdebi devkitpro-pacman.amd64.deb```
10. Once the last process has finished, continue to [Build Instructions](#build-instructions-all-platforms)


## Build Instructions (All Platforms)

1. In Terminal/WSL, run ```cd pbr-battle-scripts```
2. In Terminal/WSL, run ```make build_tools```. This will compile the tools needed to build.
3. In Terminal/WSL, type `make`.
4. After the process completes, a new folder will appear in the `pbr-battle-scripts` folder named **output**.  This contains the narcs with the battle scripts.

# Credits
* [turtleisaac for template README from hg-engine](https://github.com/turtleisaac)
* [bgsamm for pbr narcs](https://github.com/bgsamm)
