# #!/bin/bash

# #To install the latest Enterprise edition:

# sudo -i
#  apt-get install -y apt-transport-https
#  apt-get install -y software-properties-common wget
#  wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

# #Add this repository for stable releases:

# echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
#  apt-get update
#  apt-get install grafana-enterprise -y

# ########## Install Azure Data Explorer Plugin ############

#  grafana-cli plugins install grafana-azure-data-explorer-datasource


# #start automatically using systemd

#  /bin/systemctl daemon-reload
#  /bin/systemctl enable grafana-server



# ######### Enable Azure Managed Identity ##########

#  managed_identity_enabled = true 

# #start grafana-server

#  /bin/systemctl start grafana-server

sudu -i && apt-get install -y apt-transport-https && apt-get install -y software-properties-common wget && wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add - && echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list && apt-get update && apt-get install grafana-enterprise -y && grafana-cli plugins install grafana-azure-data-explorer-datasource && /bin/systemctl daemon-reload && /bin/systemctl enable grafana-server && /bin/systemctl start grafana-server

