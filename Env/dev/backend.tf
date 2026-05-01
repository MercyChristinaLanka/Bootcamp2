terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins_rg"
    storage_account_name = "devbackendrg"
    container_name       = "mybackup"
    key                  = "dev.tfstate"
  }
}
