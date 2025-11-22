variable "pips" {
  type = map(object({
    pip_name                = string
    resource_group_name = string
    pip-location            = string
    allocation_method   = string
  }))
}
