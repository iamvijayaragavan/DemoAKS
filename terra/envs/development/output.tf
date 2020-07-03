output "resource_group_demoaks" {
    value = module.resource_group_demoaks.resource_group_name
}

output "acr_registry_demo" {
    value = module.acr_registry_demo.acr_name
}

output "aks_cluster_demo" {
    value = module.aks_cluster_demo.aks_name
}