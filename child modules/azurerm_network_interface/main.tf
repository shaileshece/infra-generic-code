resource "azurerm_network_interface" "nic1" {
  for_each            = var.nics
  name                = each.value.nic-name
  location            = each.value.nic-location
  resource_group_name = each.value.resource_group_name

  dynamic "ip_configuration" {
    for_each = each.value.ip_configurations
    content {
      name                          = ip_configuration.value.ipconfigname
      subnet_id                    = var.subnet_ids[ip_configuration.value.subnet_ids]
      private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
      public_ip_address_id          = data.azurerm_public_ip.pip1[each.key].id
    }
  }
}
data "azurerm_subnet" "data-subnet" {
  for_each = var.nics
name = each.value.subnet-name
virtual_network_name = each.value.vnet-name
resource_group_name = each.value.resource_group_name
}

data "azurerm_public_ip" "pip1"{
  for_each = var.nics
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}
variable "subnet_ids" {
  description = "subnet id for network interface"
  type        = map(string)
}

