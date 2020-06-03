#Create A Resource Group & Storage Account

#Variables
$location = "canadacentral"
$resourceGroup = "AZ104Demo_ps"
$storageAccountName = "az104demops"
$skuName = "Standard_LRS"

#Create a Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create the storage account.
New-AzStorageAccount -ResourceGroupName $resourceGroup `
  -Name $storageAccountName `
  -Location $location `
  -SkuName $skuName `
  -Kind StorageV2

#View Storage Account
Get-AzStorageAccount -ResourceGroupName $resourceGroup
