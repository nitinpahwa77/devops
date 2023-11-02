resource "azurerm_resource_group" "rgg11" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks11" {
  name = var.cluster_name
  location = var.location
  resource_group_name = azurerm_resource_group.rgg11.name

  dns_prefix = var.cluster_name

  default_node_pool {
    name = "system"
    node_count = 1
    vm_size = "standard_a2_v2"
    type = "VirtualMachineScaleSets"
    enable_auto_scaling = false
  }
  
  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin = "kubenet"
    }
}

module "keyvault" {
  source = "./modules-aks"
  name = var.keyvault_name
  resource_group_name = azurerm_resource_group.rgg11.name
  location = var.location

    access_policies = [
      {
        object_id = "13e54fd0-e102-401f-b566-c656070909fb"  # find it in the active directory
        certificate_permissions = [ "Get" ]
        key_permissions = [ "Get", "List" ]
        secret_permissions = [ "Get", "List", "Set" ]
        storage_permissions = [  ]


      },

      {
        object_id = azurerm_kubernetes_cluster.aks11.kubelet_identity[0].object_id
        certificate_permissions = ["Get"]
        key_permissions         = ["Get", "List"]
        secret_permissions      = ["Get", "List"]
        storage_permissions     = []
      }


    ]

}


