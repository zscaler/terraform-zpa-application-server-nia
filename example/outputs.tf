/*
################################################################################
# Application Segment Outputs
################################################################################
output "zpa_application_server_address" {
  description = "The ZPA Application Server"
  value       = module.zpa_application_server_module
}

###############################################################################
# Segment Group Outputs
################################################################################
output "zpa_segment_group" {
  description = "The ZPA Segment Group"
  value       = module.zpa_application_server_module
}

################################################################################
# Server Group Outputs
################################################################################
output "zpa_server_group" {
  description = "The ZPA Server Group ID"
  value       = module.zpa_application_segment_module
}

################################################################################
# App Connector Group Outputs
################################################################################
output "zpa_app_connector_group" {
  description = "The ZPA App Connector Group"
  value       = module.zpa_application_segment_module
}
*/
