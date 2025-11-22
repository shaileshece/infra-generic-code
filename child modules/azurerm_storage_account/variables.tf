variable "stgg" {
  description = "storage account banne ka code"
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
    }
  ))
}
variable "containername" {
    description = "container bannne ka code"
    type = map(object({
         name = string
    storage_account_id = string
    container_access_type = string
    }))
}