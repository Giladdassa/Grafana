#!/bin/bash

#To install the latest Enterprise edition:

sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

#Add this repository for stable releases:

echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update
sudo apt-get install grafana-enterprise -y



#start automatically using systemd

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable grafana-server

#start grafana-server

sudo /bin/systemctl start grafana-server
