resource "azurerm_resource_group" "rg_bmw" {
  name = "rg-bmw-workshop-03"
  location = "Norway East"
    tags =  {
      workshop = "devops"
  }

}