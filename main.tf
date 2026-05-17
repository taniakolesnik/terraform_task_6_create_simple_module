terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.117.1"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source               = "taniakolesnik/resource-group-storage/azurerm"
  version              = "1.0.1"
  resource_group_name  = "testimportmodulerg"
  location             = "East US"
  storage_account_name = "testimportmodulesa"
}