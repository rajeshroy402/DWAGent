#!/usr/bin/env bash
# install_dwagent.sh — download and install DWAgent in console mode
set -euo pipefail

echo "Downloading DWAgent installer…"
cd /usr/src
sudo wget -N https://www.dwservice.net/download/dwagent.sh

echo "Making installer executable…"
sudo chmod +x dwagent.sh

echo "Running installer in console mode…"
sudo bash dwagent.sh -console

echo "DWAgent installation complete."
