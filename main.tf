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
}

resource "azurerm_resource_group" "mau" {
  name     = "maurg"
  location = "West Europe"
}
resource "azurerm_storage_account" "mystg" {
  name = "mystg5240963"
  resource_group_name = azurerm_resource_group.mau.name
  location = azurerm_resource_group.mau.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}

// Storage Account
resource "azurerm_storage_account" "amwaghstg" {
  name = "amwaghstorage1905"
  resource_group_name = azurerm_resource_group.mau.name
  location = azurerm_resource_group.mau.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}
