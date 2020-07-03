variable "resource_group_name" {
    description  = "ACR Resource group name"
    type         = string
}

variable "location" {
    description    = "ACR Location"
}

variable "acr_name" {
    description = "Azure container registry name"
}

variable "sku_type" {
    description = "Type of SKU"
    default     = "Premium"
}