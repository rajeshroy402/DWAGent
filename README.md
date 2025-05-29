# dwagent-scripts

A pair of simple bash scripts to install and uninstall DWAgent (DWService) on Ubuntu/Debian-based systems (e.g. Jetson Nano).

## Contents

- **install_dwagent.sh**: Downloads and runs the DWAgent installer in console mode.  
- **uninstall_dwagent.sh**: Stops the DWAgent service, removes all files, purges any package installation, and cleans up user configs.

## Prerequisites

- Ubuntu/Debian based OS  
- `sudo` privileges  
- Internet access to download the installer

## Usage

1. Clone this repo to your device:  
   ```bash
   git clone https://github.com/<your-username>/dwagent-scripts.git
   cd dwagent-scripts
