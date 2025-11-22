variable "nics" {
  description = "network interface bann raha hai"
  type = map(object({
    nic-name            = string
    nic-location        = string
    resource_group_name = string
    subnet-name         = string
    vnet-name           = string
    pip_name           = string

    ip_configurations = list(object({
      ipconfigname                  = string
      subnet_ids                    = string
      private_ip_address_allocation = string
    }))
  }))
}
