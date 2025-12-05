terraform {
  backend "azurerm" {
    resource_group_name  = "Bestel"
    storage_account_name = "bestelbackend"
    container_name       = "bestelbackend"
    key                  = "basic.tfstate"
  }
}