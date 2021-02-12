
$resourceGroup = "azureDemo"
$vmName = "linux_vm"
$settingsName = "install_nginx_config.json"

az vm extension set \
--resource-group $resourceGroup \
--vm-name $vmName \
--name customScript \
--publisher Microsoft.Azure.Extensions \
--settings $settingsName
