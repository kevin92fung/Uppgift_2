#!/bin/bash

# Create resource group
az group create --name "test" --location "northeurope"

# Create VM
az vm create \
    --resource-group test \
    --name DemoVM \
    --image Ubuntu2204 \
    --admin-username azureuser \
    --generate-ssh-keys \
    --size Standard_B1s

# Open port 22
az vm open-port \
  --resource-group test \
  --name DemoVM \
  --port 80
