resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "system"
    node_count = var.node_count
    vm_size = "Standard_B2ps_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }
}