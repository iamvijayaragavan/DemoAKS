variable "resource_group_name" {
    description = "Resource group name will be provided"
}

variable "location" {
    description = "location of the resources will be provided"
}

variable "tags" {
    description = "Tags"
    type        = map(string)
}

variable "acr_name" {
    description = "Azure Container Registry Name"
}

variable "aks_name" {
    description = "Azure Kubernetes Cluster name"
}

variable "dns_prefix" {
    description = "AKS DNS prefix name will be provided"
}