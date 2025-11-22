variable "rgss" {
    description = "rg banne ka variable hai"
    type = map(object({
    rg-name = string
    rg-location = string
    managed_by = string
    tags = map(string)
    }))
}
# variable "stgg" {
#   description = "storage account banne ka code"
#   type = map(object({
#     name                     = string
#     location                 = string
#     resource_group_name      = string
#     account_tier             = string
#     account_replication_type = string
#     }
#   ))
# }
# variable "containername" {
#     description = "container bannne ka code"
#     type = map(object({
#          name = string
#     storage_account_id = string
#     container_access_type = string
#     }))
# }
variable "vnets" {
  description = "vnet bann raha hai"
  type = map(object({
    vnet-name           = string
    vnet-location       = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "subnets" {
  description = "subnet banne ka code"
  type = map(object({
    subnet-name          = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}
variable "pips" {
  type = map(object({
    pip_name               = string
    resource_group_name = string
    pip-location            = string
    allocation_method   = string
  }))
}
variable "nics" {
  description = "network interface bann raha hai"
  type = map(object({
    nic-name            = string
    nic-location        = string
    resource_group_name = string
    subnet-name         = string
    vnet-name           = string
    pip_name          = string

    ip_configurations = list(object({
      ipconfigname                  = string
      subnet_ids                    = string
      private_ip_address_allocation = string
    }))
  }))
}
# variable "vms" {
#   description = "linux vm banne ka code"
#   type = map(object({
#     name                            = string
#     location                        = string
#     resource_group_name             = string
#     admin_username                  = string
#     admin_password                  = string
#     disable_password_authentication = string
#     size                            = string
#     network_interface_ids           = list(string)
#   }))
# }
