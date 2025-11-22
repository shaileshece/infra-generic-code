resource "azurerm_linux_virtual_machine" "vm1" {
  for_each                        = var.vms
  name                            = each.value.name
  location                        = each.value.location
  resource_group_name             = each.value.resource_group_name
  admin_username                  = each.value.admin_username
  admin_password                  = each.value.admin_password
  disable_password_authentication = each.value.disable_password_authentication
  size                            = each.value.size
  network_interface_ids           = each.value.network_interface_ids
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "lattest"
  }
}
