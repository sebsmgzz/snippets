#!/bin/bash

az vm create \
    --resource-group <RESOURCE_GROUP_NAME> \
    --name <VM_NAME> \
    --image win2019datacenter \
    --admin-username <ADMIN_USERNAME> \
    --admin-password <ADMIN_PASSWORD>
