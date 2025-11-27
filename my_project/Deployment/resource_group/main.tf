module "resource_group" {
  source   = "../../Module/resource_group"
  name     = var.name
  location = var.location
}

output "resource_group_name" {
  value = module.resource_group.resource_group_name
}
