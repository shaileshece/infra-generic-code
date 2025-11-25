resource "azurerm_public_ip" "pip-lev1" {
  for_each            = var.pips
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.pip-location
  allocation_method   = each.value.allocation_method
}
