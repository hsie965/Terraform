
variable "project_name" {
  description = "The name of the project."
  type        = string

  validation {
    condition     = length(var.project_name) >= 5 && length(var.project_name) <= 20
    error_message = "The project name must not be empty."
  }
}

variable "environment" {
  description = "The environment for the project (e.g., dev, staging, prod)."
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "The environment must be one of: dev, qa, prod."
  }
}

variable "location" {
  description = "The location where resources will be deployed."
  type        = string

  default = "mexico central"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)

  default = ["10.0.0.0/16"]
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)

  default = {
    managed_by = "terraform"
  }
}

variable "subscription_id" {
  description = "The subscription ID for the Azure provider."
  type        = string
  default     = "your-subscription-id"
  sensitive   = true
}