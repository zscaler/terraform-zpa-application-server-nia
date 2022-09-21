variable "services" {
  description = "Consul services monitored by Consul NIA"
  type = map(
    object({
      id        = string
      name      = string
      address   = string
      port      = number
      status    = string
      meta      = map(string)
      tags      = list(string)
      namespace = string

      node                  = string
      node_id               = string
      node_address          = string
      node_datacenter       = string
      node_tagged_addresses = map(string)
      node_meta             = map(string)
      cts_user_defined_meta = map(string)
    })
  )
}



variable "cts_prefix" {
  type        = string
  description = "(Optional) Prefix that will be applied to all objects created via Consul-Terraform-Sync"
  default     = "cts-"
}


################################################################################
# Application Servers Variables
################################################################################
variable "application_server_enabled" {
  type        = bool
  description = "This field defines if the server group is enabled or disabled."
  default     = true
}


################################################################################
# Server Group Variables
################################################################################
variable "server_group_enabled" {
  type        = bool
  description = "This field defines if the server group is enabled or disabled."
  default     = true
}

variable "server_group_dynamic_discovery" {
  type        = bool
  description = "This field controls dynamic discovery of the servers."
  default     = false
}