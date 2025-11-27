terraform {
  backend "azurerm" {
    resource_group_name  = "ankurbackend01"
    storage_account_name = "ankur01storage01ad01"
    container_name       = "ankurstorage01container01"
    key                  = "aterraform.tfstate"
  }
}
