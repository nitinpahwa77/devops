terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "sfrg"
        storage_account_name = "sfsa"
        container_name       = "containercloud"
        key                  = "dmpterraform.tfstate"
    }

}

provider "azurerm" {
  features {}
}