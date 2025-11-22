resource "azurerm_resource_group" "rg1" {
    for_each = var.rgss
    name = each.value.rg-name
    location = each.value.rg-location
    managed_by = each.value.managed_by
    tags = each.value.tags
}