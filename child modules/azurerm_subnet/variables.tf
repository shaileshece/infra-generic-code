variable "subnets" {
  description = "subnet banne ka code"
  type = map(object({
    subnet-name          = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}
