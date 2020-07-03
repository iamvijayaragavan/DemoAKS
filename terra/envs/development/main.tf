module "resource_group_demoaks" {
    source                = "../../modules/resource_groups"
    resource_group_name   = var.resource_group_name
    location              = var.location
    tags                  = var.tags
}


module "acr_registry_demo" {
    source                = "../../modules/aks_registry"
    name                  =  var.acr_name
    resource_group_name   = var.resource_group_name
    location              = var.location
    tags                  = var.tags
}

module "aks_cluster_demo" {
    source                = "../../modules/aks_cluster"
    name                  =  var.aks_name
    resource_group_name   = var.resource_group_name
    location              = var.location
    tags                  = var.tags
    dns_prefix            = var.dns_prefix
}