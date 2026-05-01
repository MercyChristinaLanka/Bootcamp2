terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "prodstorageacc123"
    container_name       = "mybackup"
    key                  = "prod.tfstate"
  }
}