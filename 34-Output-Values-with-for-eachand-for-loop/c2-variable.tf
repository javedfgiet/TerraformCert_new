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
  default     = ["dev1","qa1","staging1","prod1"]
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
