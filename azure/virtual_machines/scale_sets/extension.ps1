$config = @{
    "fileUris" = (,"https://webstorelog1000.blob.core.windows.net/script/install.ps1");
    "commandToExecute" = "powershell -ExecutionPolicy Unrestricted -File install.ps1"
}
    
$set = Get-AzVmss -ResourceGroupName "test-grp" -VMScaleSetName "demoscaleset"
$set = Add-AzVmssExtension -VirtualMachineScaleSet $set -Name "customScript" -Publisher "Microsoft.Compute" -Type "CustomScriptExtension" -TypeHandlerVersion 1.9 -Setting $config
Update-AzVmss -ResourceGroupName "test-grp" -Name "demoscaleset" -VirtualMachineScaleSet $set