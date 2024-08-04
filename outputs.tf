output "storage_account_name" {
  value = var.storage_account_name
}

output "storage_container_name" {
  value = var.storage_container_name
}

output "resource_manager_id" {
  value = azurerm_storage_container.azurerm_backend.resource_manager_id
}
