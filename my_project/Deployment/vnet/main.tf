module "vnet" {
  source                  = "../../Module/vnet"
  vnet_name               = var.vnet_name
  address_space           = var.address_space
  location                = var.location
  resource_group_name     = var.resource_group_name
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}

output "subnet_id" {
  value = module.vnet.subnet_id
}
