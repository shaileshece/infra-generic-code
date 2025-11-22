variable "vnets" {
  description = "vnet bann raha hai"
  type = map(object({
    vnet-name           = string
    vnet-location       = string
    resource_group_name = string
    address_space       = list(string)
  }))
}
