##########################################
##       Creation of Resource group      #
##########################################

resource "azure_resource_group" "current" {
    name     = var.resource_group_name
    location = var. location
    tags     = var. tags
}