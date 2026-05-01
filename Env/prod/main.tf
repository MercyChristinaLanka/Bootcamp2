module "rg" {
  source   = "../../Modules/rg"
  rg_name = var.rg_name
  rg_loc  = var.location
}

module "aks" {
  source = "../../modules/aks"

  aks_name   = "prod-aks-cluster"
  location   = var.location
  rg_name    = module.rg.rg_name
  dns_prefix = "prodaksdns"

  node_count = 3
  vm_size    = "Standard_D2s_v3"
}