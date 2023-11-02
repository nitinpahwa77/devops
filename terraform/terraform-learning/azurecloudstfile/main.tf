resource "azurerm_resource_group" "rg1234" {
  name = var.rg_name
  location = var.rg_location
}

resource "azurerm_storage_account" "sa123455" {
  name = var.sa_name
  location = var.rg_location
  resource_group_name = var.rg_name
  account_tier = var.access_tier
  account_replication_type = "GRS"
}

