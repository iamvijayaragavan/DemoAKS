data "azurerm_resource_group" current {
    name  = var.resource_group_name
}

resource "azurerm_kubernetes_cluster" "current" {
  name                = var.aks_name
  location            = data.azurerm_resource_group.current.location
  resource_group_name = data.azurerm_resource_group.current.name
  dns_prefix          = var.dns_prefix
  tags                = var.tags
  
  linux_profile {
    admin_username = var.ssh_admin_name

    ssh_key {
      key_data = var.ssh_key
    }
  }

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }
  
  agent_pool_profile {
    name            = "default"
    count           = "${var.agent_count}"
    vm_size         = "Standard_A0"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }


  identity {
    type = "SystemAssigned"
  }
  
}