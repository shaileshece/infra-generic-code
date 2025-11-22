variable "vms" {
  description = "linux vm banne ka code"
  type = map(object({
    name                            = string
    location                        = string
    resource_group_name             = string
    admin_username                  = string
    admin_password                  = string
    disable_password_authentication = string
    size                            = string
    network_interface_ids           = list(string)
  }))
}
