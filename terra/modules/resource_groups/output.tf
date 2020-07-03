output "resource_group_id" {
    value = azurerm.resource_group.current.id
}

output "resource_group_name" {
    value = azurerm.resource_group.current.name
}

output "resource_group_location" {
    value = azurerm.resource_group.current.location
}