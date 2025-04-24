resource "azurerm_storage_container" "tfstate-blob" {
  name                  = "${var.Environment}-tfstate-blob"
  storage_account_id    = azurerm_storage_account.tfstate-stg.id
  container_access_type = "private"
}