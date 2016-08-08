#!/usr/bin/env sh
set -e

# Enable the NSLS-II EPICS Debian package repo
curl http://epics.nsls2.bnl.gov/debian/repo-key.pub | sudo apt-key add -
echo "deb http://epics.nsls2.bnl.gov/debian/ wheezy main contrib" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://epics.nsls2.bnl.gov/debian/ wheezy main contrib" | sudo tee -a /etc/apt/sources.list

# Install packages: EPICS Base
sudo apt-get update -qq
sudo apt-get install epics-dev