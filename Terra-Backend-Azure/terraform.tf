terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "${var.Environment}-tfstate-rg"
    storage_account_name = "${var.Environment}-tfstate-stg"
    container_name = "${var.Environment}-tfstate-blob"
    key = "terraform.tfstate"
  }
}