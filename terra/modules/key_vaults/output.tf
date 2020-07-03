output "key_vault_id" {
    vaule = azurerm_key_vault.current.id
}

output "key_vault_rg_name" {
    vaule = azurerm_key_vault.current.resource_group_name
}

output "kv_name" {
    vaule = azurerm_key_vault.current.name
}

output "kv_location" {
    vaule = azurerm_key_vault.current.location
}