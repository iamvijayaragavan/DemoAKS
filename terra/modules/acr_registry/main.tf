resource "azurerm_container_registry" "acr" {
  name                     = var.acr_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  sku                      = var.sku_type
  admin_enabled            = false
  georeplication_locations = ["East US", "West Europe"]
}
