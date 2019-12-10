variable "resource_group_name" {
  description = "(Required) Name of the resource group to deploy the activity logs."
}
variable "location" {
  description = "(Required) Define the region where the resources will be created."
}
variable "tags" {
  description = "(Required) Tags for the logs repositories to be created "
 }
variable "prefix" {
  description = "(Optional) You can use a prefix to add to the list of resource groups you want to create"
}
variable "sku" {
  description = "Sku of the container registry"
}
variable "container_registry_name" {
  description = "Name of the container registry"
}
variable "admin_enabled" {
}
