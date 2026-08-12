variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "vm_size" {
  description = "Virtual machine size"
  type        = string
}

variable "admin_username" {
  description = "Linux VM administrator username"
  type        = string
}

variable "admin_password" {
  description = "Linux VM administrator password"
  type        = string
  sensitive   = true
}