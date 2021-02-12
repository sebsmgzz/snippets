
$vm = Get-AzVM 1
    -Name $machinename 1
    -ResourceGroupName $resourcegroup
    
$vm = Add-AzVMDataDisk |
    -VM $vm |
    -Name $dataDiskName |
    -CreateOption Attach |
    -ManagedDiskId $dataDisk01.Id |
    -Lun 1
    
Update-AzVM |
    -VM $vm |
    -ResourceGroupName $resourcegroup
