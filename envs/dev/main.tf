module "resource_group" {
  source = "../../child modules/azurerm_resource_group"
  rgss   = var.rgss
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../child modules/azurerm_virtual_network"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../child modules/azurerm_subnet"
  subnets    = var.subnets
}
module "network_interface" {
  depends_on = [module.virtual_network]
  source     = "../../child modules/azurerm_network_interface"
  nics       = var.nics
    subnet_ids= module.subnet.subnet_id
}
module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../child modules/azurerm_public_ip"
  pips       = var.pips
}
# module "linux_virtual_machine" {
#   source                = "../../child modules/azurerm_virtual_machine"
#   vms                   = var.vms
#   network_interface_ids = [module.network_interface.id["nic1"]]
# }
