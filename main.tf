################################################################################
# ZPA App Application Server
################################################################################
# Create Application Servers
resource "zpa_application_server" "this" {
  for_each                     = var.services
  # for_each = local.consul_services

  name                          = replace("${var.cts_prefix}${each.key}", "/[^0-9A-Za-z]/", "-")
  description                   = "Service for ${var.cts_prefix}${each.key} created by Consul-Terraform-Sync"
  enabled                       = var.application_server_enabled
  address                       = each.value.node != "" ? each.value.node : each.value.address
  # address                       = each.value.*.addresses
  # app_server_group_ids        = local.grouped[each.key]
  # app_server_group_ids         = [each.value.id]
}

/*
################################################################################
# ZPA Server Group
################################################################################
# Create a Server Group
# https://help.zscaler.com/zpa/application-server-group-use-cases
resource "zpa_server_group" "this" {
  count = var.byo_server_group == true ? 1 : 0

  name              = "${var.cts_prefix}${var.server_group_name}"
  description       = "${var.cts_prefix}${var.server_group_description}"
  enabled           = var.server_group_enabled
  dynamic_discovery = var.server_group_dynamic_discovery
  # servers {
  #   id = []
  # }
  app_connector_groups {
    id = [data.zpa_app_connector_group.this.id]
  }
}

# Or reference an existing Server Group
data "zpa_server_group" "this" {
  id = var.byo_server_group == true ? zpa_server_group.this.*.id[0] : var.byo_server_group_id
  #name = var.byo_server_group == true ? zpa_server_group.this.*.name[0] : var.byo_server_group_id
}

################################################################################
# ZPA App Connector Group
################################################################################
# Create an App Connector Group
# https://help.zscaler.com/zpa/app-connector-group-use-cases
resource "zpa_app_connector_group" "this" {
  count = var.byo_app_connector_group == true ? 1 : 0

  name                     = "${var.cts_prefix}${var.app_connector_group_name}"
  description              = "${var.cts_prefix}${var.app_connector_group_description}"
  enabled                  = var.app_connector_group_enabled
  city_country             = var.app_connector_group_city_country
  country_code             = var.app_connector_group_country_code
  latitude                 = var.app_connector_group_latitude
  longitude                = var.app_connector_group_longitude
  location                 = var.app_connector_group_location
  upgrade_day              = var.app_connector_group_upgrade_day
  upgrade_time_in_secs     = var.app_connector_group_upgrade_time_in_secs
  override_version_profile = var.app_connector_group_override_version_profile
  version_profile_id       = var.app_connector_group_version_profile_id
  dns_query_type           = var.app_connector_group_dns_query_type
}

# Or reference an existing App Connector Group
data "zpa_app_connector_group" "this" {
  id = var.byo_app_connector_group == true ? zpa_app_connector_group.this.*.id[0] : var.byo_app_connector_group_id
  #name = var.byo_app_connector_group == true ? zpa_app_connector_group.this.*.name[0] : var.byo_app_connector_group_id
}
*/