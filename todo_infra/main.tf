module "resource_group" {
  source              = "../module/resource_group"
  resource_group_name = "vikks1"
  location            = "centralindia"
}
module "resource_group2" {
  source              = "../module/resource_group"
  resource_group_name = "vikks3"
  location            = "centralindia"
}
module "virtual_network" {
  depends_on               = [module.resource_group]
  source                   = "../module/virtual_network"
  virtual_network_name     = "vnet1"
  virtual_network_location = "centralindia"
  resource_group_name      = "vikks1"
  address_space            = ["10.0.0.0/16"]

}
module "subnet" {
  depends_on           = [module.virtual_network]
  source               = "../module/subnet"
  subnet_name          = "frontend_subnet"
  resource_group_name  = "vikks1"
  virtual_network_name = "vnet1"
  address_prefixes     = ["10.0.1.0/24"]
}
module "subnet1" {
  depends_on           = [module.virtual_network]
  source               = "../module/subnet"
  subnet_name          = "backend_subnet"
  resource_group_name  = "vikks1"
  virtual_network_name = "vnet1"
  address_prefixes     = ["10.0.2.0/24"]
}

module "public_ip_frontend" {
  depends_on          = [module.resource_group]
  source              = "../module/public_ip"
  public_ip_name      = "frontend_pip"
  resource_group_name = "vikks1"
  public_ip_location  = "centralindia"
  allocation_method   = "Static"
}

module "public_ip_backend" {
  depends_on          = [module.resource_group]
  source              = "../module/public_ip"
  public_ip_name      = "backend_pip"
  resource_group_name = "vikks1"
  public_ip_location  = "centralindia"
  allocation_method   = "Static"
}

module "virtual_machine" {
  depends_on           = [module.virtual_network, module.public_ip_frontend, module.public_ip_frontend, module.vm-password]
  source               = "../module/virtual_machine"
  resource_group_name  = "vikks1"
  location             = "centralindia"
  virtual_machine_name = "frontendvm"
  VM_size              = "Standard_B1s"
  admin_user           = "adminuser"
  admin_password       = "Alliswell@123"
  nic_name             = "nic-vm-frontend09"
  frontend_ip_name     = "frontend_pip"
  virtual_network_name = "vnet1"
  frontend_subnet_name = "frontend_subnet"
  image_publisher      = "Canonical"
  image_offer          = "0001-com-ubuntu-server-focal"
  image_sku            = "20_04-lts"
  image_version        = "latest"
  password_secret_name = "vm-password"
  key_vault_name       = "poojabewafa1"
}

module "key_vault"{
  source = "../module/key_vault"
  key_vault_name = "poojabewafa1"
  resource_group_name = "vikks1"
  location = "centralindia"
}

module "vm-password"{
  depends_on = [module.key_vault]
  source = "../module/keyvault_secret"
  key_vault_secret_name = "adminusername1"
  secret_value = "Myson@12345"
  resource_group_name = "vikks1"
  key_vault_name = "poojabewafa1"

}






