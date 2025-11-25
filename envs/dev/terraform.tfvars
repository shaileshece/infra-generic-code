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
    ip_configurations = [{
      ipconfigname                  = "internal"
      private_ip_address_allocation = "Dynamic"
      subnet_key = "subnet1"
      public_ip_key = "pip1"
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