resource "azurerm_resource_group" "resourcegroup12" {
  name = var.rg_name
  location = var.rg_location
}

resource "azurerm_storage_account" "storageaccount23" {
  name = var.sa_name
  location = var.rg_location
  resource_group_name = azurerm_resource_group.resourcegroup12.name
  account_tier = var.access_tier
  account_replication_type = "GRS"
}