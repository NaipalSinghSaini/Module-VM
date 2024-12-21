resource "azurerm_network_interface" "nic-block" {
  for_each = var.nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet-block.id
    private_ip_address_allocation = "Dynamic"

public_ip_address_id = data.azurerm_public_ip.pip-block.id
  }
  
}

resource "azurerm_network_interface_security_group_association" "association-block" {
for_each = var.nic
  network_interface_id      = azurerm_network_interface.nic-block[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg-block.id
}