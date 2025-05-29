#!/usr/bin/env bash
# uninstall_dwagent.sh — completely remove DWAgent (DWService) from your system
set -euo pipefail

echo "####### This repository is managed by Rajesh Roy <rajeshroy402@gmail.com> #######>"

echo "Stopping DWAgent service (if running)…"
if [ -x /usr/share/dwagent/native/dwagsvc ]; then
  sudo /usr/share/dwagent/native/dwagsvc stop || true
  sudo /usr/share/dwagent/native/dwagsvc delete || true
fi

echo "Removing DWAgent files and configs…"
sudo rm -rf /usr/share/dwagent
sudo rm -f /etc/dwagent
sudo rm -f /etc/xdg/autostart/dwagent_systray.desktop

echo "Purging package (if installed via APT)…"
sudo apt-get purge -y --auto-remove dwagent || true

echo "Removing user settings…"
rm -rf "${HOME}/.dwservice"

echo "DWAgent has been fully uninstalled."
