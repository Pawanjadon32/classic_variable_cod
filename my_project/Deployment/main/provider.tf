provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "b4461466-1e6b-4be2-bb70-1e96a72a41c8"
}
