variable "name" {
  description = "name of the keyvault account"
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "sku_name" {
  default = "standard"
}

variable "enable_for_deployment" {
  default = "false"
  type = bool
}

variable "enabled_for_template_deployment" {
  default = "false"
  type = bool
}

variable "enabled_for_disk_encryption" {
  default = "false"
  type = bool
}

variable "soft_delete_retention_days" {
  default = 7
  type = number
}


variable "network_acls" {
  description = "Network rules to apply to key vault."
  type = object({
    bypass                     = string,
    default_action             = string,
    ip_rules                   = list(string),
    virtual_network_subnet_ids = list(string),
  })
  default = null
}



variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}


variable "access_policies" {
  description = "Map of access policies for an object_id (user, service principal, security group) to backend."
  type = list(object({
    object_id               = string,
    certificate_permissions = list(string),
    key_permissions         = list(string),
    secret_permissions      = list(string),
    storage_permissions     = list(string),
  }))
  default = []
}

variable "diagnostics" {
  description = "Diagnostic settings for those resources that support it. See README.md for details on configuration."
  type = object({
    destination   = string,
    eventhub_name = string,
    logs          = list(string),
    metrics       = list(string)
  })
  default = null
}
