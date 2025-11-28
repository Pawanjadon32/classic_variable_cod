module "resource_group" {
  source   = "../../Module/resource_group"
  name     = var.rg_name
  location = var.location
}

module "vnet" {
  source                  = "../../Module/vnet"
  vnet_name               = var.vnet_name
  address_space           = var.address_space
  location                = var.location
  resource_group_name     = module.resource_group.resource_group_name
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  depends_on              = [module.resource_group]
}

module "vm" {
  source              = "../../Module/vm"
  name                = var.vm_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  subnet_id           = module.vnet.subnet_id
}

output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "subnet_id" {
  value = module.vnet.subnet_id
}

output "vm_id" {
  value = module.vm.vm_id
}
