resource "azurerm_network_interface" "if" {
  name                = "bmw-nic"
  ip_configuration {
    name                          = "ip"
    subnet_id                     = azurerm_subnet.sub.id
    private_ip_address_allocation = "Dynamic"
  }

  location            = azurerm_resource_group.rg_bmw.location
  resource_group_name = azurerm_resource_group.rg_bmw.name
  tags =  {
      workshop = "devops"
  }
}