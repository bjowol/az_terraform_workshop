terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.83.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  tenant_id = "447d11ff-71c5-48d9-a61a-f896787d6096"
  features {}
}