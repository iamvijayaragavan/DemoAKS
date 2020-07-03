data "azurerm_resource_group" current {
    name  = var.resource_group_name
}

resource "azurerm_container_registry" "acr" {
  name                     = var.acr_name
  resource_group_name      = data.azurerm_resource_group.current.name
  location                 = data.azurerm_resource_group.current.location
  sku                      = var.sku_type
  admin_enabled            = false
  georeplication_locations = ["East US", "West Europe"]
}