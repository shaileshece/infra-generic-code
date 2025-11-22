rgss = {
  rgs1 = {
    rg-name     = "danialrg1"
    rg-location = "centralindia"
    managed_by  = "shaileshrules"
    tags = {
      envs  = "dev"
      owner = "westerngroup"
    }
  }
}
# stgg = {
#   stg1 = {
#     name                     = "danialsgt4321"
#     location                 = "centralindia"
#     resource_group_name      = "danialrg1"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#   }
# }
# containername = {
#   containame1 = {
#      name = "danialcontainer"
#     storage_account_id = ""
#     container_access_type = "blob"

#   }
# }
vnets = {
  vnet1 = {
    vnet-name           = "danial-vnet"
    vnet-location       = "centralindia"
    resource_group_name = "danialrg1"
    address_space       = ["10.0.0.0/16"]
  }
}
subnets = {
  subnet1 = {
    subnet-name          = "danialsubnet"
    resource_group_name  = "danialrg1"
    virtual_network_name = "danial-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
nics = {
  nic1 = {
    nic-name            = "danialnic"
    nic-location        = "centralindia"
    resource_group_name = "danialrg1"
    subnet-name         = "danialsubnet"
    vnet-name           = "danial-vnet"
    pip_name          = "danial-pip"
    ip_configurations = [{
      ipconfigname                  = "internal"
      private_ip_address_allocation = "Dynamic"
      subnet_ids                    = "subnet1"
      }
    ]
  }
}
pips = {
  pip1 = {
    pip_name               = "danial-pip"
    pip-location        = "centralindia"
    resource_group_name = "danialrg1"
    allocation_method   = "Static"
  }
}
# vms = {
#   vm1 = {
#      name                            = "danial-vm"
#   location                        = "centralindia"
#   resource_group_name             = "danialrg1"
#   admin_username                  = "shailesh123"
#   admin_password                  = "shailesh@123"
#   disable_password_authentication = "False"
#   }
# }
