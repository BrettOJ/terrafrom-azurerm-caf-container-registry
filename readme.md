
# Creates an Azure container registry

creates a container registry in the specified region.

Reference the module to a specific version (recommended):

```hcl
module "container_registry" {
    source  = "aztfmod/caf-container-registry/azurerm"
    version = "0.0.1"
    resource_group_name      = var.resource_group_name
    location                 = var.location
    name                     = var.container_registry_name
    sku                      = var.sku
    admin_enabled            = var.admin_enabled

}
```

Or get the latest version

```hcl
module "resource_groups" {
    source                  = "git://github.com/aztfmod/container_registry.git?ref=latest"
    resource_group_name      = var.resource_group_name
    location                 = var.location
    name                     = var.container_registry_name
    sku                      = var.sku
    admin_enabled            = var.admin_enabled
}
```

# Parameters

## resource_groups

(Required) Object that describes the resource groups to be created with their geo.
Global group of tags will be added to all RG, specific tags can be added per RG.

```hcl
variable "container_registry_name" {
  description = "Name of the container registry"
}
```
 
```hcl

variable "admin_enabled" {
  
}
```

```hcl
variable "location" {
  description = "location of the variable group"
}

```

```hcl
variable "sku" {
  description = "Sku of the container registry"
}
```

## prefix

(Optional) You can use a prefix to add to the list of resource groups you want to create

```hcl
variable "prefix" {
    description = "(Optional) You can use a prefix to add to the list of resource groups you want to create"
}
```

Example

```hcl
locals {
    prefix = "${random_string.prefix.result}-"
}

resource "random_string" "prefix" {
    length  = 4
    upper   = false
    special = false
}
```

# Output

## object

Returns the full set of created resource groups as a map, as follows:

```hcl







```
