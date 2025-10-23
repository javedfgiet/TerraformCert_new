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
  
  #Strutural type object
  # threat_detection_policy {
  # state = var.db_td_policy.state
  # retention_days = var.db_td_policy.retention_days
  # email_account_admins = var.db_td_policy.email_account_admins
  # email_addresses = var.db_td_policy.email_addresses
  # }

   
  threat_detection_policy {
  state = var.db_td_policy[0]
  retention_days = var.db_td_policy[1]
  email_account_admins = var.db_td_policy[2]
  email_addresses = var.db_td_policy[3]
  }
  
}