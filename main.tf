terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "4.38"
      }
    }
    required_version = "1.13.0"
}

provider "azurerm" {
  subscription_id = "c45ffaa7-f104-4c50-baee-2a8499e1eb45"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_container_registry" "acr" {
  name                = "containerRegistry1"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Basic"
  admin_enabled       = false
}
