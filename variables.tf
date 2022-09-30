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
variable "byo_server_group" {
  type        = bool
  description = "Bring your own Server Group"
  default     = false
}

variable "byo_server_group_name" {
  type        = string
  description = "User provided existing Server Group ID"
  default     = null
}

variable "byo_server_group_id" {
  type        = string
  description = "User provided existing Server Group ID"
  default     = null
}
variable "server_group_name" {
  type        = string
  description = "This field defines the name of the server group."
  default     = "ServerGroup"
}

variable "server_group_description" {
  type        = string
  description = "This field is the description of the server group."
  default     = "ServerGroup"
}

variable "server_group_enabled" {
  type        = bool
  description = "This field defines if the server group is enabled or disabled."
  default     = true
}


################################################################################
# App Connector Group Variables
################################################################################
variable "byo_app_connector_group" {
  type        = bool
  description = "Bring your own App Connector Group"
  default     = false
}

variable "byo_app_connector_group_name" {
  type        = string
  description = "User provided existing App Connector Group Name"
  default     = null
}

variable "byo_app_connector_group_id" {
  type        = string
  description = "User provided existing App Connector Group ID"
  default     = null
}

variable "app_connector_group_name" {
  type        = string
  description = "Name of the App Connector Group."
  default     = "AppConnectorGroup"
}

variable "app_connector_group_description" {
  type        = string
  description = "Description of the App Connector Group."
  default     = "AppConnectorGroup"
}

variable "app_connector_group_enabled" {
  type        = bool
  description = "Whether this App Connector Group is enabled or not."
  default     = true
}

variable "app_connector_group_latitude" {
  type        = string
  description = "Latitude of the App Connector Group."
  default     = "37.3382082"
}

variable "app_connector_group_longitude" {
  type        = string
  description = "Longitude of the App Connector Group."
  default     = "-121.8863286"
}

variable "app_connector_group_location" {
  type        = string
  description = "Location of the App Connector Group."
  default     = "San Jose, CA, USA"
}

variable "app_connector_group_country_code" {
  type        = string
  description = "Code of the Country where the app connector is located i.e US or CA"
  default     = "US"
}

variable "app_connector_group_city_country" {
  type        = string
  description = "City of the Country where the app connector is located i.e US or CA"
  default     = "San Jose, US"
}

variable "app_connector_group_upgrade_day" {
  type        = string
  description = "App Connectors in this group will attempt to update to a newer version of the software during this specified day."
  default     = "SUNDAY"
}

variable "app_connector_group_upgrade_time_in_secs" {
  type        = string
  description = "App Connectors in this group will attempt to update to a newer version of the software during this specified time."
  default     = "66600"
}

variable "app_connector_group_override_version_profile" {
  type        = bool
  description = "Whether the default version profile of the App Connector Group is applied or overridden."
  default     = true
}

variable "app_connector_group_version_profile_id" {
  type        = string
  description = "ID of the version profile "
  validation {
    condition     = var.app_connector_group_version_profile_id != "0" || var.app_connector_group_version_profile_id != "1" || var.app_connector_group_version_profile_id != "2"
    error_message = "The version profile of the app connector group must be \"0 for Default \", \"1 for Previous Default\", or \"2 for New Release\"."
  }
  default = "2"
}

variable "app_connector_group_dns_query_type" {
  type        = string
  description = "Whether to enable IPv4 or IPv6, or both, for DNS resolution of all applications in the App Connector Group."
  validation {
    condition     = var.app_connector_group_dns_query_type != "IPV4" || var.app_connector_group_dns_query_type != "IPV6" || var.app_connector_group_dns_query_type != "IPV4_IPV6"
    error_message = "The dns_query_type must be \"IPV4\", \"IPV6\", or \"IPV4_IPV6\"."
  }
  default = "IPV4_IPV6"
}