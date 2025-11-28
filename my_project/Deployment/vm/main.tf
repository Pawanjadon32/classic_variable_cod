module "vm" {
  source              = "../../Module/vm"
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  subnet_id           = var.subnet_id
}

output "vm_id" {
  value = module.vm.vm_id
}
