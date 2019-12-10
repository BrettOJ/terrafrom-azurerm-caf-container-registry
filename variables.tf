variable "resource_group_name" {
  description = "(Required) Name of the resource group to deploy the activity logs."
}
variable "location" {
  description = "(Required) Define the region where the resources will be created."
}
variable "sku" {
  description = "Sku of the container registry"
}
variable "container_registry_name" {
  description = "Name of the container registry"
}
variable "admin_enabled" {
}
variable "tags" {
  
}

