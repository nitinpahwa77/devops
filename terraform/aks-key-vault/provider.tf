
provider "azurerm" {
  features {}
}

terraform {
  cloud {
    organization = "nitinpahwadevops"

    workspaces {
      name = "aks-cluster-workspace"
    }
  }
}