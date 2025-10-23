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
  default     = "eastus"
  validation {
    #condition = var.resource_group_location=="eastus" || var.resource_group_location=="eastus2"
    condition = contains(["eastus","eastus2"],var.resource_group_location)
    error_message = "We only allow resources to be created in eastus and eastus2 locations."
  }
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

# Public IP SKU
variable "public_ip_sku" {
  description = "Azure Public IP SKU"
  type = map(string)
  default = {
    "eastus" = "Basic"
    "eastus2"="Standard"
  }
}

#common tag
variable "common_tag" {
  description = "common tags for az resources"
  type = map(string)
  default = {
    "CLI" = "terraform"
    "Tag1"="azure"
  }
}

variable "db_name" {
  description = "Azure MySQL DB Name"
  type = string
}

variable "db_username" {
  description = "Az MySQL DB Admin User Name"
  type = string
  sensitive = true
}
variable "db_password" {
  description = "Azure MySql Database Admin Password"
  type = string
  sensitive = true
}

variable "db_storage_mb" {
  description = "Azure MySQl Database Storage in MB"
  type = number
}

variable "db_auto_grow_enable" {
  description = "Az MySQl Datasbe - Enable or Disable Auto grow Feature"
  type = bool
}

variable "db_td_policy" {
  description = "Azure MySQL DB Threat Detection Policy"
  type = object({
    state = string,
    retention_days=number
    email_account_admins=string
    email_addresses=list(string)
  })
}
