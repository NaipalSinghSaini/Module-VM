module "rg" {
  source = "../../Module/RG"
  rg     = var.rg
}
module "vnet" {
  source     = "../../Module/Vnet"
  vnet       = var.vnet
  depends_on = [module.rg]
}
module "subnet" {
  source     = "../../Module/Subnet"
  subnet     = var.subnet
  depends_on = [module.vnet]
}
module "nsg" {
  source      = "../../module/nsg"
  nsg = var.nsg
  depends_on = [ module.subnet ]
}
module "pip" {
  source     = "../../module/pip"
  pip        = var.pip
depends_on = [ module.nsg ]
}
module "nic" {
  source     = "../../module/nic"
  nic        = var.nic
  depends_on = [module.pip]
}
module "vm" {
  source     = "../../module/vm"
  vm         = var.vm
  depends_on = [module.nic]
}