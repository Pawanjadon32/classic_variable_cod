terraform {
  required_version = ">= 1.2.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.79.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~>2.45.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "__backend_resource_group_name__"
    storage_account_name = "__backend_storage_account_name__"
    container_name       = "__backend_container_name__"
    key                 = "__key__"
    subscription_id     = "__backend_subscription_id__"
    tenant_id           = "__backend_tenant_id__"
    client_id           = "__backend_client_id__"
    client_secret       = "__backend_client_secret__"
    use_azuread_auth    = true
  }
}

provider "azurerm" {
  features {}
  subscription_id = "__subscription_id__"
  tenant_id       = "__tenant_id__"
  client_id       = "__client_id__"
  client_secret   = "__client_secret__"
}

provider "azuread" {
  tenant_id     = "__tenant_id__"
  client_id     = "__client_id__"
  client_secret = "__client_secret__"
}
