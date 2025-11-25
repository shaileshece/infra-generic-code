resource "azurerm_network_interface" "nic1" {
  for_each            = var.nics
  name                = each.value.nic-name
  location            = each.value.nic-location
  resource_group_name = each.value.resource_group_name

  dynamic "ip_configuration" {
    for_each = each.value.ip_configurations
    content {
      name                          = ip_configuration.value.ipconfigname
      subnet_id                     = var.subnet_id_op[ip_configuration.value.subnet_key]
      private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
      public_ip_address_id          = var.pip_id[ip_configuration.value.public_ip_key]
    }
  }
}
