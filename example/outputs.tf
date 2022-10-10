################################################################################
# Application Segment Outputs
################################################################################
output "zpa_application_server_address" {
  description = "The ZPA Application Server"
  value       = module.zpa_application_server_module.zpa_application_server_adress
}

output "zpa_application_server_name" {
  description = "The ZPA Application Server Name"
  value       = module.zpa_application_server_module.zpa_application_server_name
}

output "zpa_application_server_id" {
  description = "The ZPA Application Server"
  value       = module.zpa_application_server_module.zpa_application_server_id
}

/*
###############################################################################
# Segment Group Outputs
################################################################################
output "zpa_segment_group" {
  description = "The ZPA Segment Group"
  value       = module.zpa_application_server_module.zpa_segment_group
}

################################################################################
# Server Group Outputs
################################################################################
output "zpa_server_group" {
  description = "The ZPA Server Group ID"
  value       = module.zpa_application_segment_module.zpa_server_group
}

################################################################################
# App Connector Group Outputs
################################################################################
output "zpa_app_connector_group" {
  description = "The ZPA App Connector Group"
  value       = module.zpa_application_segment_module.zpa_app_connector_group
}
*/