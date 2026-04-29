module "rg" {
  source   = "../../modules/rg"
  rg_name  = var.mod_rg_name
  rg_loc   = var.mod_rg_loc
}


module "aks" {
  source = "../../Modules/aks"

  aks_name   = "dev-aks-cluster"
  location   = var.mod_rg_loc  
  rg_name    = module.rg.rg_name
  dns_prefix = "devaksdns"

  node_count = 1
  vm_size    = "Standard_B2ps_v2"
}