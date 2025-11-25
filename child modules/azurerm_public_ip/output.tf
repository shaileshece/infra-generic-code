output "pip_id" {
    value = {
        for k, v in azurerm_public_ip.pip-lev1 : k => v.id
    }
}