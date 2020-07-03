variable "key_vault_name" {
    description = "Azure Key vault name"
    type        = string
}

variable "key_vault_key_name" {
    description  = "Azure Key vault Key name"
    type         = string
}

variable "location" {
    description    = "Vault Location"
}

variable "resource_group_name" {
    description  = "Vault Resource group name"
    type         = string
}

variable "tags" {
    description   = "Tags"
    type          =  map(string)
}