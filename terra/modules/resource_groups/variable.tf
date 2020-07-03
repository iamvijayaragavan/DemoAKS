variable "resource_group_name" {
    description = "The name of resource group_name will be created"
}

variable "location" {
    description = "The location where resource will be created"
}

variable "tags" {
    description = "Tags"
    type        = map(string)
}