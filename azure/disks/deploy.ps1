
$resourcegroup = 'test-grp'
$machinename = 'demovm'
$location = 'North Europe'
$storageType = 'Standard_LRS'
$dataDiskName = 'newdisk01'
$dataDiskSize = 20
    
$datadiskConfig = New-AzDiskConfig |
    -SkuName $storageType |
    -Location $location |
    -CreateOption Empty |
    -DiskSizeGB $dataDiskSize
    
$dataDisk01 = New-AzDisk |
    -DiskName $dataDiskName |
    -Disk $datadiskConfig |
    -ResourceGroupName $resourcegroup
