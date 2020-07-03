variable "resource_group_name" {
    description  = "AKS Resource group name"
    type         = string
}

variable "location" {
    description    = "AKS Location"
}

variable "tags" {
    description   = "Tags"
    type          =  map(string)
}

variable "aks_name" {
    description = "AKS name"
}

variable "dns_prefix" {
    description = "DNS prefix name"
}

variable "node_count" {
    description = "Node pool count in AKS"
    default     = "2"
}

variable "vm_size" {
    description = "VM size"
    default     = "Standard_D2_v2"
}

variable "ssh_admin_name" {
    description  = " SSH Admin name"
    default      = "Azuresshadmin"
}

variable "ssh_key" {
    description = "SSH public key"
    default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDH5QuwoEjVrF0OUNGT/Ywp2l+905fPhVNgaPL94qkULjkHH2sNCgurYwQOWCn0+qXJ2iJuPwuvzWEtBOdq/6ePaWuaoBwPe54DxAlFU6EROTx5iJrekjKSJKpcAy1vnSQ9AD4G7A1oR+tPEZn249ZCY3xrJABg0rsFj63KRrrlkLrdsU+9rv0R3E0LeLQKx2eKHW1T8Fop2BnUtv7tR0nc/RTfxuvfh11jMqg2GVyKFpWUAjgjM2cqo6ULFshYZ7JSNG8pu3Os2gH3aFHYlwxkZWT8P6o50rzDR1Z6eX9iEENtUB1NbVhWGLU9EvabE8qb0ZdgXK9b0byIzq8NL9ZZ root@vjcentos"
}