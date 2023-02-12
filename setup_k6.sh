#!/bin/bash
set -ex

sudo apt-get update
sudo -S apt-get install dirmngr --install-recommends
sudo -S apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/loadimpact/deb stable main" | sudo tee -a /etc/apt/sources.list
sudo -S apt-get update
sudo -S apt-get install k6
