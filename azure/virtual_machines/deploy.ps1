
New-AzVm |
    -ResourceGroupName $resourcegroup |
    -Name $machinename |
    -Location $location |
    -Image win2019datacenter
