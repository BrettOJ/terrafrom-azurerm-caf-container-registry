variable "resource_group_name" {
  description = "resource group name"
}
variable "location" {
  description = "location of the variable group"
}
variable "sku" {
  
}
variable "container_registry_name" {
  
}
variable "admin_enabled" {
  
}



container_group_name = "bojtestcontainergroup"
resource_group_name = "containergroup-rg"
location = "southeastasia"
dns_name_label = "bojtestcontainergroup"
os_type = "linux"

container_name = "mycont01"
container_image = "azurehostedagent"
container_cpu = 0.5
container_memory = 1.5
container_port = 80




resource "azurerm_resource_group" "aci_rg" {
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_container_registry" "acr" {
  name                     = "containerRegistry1"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  sku                      = "Premium"
  admin_enabled            = false
}

resource "azurerm_container_group" "containergroup" {
  name                  = var.container_group_name
  resource_group_name   = azurerm_resource_group.aci_rg.name
  location              = azurerm_resource_group.aci_rg.location
  ip_address_type       = "public"
  dns_name_label        = var.dns_name_label
  os_type               = var.os_type

  container {
      name      = var.container_name
      image     = var.container_image
      cpu       = var.container_cpu
      memory    = var.container_memory
      port      = var.container_port
}
}