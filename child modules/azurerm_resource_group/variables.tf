variable "rgss" {
    description = "rg banne ka variable hai"
    type = map(object({
    rg-name = string
    rg-location = string
    managed_by = string
    tags = map(string)
    }))
}