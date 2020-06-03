#Configure replication on a storage account

#Variables
$location = "canadacentral"
$resourceGroup = "AZ104Demo_ps"
$storageAccountName = "az104demops"

#Set Replication
Set-AzStorageAccount -ResourceGroupName $resourceGroup `
    -AccountName $StorageAccountName `
    -SkuName "Standard_GRS"
