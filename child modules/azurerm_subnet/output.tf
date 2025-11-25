output "subnet_id_op" {
    value = {
        for k, v in azurerm_subnet.subnet-lev1 : k => v.id   
    }
}