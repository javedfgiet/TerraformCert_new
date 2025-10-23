resource "azurerm_mssql_server" "mysqlserver" {
  name = "${var.business_unit}-${var.environment}-${var.db_name}"
  location = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  administrator_login = var.db_username
  administrator_login_password = var.db_password
  version = "12.0"

  
}

resource "azurerm_mssql_database" "mysqldb" {
  name = "${var.db_name}"
  server_id = azurerm_mssql_server.mysqlserver.id
  sku_name = "S0"
  max_size_gb = 2
  
}