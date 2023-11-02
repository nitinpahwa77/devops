module "resource_group_1" {
  source = "./resourcegroup"
  azure_rg_name = "sgfjhsgusygf827t467"
  location = "eastus2"
}

module "resource_group_2" {
  source = "./resourcegroup"
  azure_rg_name = "slfbwuyrg32hjbwyfgu"
  location = "eastus2"
}

module "storage_account_1" {
  source = "./storageaccount"
  sa_name = "askgksgjagha"
  location = "eastus2"
  rg_name = module.resource_group_1.rg_name
  }

module "storage_account_2" {
  source = "./storageaccount"
  sa_name = "kajbfeyrqfjkqwr3"
  location = "eastus2"
  rg_name = module.resource_group_2.rg_name
}