data "azurerm_public_ip" "pip-block" {
  name                = "pip-01"
  resource_group_name = "dell-rg1"
}

data "azurerm_subnet" "subnet-block" {
  name                 = "subnet-07"
  virtual_network_name = "vnet-01"
  resource_group_name  = "dell-rg1"
}

data "azurerm_network_security_group" "nsg-block" {
  name                = "nsg-01"
  resource_group_name = "dell-rg1"
}
