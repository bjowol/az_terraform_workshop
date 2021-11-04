
resource "azurerm_virtual_network" "nw_ws" {
  name                = "vnet-bmw"
  address_space       = ["10.5.0.0/16"]

  location            = azurerm_resource_group.rg_bmw.location
  resource_group_name = azurerm_resource_group.rg_bmw.name
    tags =  {
      workshop = "devops"
  }

}

resource "azurerm_subnet" "sub" {
  name                 = "internal"
  address_prefixes     = ["10.5.3.0/24"]

  resource_group_name  = azurerm_resource_group.rg_bmw.name
  virtual_network_name = azurerm_virtual_network.nw_ws.name
}

resource "azurerm_public_ip" "public" {
  name                = "acceptanceTestPublicIp1"
  allocation_method   = "Static"
#   domain_name_label = "kjlnsdflksalf"

  resource_group_name = azurerm_resource_group.rg_bmw.name
  location            = azurerm_resource_group.rg_bmw.location
  tags = {
    workshop = "devops"
  }
}
