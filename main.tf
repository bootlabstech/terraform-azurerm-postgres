resource "azurerm_postgresql_server" "postgresql_server" {
  name                             = var.name
  location                         = var.location
  resource_group_name              = var.resource_group_name
  administrator_login              = var.administrator_login
  administrator_login_password     = var.administrator_login_password
  sku_name                         = var.sku_name
  version                          = var.postgresql_version
  storage_mb                       = var.storage_mb
  backup_retention_days            = 7
  geo_redundant_backup_enabled     = true
  auto_grow_enabled                = true
  public_network_access_enabled    = false
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
}

