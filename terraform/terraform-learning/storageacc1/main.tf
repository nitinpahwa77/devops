terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "firstrg" {
    name = "resourcegroup1"
    location = "eastus2"
}

resource "azurerm_resource_group" "secondrg" {
  name = "resourcegroup2"
  location = "eastus2"
}

resource "azurerm_storage_account" "storageaccountone" {
  name = "storageacc23456"
  resource_group_name = azurerm_resource_group.firstrg.name
  location = azurerm_resource_group.firstrg.location
  account_tier = "Standard"
  account_replication_type = "GRS"
  enable_https_traffic_only = false
}

resource "azurerm_storage_account" "storageaccounttwo" {
  name = "storageacc12345"
  resource_group_name = azurerm_resource_group.secondrg.name
  location = azurerm_resource_group.secondrg.location
  account_tier = "Standard"
  account_replication_type = "GRS"
  enable_https_traffic_only = false
}