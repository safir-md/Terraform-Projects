resource "azurerm_storage_account" "tfstate-stg" {
  name                     = "${var.Environment}-tfstate-stg"
  resource_group_name      = azurerm_resource_group.tfstate-rg.name
  location                 = azurerm_resource_group.tfstate-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = false

  tags = {
    Name        = "${var.Environment}-tfstate-stg"
    Environment = var.Environment
  }
}