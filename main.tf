# locals {

#   # Create a map of service names to instance IDs
#   service_ids = transpose({
#     for id, s in var.services : id => [s.name]
#   })

#   # Group service instances by name
#   grouped = { for name, ids in local.service_ids :
#     name => [
#       for id in ids : var.services[id]
#     ]
#   }

# }


################################################################################
# ZPA App Application Server
################################################################################
# Create Application Servers
resource "zpa_application_server" "this" {
  for_each                     = var.services

  name                          = replace("${var.cts_prefix}${each.key}", "/[^0-9A-Za-z]/", "-")
  description                   = "Service for ${var.cts_prefix}${each.key} created by Consul-Terraform-Sync"
  address                       = each.value.address
  enabled                       = var.application_server_enabled
  # app_server_group_ids        = local.grouped[each.key]
  # app_server_group_ids         = [each.value.id]
}


################################################################################
# ZPA Server Groups
################################################################################
# Create Server Groups
resource "zpa_server_group" "this" {
  name                   = "Example300"
  description            = "Service for created by Consul-Terraform-Sync"
  enabled                = var.server_group_enabled
  dynamic_discovery      = var.server_group_dynamic_discovery
  servers {
    id = []
  }

  app_connector_groups {
    id = ["216196257331308026"]
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [ zpa_application_server.this ]
}