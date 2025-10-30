locals {
  rg_name   = "${var.business_unit}-${var.resource_group_name}-rg"
  vnet_name = "${var.business_unit}-${var.environment}-${var.virtual_network_name}"

  service_name = "Demo Services"
  owner        = "Emtech"
  common_tags = {
    Service = local.service_name
    Owner   = local.owner
  }

  #   vnet_addres_space=(var.environment =="dev" ? var.vnet_address_space_dev : var.vnet_address_space_all)
  vnet_addres_space = (var.environment != "dev" ? var.vnet_address_space_all : var.vnet_address_space_dev)


}
