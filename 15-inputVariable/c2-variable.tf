#Input Variable
variable "business_unit" {
    type = string
    description = "Business Unit Name"
    default = "hr"
}

variable "environment" {
  default = "dev"
  type = string
  description = "Environment Name"
}

variable "resource_group_name" {
  type = string
  description = "Resource Group Name"
  default = "myrg"
}

variable "resource_group_location" {
  type = string
  description = "Resource Group Location"
  default = "East Us"
}

variable "virtual_network_name" {
    type = string
    description = "Virtual Network Name"
    default = "myvnet"
}