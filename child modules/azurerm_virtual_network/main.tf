resource "azurerm_virtual_network" "vnet1" {
    for_each = var.vnets
    name = each.value.vnet-name
location = each.value.vnet-location
resource_group_name = each.value.resource_group_name
address_space = each.value.address_space
}