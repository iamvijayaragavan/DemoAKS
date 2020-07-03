resource "azurerm_key_vault" current {
    name                = var.key_vault_name
    location            = var.location
    resource_group_name = var.resource_group_name
    tenant_id           = "b4f4cfb9-6268-48f6-8f8a-2e8891d5add1"
    tags                = var.tags
}

resource "azurerm_key_vault_key" "current" {
    name                = var.azurerm_key_vault_key_name
    key_vault_id        = azurerm_key_vault.current.id
    key_type            = "RSA"
    key_size            = "2048"

    key_opts = [
        "descrypt",
        "encrypt",
        "sign",
        "unwrapKey",
        "verify",
        "wrapKey"
    ]
} 

resource "null_resources" "key-vault-enable-soft-delete" {
    provisioner "local-exec" {
        command = "az resource update --id $(az keyvault show --name ${azurerm_key_vault.current.name}" -o tsv | awk '{print $1}') --set properties.enableSoftDelete=true"
    }
}

resource "azurerm_management_lock" "key-vault" {
    name       = "${azurerm_key_vault.current.name}-lock"
    scope      = azurerm_key_vault.current.id
    lock_level = "CanNotDelete"
    notes      = "Locked because for do not delete keys" 
}