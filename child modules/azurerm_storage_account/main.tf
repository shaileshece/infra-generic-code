resource "azurerm_storage_account" "stg1" {
  for_each                 = var.stgg
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = each.value.resource_group_name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}
resource "azurerm_storage_container" "stgcont1" {
    name = each.value.containername
    storage_account_id = azurerm_storage_account.stg1.id
    container_access_type = each.value.container_access_type
}