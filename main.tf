# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
// Create a resource group
resource "azurerm_resource_group" "Deop" {
    name ="DeopRG"
    location ="canadacentral" 
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "BatmanInc"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.Deop.location
  resource_group_name = azurerm_resource_group.Deop.name
}

# Create subnet
resource "azurerm_subnet" "subnet" {
    name                 = "deop"
    resource_group_name = azurerm_resource_group.Deop.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes       = ["10.0.1.0/24"]
}
