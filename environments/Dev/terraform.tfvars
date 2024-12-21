rg = {
  rg1 = {
    name     = "dell-rg1"
    location = "west europe"
  }
}
vnet = {
  vnet1 = {
    name                = "vnet-01"
    location            = "west europe"
    resource_group_name = "dell-rg1"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet = {
    name                 = "subnet-07"
    resource_group_name  = "dell-rg1"
    virtual_network_name = "vnet-01"
    address_prefixes     = ["10.0.0.0/26"]
  }
}
nsg = {
  nsg = {
    name                = "nsg-01"
    location            = "west europe"
    resource_group_name = "dell-rg1"
  }
}
pip = {
  pip = {
    name                = "pip-01"
    resource_group_name = "dell-rg1"
    location            = "west europe"
    allocation_method   = "Static"
  }
}
nic = {
  nic = {
    name                = "nic-1"
    location            = "west europe"
    resource_group_name = "dell-rg1"
  }
}
vm = {
  vm = {
    name                = "vm-01"
    resource_group_name = "dell-rg1"
    location            = "west europe"
  }
}