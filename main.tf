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

<CREATE ME>

# create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "BatmanInc"
  address_space       = ["10.0.0.0/16"]
  location            = <CHANGE ME>
  resource_group_name = <CHANGE ME>
}

# Create subnet
resource "azurerm_subnet" "subnet" {
    name                 = "deop"
    resource_group_name = <CHANGE ME>
    virtual_network_name = <CHANGE ME>
    address_prefixes       = ["10.0.1.0/24"]
}
