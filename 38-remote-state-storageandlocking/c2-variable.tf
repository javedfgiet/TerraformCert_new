#1 Business Unit
variable "business_unit" {
  type        = string
  default     = "hr"
  description = "Business Unit Name"
}
#2. Environment
variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "prod"
}
#3. Resource Group Name
variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "myrg"
}
#4. Resource Group Location
variable "resource_group_location" {
  description = "Location"
  type        = string
  default     = "eastus"
}
#5. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtua Network Name"
  type        = string
  default     = "myvnet"
}

variable "vnet_address_space_dev" {
  description = "Virtual Network Address SPace for Dev Environemnt"
  type = list(string)
  default = [ "10.0.0.0/16" ]
  
}

variable "vnet_address_space_all" {
  description = "Virtual Network Address SPace for all Environemnt except dev"
  type = list(string)
  default = [ "10.1.0.0/16","10.2.0.0/16" ,"10.3.0.0/16"  ]
  
}
