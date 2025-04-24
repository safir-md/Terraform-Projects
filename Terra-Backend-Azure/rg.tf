resource "azurerm_resource_group" "tfstate-rg" {
  name     = "${var.Environment}-tfstate-rg"
  location = "West Europe"
}