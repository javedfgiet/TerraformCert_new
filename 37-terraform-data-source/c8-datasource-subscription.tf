data "azurerm_subscription" "current_subscription" {
  
}

output "ds_subs_name" {
  value = data.azurerm_subscription.current_subscription.display_name
}

output "ds_subs_id" {
  value = data.azurerm_subscription.current_subscription.id
}

output "ds_subs_spending_limit" {
  value = data.azurerm_subscription.current_subscription.spending_limit
}