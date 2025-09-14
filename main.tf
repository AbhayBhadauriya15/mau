terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.44.0"
    }
  }

}

provider "azurerm" {
features{}
subscription_id = "3c0d3e39-55e3-464c-b220-26aee31cecb9"
}

resource "azurerm_resource_group" "mau" {
  name     = "maurg"
  location = "West Europe"
}
resource "azurerm_storage_account" "mystg" {
name = "mystg"
resource_group_name = azurerm_resource_group.mau.name
location = azurerm_resource_group.mau.location
account_tier = "standard"
account_replication_type = "LRS"
}
