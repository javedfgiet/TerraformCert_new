#1 Business Unit
variable "business_unit" {
  type        = string
  default     = "hr"
  description = "Business Unit Name"
}
#2. Environment
variable "environment" {
  description = "Environment Name"
  type        = set(string)
  default     = ["dev","qa","staging1","prod1"]
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
  validation {
    #condition = var.resource_group_location=="eastus" || var.resource_group_location=="eastus2"
    condition = contains(["eastus","eastus2"],var.resource_group_location)
    error_message = "We only allow resources to be created in eastus and eastus2 locations."
  }
}
#5. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtua Network Name"
  type        = string
  default     = "myvnet"
}

#6. Subnet Name
variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}
