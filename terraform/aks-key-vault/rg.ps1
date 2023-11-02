# Create Resource Group
#az group create -n cicdrg -l eastus2
 
# Create Storage Account
#az storage account create -n cicdrgsaccount3421 -g cicdrg -l eastus2 --sku Standard_LRS
 
# Create Storage Account Container
#az storage container create -n cicdrgsacont  --account-name cicdrgsaccount3421 


az group create --location  northcentralus --resource-group  testrgformyletsautscripts
az storage account create --name testsa1234cdsfdss --resource-group testrgformyletsautscripts

# $sp = az ad sp create-for-rbac --name "sp-hello-azure-tf" --role Contributor --scopes /subscriptions/bd192d82-105f-409d-8bd6-bd93e768a69b --sdk-auth



# $rg = az group create --location  northcentralus --resource-group  testrgformyletsautscripts
# $SA = az storage account create --name testsa1234cdsfds --resource-group testrgformyletsautscript

# $container = az storage container create --name terraform-state --account-name sayhellocicd


az ad sp create-for-rbac --name "sp-hello-azure-tf" --role Contributor --scopes /subscriptions/edb42159-c288-4e10-aea0-2f403be9a8fb --sdk-auth