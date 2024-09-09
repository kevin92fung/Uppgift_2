#!/bin/bash

# Variables
resourceGroup="uppgift2"
location="northeurope"
ARMTemplate="Template.json"
sshKeyPath="$HOME/.ssh/id_rsa.pub"
CustomData_WebApp="@Cloud-init-Webapp.yaml"
CustomData_ReversedProxy="@Cloud-init-RF.sh"

# Create resource group
az group create --name "$resourceGroup" --location "$location"

# Deploy ARM template
az deployment group create \
    --resource-group "$resourceGroup" \
    --template-file "$ARMTemplate" \
    --parameters sshPublicKey="$(cat $sshKeyPath)" \
    --parameters CustomData-WebApp="$CustomData_WebApp" \
    --parameters CustomData-ReversedProxy="$CustomData_ReversedProxy"