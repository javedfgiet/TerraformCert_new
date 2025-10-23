variable "business_unit" {
  type        = string
  default     = "hr"
  description = "Business Unit Name"
}

variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "myrg"
}

variable "resource_group_location" {
  description = "Location"
  type        = string
  default     = "EastUs"
}
variable "virtual_network_name" {
  description = "Virtua Network Name"
  type        = string
  default     = "myvnet"
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "virtual_network_address_space" {
  description = "Virtual n/w addrss spae"
  type        = list(string)
  default     = ["10.0.0.0/6", "10.1.0.0/16", "10.2.0.0/16"]
}